local AddonName, ns = ...

local LibBG = ns.LibBG
local L = ns.L

local RR = ns.RR
local NN = ns.NN
local RN = ns.RN
local Size = ns.Size
local RGB = ns.RGB
local RGB_16 = ns.RGB_16
local GetClassRGB = ns.GetClassRGB
local SetClassCFF = ns.SetClassCFF
local GetText_T = ns.GetText_T
local FrameDongHua = ns.FrameDongHua
local FrameHide = ns.FrameHide
local AddTexture = ns.AddTexture
local GetItemID = ns.GetItemID

local Width = ns.Width
local Height = ns.Height
local Maxb = ns.Maxb
local Maxi = ns.Maxi
local HopeMaxn = ns.HopeMaxn
local HopeMaxb = ns.HopeMaxb
local HopeMaxi = ns.HopeMaxi

local pt = print
local RealmId = GetRealmID()
local player = UnitName("player")

BG.Init(function()
    local sending = {}
    local sendDone = {}
    local sendingCount = {}
    local notShowSendingText = {}

    local function UpdateGuildFrame(frame)
        if IsInRaid(1) then
            frame:SetWidth(1)
            frame:Hide()
        elseif IsInGuild() then
            local numTotal, numOnline, numOnlineAndMobile = GetNumGuildMembers()
            frame.text:SetFormattedText(frame.title2, (Size(frame.table) .. "/" .. numOnline))
            frame:SetWidth(frame.text:GetWidth() + 10)
            frame:Show()
        end
    end

    local function UpdateAddonFrame(frame)
        if IsInRaid(1) then
            local count = 0
            for name in pairs(frame.table) do
                if BG.raidRosterName[name] then
                    count = count + 1
                end
            end
            frame.text:SetFormattedText(frame.title2, (count .. "/" .. GetNumGroupMembers()))
            frame:SetWidth(frame.text:GetWidth() + 10)
            frame:Show()
        else
            wipe(frame.table)
            frame:Hide()
        end
    end
    local function Guild_OnEnter(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 0, 0)
        GameTooltip:ClearLines()
        GameTooltip:AddLine(self.title, 0, 1, 0)
        GameTooltip:AddLine(" ")
        local ii = 0
        for i = 1, GetNumGuildMembers() do
            local name, rankName, rankIndex, level, classDisplayName, zone,
            publicNote, officerNote, isOnline, status, class, achievementPoints,
            achievementRank, isMobile, canSoR, repStanding, guid = GetGuildRosterInfo(i)
            name = strsplit("-", name)
            if isOnline then
                if ii > 40 then
                    GameTooltip:AddLine("......")
                    break
                end
                ii = ii + 1
                local line = 2
                local Ver = L["无"]
                for _name, ver in pairs(self.table) do
                    if name == _name then
                        Ver = ver
                        break
                    end
                end

                local r, g, b = GetClassColor(class)
                GameTooltip:AddDoubleLine(name, Ver, r, g, b, 1, 1, 1)
                if Ver == L["无"] then
                    local alpha = 0.3
                    if _G["GameTooltipTextLeft" .. (ii + line)] then
                        _G["GameTooltipTextLeft" .. (ii + line)]:SetAlpha(alpha)
                    end
                    if _G["GameTooltipTextRight" .. (ii + line)] then
                        _G["GameTooltipTextRight" .. (ii + line)]:SetAlpha(alpha)
                    end
                end
            end
        end
        GameTooltip:Show()
    end

    local function Addon_OnEnter(self)
        self.isOnEnter = true

        local line = 2
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 0, 0)
        GameTooltip:ClearLines()
        GameTooltip:AddLine(self.title, 0, 1, 0)
        if self.isAuciton then
            GameTooltip:AddLine(L["需全团安装拍卖WA，没安装的人将会看不到拍卖窗口"], 0.5, 0.5, 0.5, true)
            line = line + 1
        end
        GameTooltip:AddLine(" ")
        local raid = BG.PaiXuRaidRosterInfo()
        for i, v in ipairs(raid) do
            local Ver
            if v.online then
                Ver = L["无"]
            else
                Ver = L["未知"]
            end
            if self.isAuciton then
                if sending[v.name] then
                    Ver = L["正在接收拍卖WA"]
                end
                if sendDone[v.name] then
                    Ver = L["接收完毕，但未导入"]
                end
            end

            for name, ver in pairs(self.table) do
                if v.name == name then
                    Ver = ver
                    break
                end
            end

            local role = ""
            local y
            if v.rank == 2 then
                role = role .. AddTexture("interface/groupframe/ui-group-leadericon", y)
            elseif v.rank == 1 then
                role = role .. AddTexture("interface/groupframe/ui-group-assistanticon", y)
            end
            if v.isML then
                role = role .. AddTexture("interface/groupframe/ui-group-masterlooter", y)
            end
            local c1, c2, c3 = GetClassRGB(v.name)
            GameTooltip:AddDoubleLine(v.name .. role, Ver, c1, c2, c3, 1, 1, 1)
            if Ver == L["无"] or Ver == L["未知"] then
                local alpha = 0.4
                if _G["GameTooltipTextLeft" .. (i + line)] then
                    _G["GameTooltipTextLeft" .. (i + line)]:SetAlpha(alpha)
                end
                if _G["GameTooltipTextRight" .. (i + line)] then
                    _G["GameTooltipTextRight" .. (i + line)]:SetAlpha(alpha)
                end
            end
        end
        GameTooltip:Show()
    end

    local function UpdateOnEnter(self)
        if self and self.isOnEnter then
            self:GetScript("OnEnter")(self)
        end
    end

    ------------------团长开始拍卖UI------------------
    do
        BiaoGe.Auction = BiaoGe.Auction or {}
        if BG.IsVanilla then
            BiaoGe.Auction.money = BiaoGe.Auction.money or 1
            BiaoGe.Auction.fastMoney = BiaoGe.Auction.fastMoney or { 100, 300, 500, 1000, 2000 }
        else
            BiaoGe.Auction.money = BiaoGe.Auction.money or 1000
            BiaoGe.Auction.fastMoney = BiaoGe.Auction.fastMoney or { 1000, 2000, 3000, 5000, 10000 }
        end
        BiaoGe.Auction.duration = BiaoGe.Auction.duration or 30
        BiaoGe.Auction.mod = BiaoGe.Auction.mod or "normal"

        local function ClearAllFocus(f)
            f.Edit1:ClearFocus()
            f.Edit2:ClearFocus()
            LibBG:CloseDropDownMenus()
        end
        local function item_OnEnter(self)
            if BG.ButtonIsInRight(self) then
                GameTooltip:SetOwner(self, "ANCHOR_LEFT", 0, 0)
            else
                GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0)
            end
            GameTooltip:ClearLines()
            GameTooltip:SetItemByID(self.itemID)
            GameTooltip:Show()
            self.isOnEnter = true
            if self.isIcon then
                self.owner.lastIcon = self
                if not self.isChooseTex then
                    self.isChooseTex = self:CreateTexture()
                    self.isChooseTex:SetAllPoints()
                    self.isChooseTex:SetColorTexture(1, 1, 1, .2)
                    self.isChooseTex:Hide()
                end
                self.isChooseTex:Show()
            end
        end
        local function item_OnLeave(self)
            GameTooltip_Hide()
            self.isOnEnter = nil
            if self.isIcon then
                self.owner.lastIcon = nil
                self.isChooseTex:Hide()
            end
        end
        local function Start_OnClick(self)
            if not (tonumber(BiaoGe.Auction.money) and tonumber(BiaoGe.Auction.duration) and tonumber(BiaoGe.Auction.duration) > 0) then return end
            local t = 0
            for i, itemID in ipairs(self.itemIDs) do
                BG.After(t, function()
                    local text = "StartAuction," .. GetTime() .. "," .. itemID .. "," ..
                        BiaoGe.Auction.money .. "," .. BiaoGe.Auction.duration .. ",," .. BiaoGe.Auction.mod
                    C_ChatInfo.SendAddonMessage("BiaoGeAuction", text, "RAID")
                end)
                t = t + 0.2
            end
            self:GetParent():Hide()
            BG.PlaySound(1)
        end
        local function OnTextChanged(self)
            BiaoGe.Auction[self._type] = self:GetText()
        end
        local function OnEnterPressed(self)
            if self.num == 1 then
                self:GetParent().Edit2:SetFocus()
            else
                Start_OnClick(self:GetParent().bt)
            end
        end
        local function Edit_OnEnter(self)
            if BG.ButtonIsInRight(self) then
                GameTooltip:SetOwner(self, "ANCHOR_LEFT", 0, 0)
            else
                GameTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0)
            end
            GameTooltip:ClearLines()
            GameTooltip:AddLine(self:GetText(), 1, 1, 1, true)
            GameTooltip:AddLine(L["最后20秒有人出价时，拍卖时间会重置到20秒"], 1, 0.82, 0, true)
            GameTooltip:Show()
        end

        function BG.StartAuction(link, bt, isNotAuctioned, notAlt)
            if BiaoGe.options["autoAuctionStart"] ~= 1 and not notAlt then return end
            if not link then return end
            if not BG.IsML then return end
            local link = BG.Copy(link)
            local itemIDs = {}
            if type(link) == "table" then
                itemIDs = link
            else
                itemIDs[1] = GetItemID(link)
            end
            if BG.StartAucitonFrame then BG.StartAucitonFrame:Hide() end
            GameTooltip:Hide()
            local name, link, quality, level, _, itemType, itemSubType, _, itemEquipLoc, Texture,
            _, classID, subclassID, bindType = GetItemInfo(itemIDs[1])

            local mainFrame
            local mainFrameWidth = 250
            local mainFrameHeight = 145
            local f = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
            do
                f:SetBackdrop({
                    bgFile = "Interface/ChatFrame/ChatFrameBackground",
                    edgeFile = "Interface/ChatFrame/ChatFrameBackground",
                    edgeSize = 2,
                })
                f:SetBackdropColor(0.3, 0.3, 0.3, 0.8)
                f:SetBackdropBorderColor(0, 0, 0, 1)
                f:SetSize(mainFrameWidth, mainFrameHeight)
                if bt then
                    if isNotAuctioned then
                        f:SetPoint("TOP", bt, "BOTTOM", 10, 0)
                    else
                        f:SetPoint("BOTTOM", bt, "TOP", 0, 0)
                    end
                else
                    local x, y = GetCursorPosition()
                    x, y = x / UIParent:GetEffectiveScale(), y / UIParent:GetEffectiveScale()
                    f:SetPoint("BOTTOM", UIParent, "BOTTOMLEFT", x + 10, y + 10)
                end
                f:SetFrameStrata("DIALOG")
                f:SetFrameLevel(300)
                f:SetClampedToScreen(true)
                f:SetToplevel(true)
                f:EnableMouse(true)
                f:SetMovable(true)
                f:SetScript("OnMouseUp", function(self)
                    f:StopMovingOrSizing()
                    f:SetScript("OnUpdate", nil)
                end)
                f:SetScript("OnMouseDown", function(self)
                    f:StartMoving()
                    ClearAllFocus(f)

                    f.time = 0
                    f:SetScript("OnUpdate", function(self, time)
                        f.time = f.time + time
                        if f.time >= 0.2 then
                            f.time = 0
                            if f.itemFrame.isOnEnter then
                                GameTooltip:Hide()
                                f.itemFrame:GetScript("OnEnter")(f.itemFrame)
                            elseif f.lastIcon then
                                GameTooltip:Hide()
                                f.lastIcon:GetScript("OnEnter")(f.lastIcon)
                            end
                        end
                    end)
                end)
                mainFrame = f
                BG.StartAucitonFrame = mainFrame

                f.CloseButton = CreateFrame("Button", nil, f, "UIPanelCloseButton")
                f.CloseButton:SetFrameLevel(f.CloseButton:GetParent():GetFrameLevel() + 50)
                f.CloseButton:SetPoint("TOPRIGHT", f, 0, 0)
                f.CloseButton:SetSize(35, 35)
            end

            -- 装备显示
            do
                local f = CreateFrame("Frame", nil, mainFrame, "BackdropTemplate")
                f:SetPoint("TOPLEFT", f:GetParent(), "TOPLEFT", 2, -2)
                f:SetPoint("BOTTOMRIGHT", f:GetParent(), "TOPRIGHT", -2, -35)
                f:SetFrameLevel(f:GetParent():GetFrameLevel() + 10)
                f.itemID = itemIDs[1]
                f:SetScript("OnMouseUp", function(self)
                    mainFrame:GetScript("OnMouseUp")(mainFrame)
                end)
                f:SetScript("OnMouseDown", function(self)
                    mainFrame:GetScript("OnMouseDown")(mainFrame)
                end)
                mainFrame.itemFrame = f
                -- 黑色背景
                local s = CreateFrame("StatusBar", nil, f)
                s:SetAllPoints()
                s:SetFrameLevel(s:GetParent():GetFrameLevel() - 5)
                s:SetStatusBarTexture("Interface/ChatFrame/ChatFrameBackground")
                s:SetStatusBarColor(0, 0, 0, 0.8)

                local icons = {}
                for i, itemID in ipairs(itemIDs) do
                    local name, link, quality, level, _, itemType, itemSubType, _, itemEquipLoc, Texture,
                    _, classID, subclassID, bindType = GetItemInfo(itemID)

                    -- 图标
                    local r, g, b = GetItemQualityColor(quality)
                    local ftex = CreateFrame("Frame", nil, f, "BackdropTemplate")
                    ftex:SetBackdrop({
                        edgeFile = "Interface/ChatFrame/ChatFrameBackground",
                        edgeSize = 1.5,
                    })
                    ftex:SetBackdropBorderColor(r, g, b, 1)
                    if i == 1 then
                        ftex:SetPoint("TOPLEFT", 0, 0)
                    else
                        ftex:SetPoint("TOPLEFT", icons[i - 1], "TOPRIGHT", 3, 0)
                    end
                    ftex:SetSize(f:GetHeight() - 2, f:GetHeight() - 2)
                    ftex.itemID = itemID
                    tinsert(icons, ftex)

                    ftex.isIcon = true
                    ftex.owner = mainFrame
                    ftex:SetScript("OnEnter", item_OnEnter)
                    ftex:SetScript("OnLeave", item_OnLeave)
                    ftex:SetScript("OnMouseUp", function(self)
                        mainFrame:GetScript("OnMouseUp")(mainFrame)
                    end)
                    ftex:SetScript("OnMouseDown", function(self)
                        mainFrame:GetScript("OnMouseDown")(mainFrame)
                    end)

                    ftex.tex = ftex:CreateTexture(nil, "BACKGROUND")
                    ftex.tex:SetAllPoints()
                    ftex.tex:SetTexture(Texture)
                    ftex.tex:SetTexCoord(0.1, 0.9, 0.1, 0.9)
                    -- 装备等级
                    local t = ftex:CreateFontString()
                    t:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
                    t:SetPoint("BOTTOM", ftex, "BOTTOM", 0, 1)
                    t:SetText(level)
                    t:SetTextColor(r, g, b)
                    -- 装绑
                    if bindType == 2 then
                        local t = ftex:CreateFontString()
                        t:SetFont(STANDARD_TEXT_FONT, 11, "OUTLINE")
                        t:SetPoint("TOP", ftex, 0, -2)
                        t:SetText(L["装绑"])
                        t:SetTextColor(0, 1, 0)
                    end
                end

                if #itemIDs == 1 then
                    -- 装备名称
                    local t = f:CreateFontString()
                    t:SetFont(STANDARD_TEXT_FONT, 15, "OUTLINE")
                    t:SetPoint("TOPLEFT", icons[1], "TOPRIGHT", 2, -2)
                    t:SetWidth(f:GetWidth() - f:GetHeight() - 10)
                    t:SetText(link:gsub("%[", ""):gsub("%]", ""))
                    t:SetJustifyH("LEFT")
                    t:SetWordWrap(false)
                    -- 装备类型
                    local t = f:CreateFontString()
                    t:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
                    t:SetPoint("BOTTOMLEFT", icons[1], "BOTTOMRIGHT", 2, 1)
                    t:SetHeight(12)

                    if _G[itemEquipLoc] then
                        if classID == 2 then
                            t:SetText(itemSubType)
                        else
                            t:SetText(_G[itemEquipLoc] .. " " .. itemSubType)
                        end
                    else
                        t:SetText("")
                    end
                    t:SetJustifyH("LEFT")
                end
            end

            local width = 90
            -- 起拍价、拍卖时长
            do
                local t = mainFrame:CreateFontString()
                t:SetFont(STANDARD_TEXT_FONT, 15, "OUTLINE")
                t:SetSize(width, 20)
                t:SetPoint("TOPLEFT", mainFrame.itemFrame, "BOTTOMLEFT", 8, -2)
                t:SetJustifyH("LEFT")
                t:SetWordWrap(false)
                t:SetText(L["|cffFFD100拍卖时长(秒)"])
                mainFrame.Text1 = t

                local edit = CreateFrame("EditBox", nil, mainFrame, "InputBoxTemplate")
                edit:SetSize(width, 20)
                edit:SetPoint("TOPLEFT", t, "BOTTOMLEFT", 3, 0)
                edit._type = "duration"
                edit.num = 1
                edit:SetText(BiaoGe.Auction[edit._type])
                edit:SetAutoFocus(false)
                edit:SetNumeric(true)
                edit:SetScript("OnTextChanged", OnTextChanged)
                edit:SetScript("OnEnterPressed", OnEnterPressed)
                edit:SetScript("OnEnter", Edit_OnEnter)
                edit:SetScript("OnLeave", GameTooltip_Hide)
                mainFrame.Edit1 = edit

                local t = f:CreateFontString()
                t:SetFont(STANDARD_TEXT_FONT, 15, "OUTLINE")
                t:SetSize(width, 20)
                t:SetPoint("TOPLEFT", mainFrame.Text1, "BOTTOMLEFT", 0, -20)
                t:SetJustifyH("LEFT")
                t:SetWordWrap(false)
                t:SetText(L["|cffFFD100起拍价|r"])
                mainFrame.Text2 = t

                local edit = CreateFrame("EditBox", nil, mainFrame, "InputBoxTemplate")
                edit:SetSize(width, 20)
                edit:SetPoint("TOPLEFT", t, "BOTTOMLEFT", 3, 0)
                edit._type = "money"
                edit.num = 2
                edit:SetText(BiaoGe.Auction[edit._type])
                edit:SetAutoFocus(false)
                edit:SetNumeric(true)
                edit:SetScript("OnTextChanged", OnTextChanged)
                edit:SetScript("OnEnterPressed", OnEnterPressed)
                mainFrame.Edit2 = edit
            end

            -- 拍卖模式
            do
                local t = f:CreateFontString()
                t:SetFont(STANDARD_TEXT_FONT, 15, "OUTLINE")
                t:SetSize(width, 20)
                t:SetPoint("LEFT", mainFrame.Text1, "RIGHT", 25, 0)
                t:SetJustifyH("LEFT")
                t:SetText(L["|cffFFD100拍卖模式|r"])
                mainFrame.Text3 = t

                local tbl = {
                    normal = L["正常模式"],
                    anonymous = L["匿名模式"],
                }

                local dropDown = LibBG:Create_UIDropDownMenu(nil, mainFrame)
                dropDown:SetScale(0.95)
                dropDown:SetPoint("TOPLEFT", mainFrame.Text3, "BOTTOMLEFT", -17, 3)
                LibBG:UIDropDownMenu_SetText(dropDown, tbl[BiaoGe.Auction.mod])
                dropDown.Text:SetJustifyH("LEFT")
                LibBG:UIDropDownMenu_SetWidth(dropDown, width + 5)
                LibBG:UIDropDownMenu_SetAnchor(dropDown, 0, 0, "BOTTOM", dropDown, "TOP")
                mainFrame.dropDown = dropDown
                BG.dropDownToggle(dropDown)
                LibBG:UIDropDownMenu_Initialize(dropDown, function(self, level)
                    BG.PlaySound(1)
                    ClearAllFocus(mainFrame)
                    local info = LibBG:UIDropDownMenu_CreateInfo()
                    info.text = L["正常模式"]
                    info.arg1 = "normal"
                    info.func = function(self, arg1, arg2)
                        BiaoGe.Auction.mod = arg1
                        LibBG:UIDropDownMenu_SetText(dropDown, tbl[BiaoGe.Auction.mod])
                        BG.PlaySound(1)
                    end
                    if info.arg1 == BiaoGe.Auction.mod then
                        info.checked = true
                    end
                    LibBG:UIDropDownMenu_AddButton(info)

                    local info = LibBG:UIDropDownMenu_CreateInfo()
                    info.text = L["匿名模式"]
                    info.arg1 = "anonymous"
                    info.tooltipTitle = L["匿名模式"]
                    info.tooltipText = L["拍卖过程中不会显示当前出价最高人是谁。拍卖结束后才会知晓"]
                    info.tooltipOnButton = true
                    info.func = function(self, arg1, arg2)
                        BiaoGe.Auction.mod = arg1
                        LibBG:UIDropDownMenu_SetText(dropDown, tbl[BiaoGe.Auction.mod])
                        BG.PlaySound(1)
                    end
                    if info.arg1 == BiaoGe.Auction.mod then
                        info.checked = true
                    end
                    LibBG:UIDropDownMenu_AddButton(info)
                end)
            end

            -- 开始拍卖
            do
                local r, g, b = 1, 1, 1

                local bt = CreateFrame("Button", nil, mainFrame, "BackdropTemplate")
                bt:SetBackdrop({
                    bgFile = "Interface/ChatFrame/ChatFrameBackground",
                    edgeFile = "Interface/ChatFrame/ChatFrameBackground",
                    edgeSize = 1,
                })
                bt:SetBackdropColor(0, 0, 0, 0.5)
                bt:SetBackdropBorderColor(r, g, b, 0.5)
                bt:SetSize(width + 15, 25)
                bt:SetPoint("TOPLEFT", mainFrame.Text3, "BOTTOMLEFT", 0, -35)
                bt.itemIDs = itemIDs
                local font = bt:CreateFontString()
                font:SetTextColor(r, g, b)
                font:SetFont(STANDARD_TEXT_FONT, 16, "OUTLINE")
                bt:SetFontString(font)
                bt:SetText(L["开始拍卖"])
                mainFrame.bt = bt

                bt:SetScript("OnEnter", function(self)
                    bt:SetBackdropBorderColor(r, g, b, 1)
                    bt:SetBackdropColor(0, 0, 0, 0)
                end)
                bt:SetScript("OnLeave", function(self)
                    bt:SetBackdropBorderColor(r, g, b, 0.5)
                    bt:SetBackdropColor(0, 0, 0, 0.5)
                end)
                bt:SetScript("OnClick", Start_OnClick)
            end

            -- 底部文字
            if BiaoGe.options["fastMoney"] == 1 then
                local tex = mainFrame:CreateTexture()
                tex:SetPoint("TOPLEFT", mainFrame, "BOTTOMLEFT", 2, 22)
                tex:SetPoint("BOTTOMRIGHT", mainFrame, "BOTTOMRIGHT", -2, 2)
                tex:SetColorTexture(0.2, 0.2, 0.2, 1)

                local buttons = {}
                local function CreateButton()
                    local bt = CreateFrame("Button", nil, f)
                    bt:SetSize(50, 20)
                    if #buttons == 0 then
                        bt:SetPoint("BOTTOMLEFT", mainFrame, 0, 2)
                    else
                        bt:SetPoint("BOTTOMLEFT", buttons[#buttons], "BOTTOMRIGHT", 0, 0)
                    end
                    if BiaoGe.Auction.fastMoney[#buttons + 1] == "" then
                        bt:Hide()
                    end
                    local t = bt:CreateFontString()
                    t:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
                    t:SetWidth(bt:GetWidth())
                    t:SetPoint("CENTER")
                    t:SetText(20000)
                    t:SetText(BiaoGe.Auction.fastMoney[#buttons + 1])
                    t:SetTextColor(1, 0.82, 0)
                    t:SetWordWrap(false)
                    bt:SetFontString(t)
                    tinsert(buttons, bt)
                    bt:SetScript("OnClick", function(self)
                        BG.PlaySound(1)
                        local money = bt:GetText()
                        mainFrame.Edit2:SetText(money)
                        BiaoGe.Auction.money = money
                        Start_OnClick(mainFrame.bt)
                    end)
                    bt:SetScript("OnEnter", function(self)
                        t:SetTextColor(1, 1, 1)
                        if t:GetStringWidth() > bt:GetWidth() then
                            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 0, 0)
                            GameTooltip:ClearLines()
                            GameTooltip:AddLine(t:GetText(), 1, 0.82, 0, true)
                            GameTooltip:Show()
                        end
                    end)
                    bt:SetScript("OnLeave", function(self)
                        t:SetTextColor(1, .82, 0)
                        GameTooltip:Hide()
                    end)
                end
                for i = 1, #BiaoGe.Auction.fastMoney do
                    CreateButton()
                end
            else
                mainFrame:SetHeight(mainFrameHeight - 20)
            end
            --[[             do
                local tex = mainFrame:CreateTexture()
                tex:SetPoint("TOPLEFT", mainFrame, "BOTTOMLEFT", 2, 22)
                tex:SetPoint("BOTTOMRIGHT", mainFrame, "BOTTOMRIGHT", -2, 2)
                tex:SetColorTexture(0.2, 0.2, 0.2, 1)

                local auction = CreateFrame("Frame", nil, mainFrame)
                auction:SetSize(1, 20)
                auction:SetPoint("LEFT", tex, "LEFT", 0, 0)
                auction.title = L["拍卖WA版本"]
                auction.title2 = L["拍卖：%s"]
                auction.table = BG.raidAuctionVersion
                auction.isAuciton = true
                auction:SetScript("OnEnter", Addon_OnEnter)
                auction.text = auction:CreateFontString()
                auction.text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
                auction.text:SetPoint("CENTER")
                auction.text:SetTextColor(0.7, 0.7, 0.7)
                mainFrame.auction = auction
                UpdateAddonFrame(auction)

                auction:SetScript("OnMouseUp", function(self)
                    mainFrame:GetScript("OnMouseUp")(mainFrame)
                end)
                auction:SetScript("OnMouseDown", function(self)
                    mainFrame:GetScript("OnMouseDown")(mainFrame)
                end)
                auction:SetScript("OnLeave", function(self)
                    GameTooltip:Hide()
                    self.isOnEnter = false
                end)
            end ]]
        end

        -- ALT点击背包生效
        hooksecurefunc("ContainerFrameItemButton_OnModifiedClick", function(self, button)
            if not IsAltKeyDown() then return end
            local link = C_Container.GetContainerItemLink(self:GetParent():GetID(), self:GetID())
            BG.StartAuction(link, self)
        end)
    end
    ------------------插件版本------------------
    do
        BG.guildBiaoGeVersion = {}
        BG.guildClass = {}
        BG.raidBiaoGeVersion = {}
        BG.raidAuctionVersion = {}

        -- 会员插件
        local guild = CreateFrame("Frame", nil, BG.MainFrame)
        do
            guild:SetSize(1, 20)
            guild:SetPoint("LEFT", BG.ButtonAd, "RIGHT", 0, 0)
            guild:Hide()
            guild.title = L["BiaoGe版本"] .. "(" .. GUILD .. ")"
            guild.title2 = GUILD .. L["插件：%s"]
            guild.table = BG.guildBiaoGeVersion
            guild:SetScript("OnEnter", Guild_OnEnter)
            BG.GameTooltip_Hide(guild)
            guild.text = guild:CreateFontString()
            guild.text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
            guild.text:SetPoint("LEFT")
            guild.text:SetTextColor(RGB(BG.g1))
            BG.ButtonGuildVer = guild
        end

        -- 团员插件
        local addon = CreateFrame("Frame", nil, BG.MainFrame)
        do
            addon:SetSize(1, 20)
            addon:SetPoint("LEFT", BG.ButtonGuildVer, "RIGHT", 0, 0)
            addon:Hide()
            addon.title = L["BiaoGe版本"] .. "(" .. RAID .. ")"
            addon.title2 = L["插件：%s"]
            addon.table = BG.raidBiaoGeVersion
            addon:SetScript("OnEnter", Addon_OnEnter)
            addon.text = addon:CreateFontString()
            addon.text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
            addon.text:SetPoint("LEFT")
            addon.text:SetTextColor(RGB(BG.g1))
            BG.ButtonRaidVer = addon
            addon:SetScript("OnLeave", function(self)
                GameTooltip:Hide()
                self.isOnEnter = false
            end)
        end

        -- 拍卖WA
        local auction = CreateFrame("Frame", nil, BG.MainFrame)
        do
            auction:SetSize(1, 20)
            auction:SetPoint("LEFT", addon, "RIGHT", 0, 0)
            auction:Hide()
            auction.title = L["拍卖WA版本"]
            auction.title2 = L["拍卖：%s"]
            auction.table = BG.raidAuctionVersion
            auction.isAuciton = true
            auction:SetScript("OnEnter", Addon_OnEnter)
            auction.text = auction:CreateFontString()
            auction.text:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
            auction.text:SetPoint("LEFT")
            auction.text:SetTextColor(RGB(BG.g1))
            BG.ButtonRaidAuction = auction
            auction:SetScript("OnLeave", function(self)
                GameTooltip:Hide()
                self.isOnEnter = false
            end)
        end

        local f = CreateFrame("Frame")
        f:RegisterEvent("GROUP_ROSTER_UPDATE")
        f:RegisterEvent("GUILD_ROSTER_UPDATE")
        f:RegisterEvent("CHAT_MSG_SYSTEM")
        f:RegisterEvent("CHAT_MSG_ADDON")
        f:RegisterEvent("PLAYER_ENTERING_WORLD")
        f:SetScript("OnEvent", function(self, even, ...)
            if even == "GROUP_ROSTER_UPDATE" then
                BG.After(1, function()
                    if IsInRaid(1) then
                        C_ChatInfo.SendAddonMessage("BiaoGe", "MyVer-" .. BG.ver, "RAID")
                    else
                        UpdateAddonFrame(addon)
                        UpdateAddonFrame(auction)
                    end
                    UpdateGuildFrame(guild)
                end)
            elseif even == "GUILD_ROSTER_UPDATE" then
                BG.After(1, function()
                    for i = 1, GetNumGuildMembers() do
                        local name, rankName, rankIndex, level, classDisplayName, zone,
                        publicNote, officerNote, isOnline, status, class, achievementPoints,
                        achievementRank, isMobile, canSoR, repStanding, guid = GetGuildRosterInfo(i)
                        if name then
                            name = strsplit("-", name)
                            if not isOnline then
                                BG.guildBiaoGeVersion[name] = nil
                                BG.guildClass[name] = nil
                            else
                                BG.guildClass[name] = class
                            end
                        end
                    end
                    UpdateGuildFrame(guild)
                end)
            elseif even == "CHAT_MSG_SYSTEM" then -- 如果团队里有人退出，就删掉
                local text = ...
                local leave = ERR_RAID_MEMBER_REMOVED_S:gsub("%%s", "(.+)")
                local name = strmatch(text, leave)
                if name then
                    name = strsplit("-", name)
                    BG.raidBiaoGeVersion[name] = nil
                    BG.raidAuctionVersion[name] = nil
                    UpdateAddonFrame(addon)
                    UpdateAddonFrame(auction)
                end
            elseif even == "CHAT_MSG_ADDON" then
                local prefix, msg, distType, sender = ...
                local sendername = strsplit("-", sender)
                if prefix == "BiaoGe" and distType == "GUILD" then
                    if strfind(msg, "MyVer") then
                        local _, version = strsplit("-", msg)
                        BG.guildBiaoGeVersion[sendername] = version
                        UpdateGuildFrame(guild)
                    end
                elseif prefix == "BiaoGe" and distType == "RAID" then -- 插件版本
                    if msg == "VersionCheck" then
                        C_ChatInfo.SendAddonMessage("BiaoGe", "MyVer-" .. BG.ver, "RAID")
                    elseif strfind(msg, "MyVer") then
                        local _, version = strsplit("-", msg)
                        BG.raidBiaoGeVersion[sendername] = version
                        UpdateAddonFrame(addon)
                    end
                elseif prefix == "BiaoGeAuction" and distType == "RAID" then -- 拍卖版本
                    local arg1, version = strsplit(",", msg)
                    if arg1 == "MyVer" then
                        BG.raidAuctionVersion[sendername] = version
                        UpdateAddonFrame(auction)
                        if sendDone[sendername] then
                            sendDone[sendername] = nil
                            if not notShowSendingText[sendername] and sendingCount[sendername] <= 2 then
                                BG.SendSystemMessage(format(BG.STC_g1(L["%s已成功导入拍卖WA。"]), SetClassCFF(sendername)))
                            end
                            UpdateOnEnter(BG.ButtonRaidAuction)
                            UpdateOnEnter(BG.StartAucitonFrame)
                        end
                    end
                end
            elseif even == "PLAYER_ENTERING_WORLD" then
                local isLogin, isReload = ...
                if not (isLogin or isReload) then return end
                C_Timer.After(3, function()
                    if IsInRaid(1) then
                        C_ChatInfo.SendAddonMessage("BiaoGe", "VersionCheck", "RAID")
                        C_ChatInfo.SendAddonMessage("BiaoGeAuction", "VersionCheck", "RAID")
                    end
                end)
            end
        end)
    end
    ------------------给拍卖WA设置关注和心愿------------------
    function BG.HookCreateAuction(f)
        -- 关注
        if not f.itemFrame.guanzhu then
            local t = f.itemFrame:CreateFontString()
            t:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
            t:SetPoint("LEFT", f.itemFrame.itemTypeText, "RIGHT", 2, 0)
            t:SetText(L["<关注>"])
            t:SetTextColor(RGB(BG.b1))
            f.itemFrame.guanzhu = t
        end
        f.itemFrame.guanzhu:Hide()
        for _, FB in ipairs(BG.GetAllFB()) do
            for b = 1, Maxb[FB] do
                for i = 1, BG.Maxi do
                    local zb = BG.Frame[FB]["boss" .. b]["zhuangbei" .. i]
                    if zb and f.itemID == GetItemID(zb:GetText()) and BiaoGe[FB]["boss" .. b]["guanzhu" .. i] then
                        f.itemFrame.guanzhu:Show()
                        BG.After(0.5, function()
                            f.autoFrame:Show()
                        end)
                        break
                    end
                end
                if f.itemFrame.guanzhu:IsVisible() then break end
            end
            if f.itemFrame.guanzhu:IsVisible() then break end
        end
        -- 心愿
        if not f.itemFrame.hope then
            local t = f.itemFrame:CreateFontString()
            t:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
            t:SetPoint("LEFT", f.itemFrame.guanzhu, "RIGHT", 2, 0)
            t:SetText(L["<心愿>"])
            t:SetTextColor(0, 1, 0)
            f.itemFrame.hope = t
        end
        f.itemFrame.hope:Hide()
        for _, FB in ipairs(BG.GetAllFB()) do
            for n = 1, HopeMaxn[FB] do
                for b = 1, HopeMaxb[FB] do
                    for i = 1, HopeMaxi do
                        local zb = BG.HopeFrame[FB]["nandu" .. n]["boss" .. b]["zhuangbei" .. i]
                        if zb and f.itemID == GetItemID(zb:GetText()) then
                            local hope = f.itemFrame.hope
                            hope:ClearAllPoints()
                            if f.itemFrame.guanzhu:IsVisible() then
                                hope:SetPoint("LEFT", f.itemFrame.guanzhu, "RIGHT", 2, 0)
                            else
                                hope:SetPoint("LEFT", f.itemFrame.itemTypeText, "RIGHT", 2, 0)
                            end
                            hope:Show()
                            BG.After(0.5, function()
                                f.autoFrame:Show()
                            end)
                            break
                        end
                    end
                    if f.itemFrame.hope:IsVisible() then break end
                end
                if f.itemFrame.hope:IsVisible() then break end
            end
            if f.itemFrame.hope:IsVisible() then break end
        end
        if f.itemFrame.guanzhu:IsVisible() or f.itemFrame.hope:IsVisible() then
            if not f.highlight then
                local function CreateAnim(self, w, h)
                    local tex = self:CreateTexture()
                    tex:SetSize(self:GetWidth() + w, self:GetHeight() + h)
                    tex:SetPoint("CENTER", 0, -1)
                    tex:SetAtlas("ShipMission_FollowerListButton-Select")
                    local tex = self:CreateTexture()
                    tex:SetSize(self:GetWidth(), self:GetHeight())
                    tex:SetPoint("CENTER", 0, -1)
                    tex:SetAtlas("GarrMission_ListGlow-Select")

                    local flashGroup = self:CreateAnimationGroup()
                    for i = 1, 3 do
                        local fade = flashGroup:CreateAnimation('Alpha')
                        fade:SetChildKey('flash')
                        fade:SetOrder(i * 2)
                        fade:SetDuration(.4)
                        fade:SetFromAlpha(.1)
                        fade:SetToAlpha(1)

                        local fade = flashGroup:CreateAnimation('Alpha')
                        fade:SetChildKey('flash')
                        fade:SetOrder(i * 2 + 1)
                        fade:SetDuration(.4)
                        fade:SetFromAlpha(1)
                        fade:SetToAlpha(.1)
                    end
                    flashGroup:Play()
                    flashGroup:SetLooping("REPEAT")
                    self.flashGroup = flashGroup
                end
                local function Create()
                    local f1, f2
                    f1 = CreateFrame("Frame", nil, f)
                    f1:SetAllPoints()
                    f1:SetFrameLevel(120)
                    f.highlight = f1
                    CreateAnim(f1, 0, 0)
                    f1:SetScript("OnEnter", function(self)
                        f1.flashGroup:Stop()
                        f2.flashGroup:Stop()
                        f1:Hide()
                        f2:Hide()
                    end)

                    f2 = CreateFrame("Frame", nil, f.autoFrame)
                    f2:SetFrameLevel(120)
                    f2:SetPoint("CENTER", f.autoFrame)
                    f2:SetSize(f.autoFrame:GetSize())
                    CreateAnim(f2, 0, 0)
                    f2:SetScript("OnEnter", f1:GetScript("OnEnter"))
                end
                Create()
            end
        end
        -- 过滤
        f.filter = nil
        local num = BiaoGe.FilterClassItemDB[RealmId][player].chooseID
        if num then
            local name, link, quality, level, _, _, _, _, EquipLoc, Texture, _, typeID, subclassID, bindType = GetItemInfo(f.itemID)
            if BG.FilterAll(f.itemID, typeID, EquipLoc, subclassID) then
                f.filter = true
                if not (f.player and f.player == UnitName("player")) then
                    f:SetBackdropColor(unpack(BGA.aura_env.backdropColor_filter))
                    f:SetBackdropBorderColor(unpack(BGA.aura_env.backdropBorderColor_filter))
                    f.autoFrame:SetBackdropColor(unpack(BGA.aura_env.backdropColor_filter))
                    f.autoFrame:SetBackdropBorderColor(unpack(BGA.aura_env.backdropBorderColor_filter))

                    f.hide:SetNormalFontObject(_G.BGA.FontDis15)
                    f.cancel:SetNormalFontObject(_G.BGA.FontDis15)
                    f.autoTextButton:SetNormalFontObject(_G.BGA.FontDis15)
                    f.logTextButton:SetNormalFontObject(_G.BGA.FontDis15)
                end
            end
        end

        tinsert(BG.auctionLogFrame.auctioning, f.itemID)
        BG.UpdateAuctioning()
    end

    ------------------拍卖WA字符串------------------
    local wa
    -- WA字符串
    wa = [[
!WA:2!S3xxZT1XrIMpEyRIpT7(qU1n79buylhdSgegeuu(JRKQl)sumMuuljL1UxvQGbioG8SceheCoqw0oAlz5yRpSLLITL)qwj2s2oXRtSKxTjYY6d7Q233Q01)esiajFkvDF7(2T7zMZ5mZCM58biLJZMLLejWm90Zm90tp90DpZ8T39F9Y)1v)RREQ)NTSA7u3SHrRz2)8tn5Eh)kMly1yoR2TwW4B36OZuRMTHZE(FD0z)4Vf8tZhQQPDZ6LxzEJJ6uQMvRLl7uQzjhZLnkvDLgLx2CHsol1YWEjR6vx5kl022XAze2VtRvCr1t9)(Jp(36B9DUE5glSKvR9zz2WPYOJV35hF2VAblOywpDJ5EAZMgpvZu6Rm63(2n)l9RI93SAzhJkTj)53vUnKCzhZfoGzvNLgzy4RTkVGJPvd7TpRTt5woFVtu1QKTv7gvxAeZgMo)Gxf(ofDpvf6Fp6)V)J6wluUEQYTBvUKrJJKAN(F0QvQN9y95(18hXOfKB6JumFX091xT2nivMh45NWW5jnAT32lNX2Pv2(sb)0YWPDRgPCSA0E5kgTWmmBSyEOzVWs4xYbOlZdu9HEG8WVYMoBwSol0NrJQ91NzTunSCsvAI8JmXWPCwYObbLSVVtSP5)987Uv5LnSPjBu32GKhGcfTo(ou2u7yNQGHHvceEvTFpI8vSvI)1TQyLz42e6Y0LnBqAuILxdqp(EmRAKjRaE9r54hXOHs0Gz847VrlJfnTDmAnC96yko2AXeJmjGlKvmJq((Lg)VpTGJ5a)QBok4D6ZNTz4QvTAm6sLB0WOoY)mIzzRjmyeG09nAjipNjBuZk)SUDdSetByBxErJ91YOM5rZOeBz7RpkZ7uaEHzElB4u2PCL6gzE2JLl1Z6tSkz2OQXrbGCzAZqalxQdBSswpWeyyPCQzeaajghllHZmdWQmfw3WGwQDc9QNzP5pqAoELPoy6HR78qRDIpVZjVD3tF21F(7U2R)UDVWPsFiKiG5TXT)5DFTZiKNBr7CUpU7LoDN35kBCHVS7PEJ1o9)sNx756CQxCJx4SRF8xaYQ7p7534TpFNZ9gDVXP6(sNTZzFdkEzf8sV1gx4ZuxWF9z4l46)BVVxL299(8UN9QRE33BTl(t6CYBT6T)SoN5J6E8NR7R)5Do3B15k)8oN8CD(8xOZT(f06cH)1UOh8DE(pVZlDHUVWlbWV(vpdaF3B(om4DRcS78YNUZ5U2Q3(d78L)Qno(7U(N(8DVWVbQRUV3DOOfB5sW8XFjadGFegps0L(O1)IxRZl8HDV8lU6D)Y1E9pQ7TV4639QR(5VluwDihl1DUPyP(I1VZhlukvv3U2vkONMAh7GIh)V61Eo1hU6TUvMoV8x258NnlR2etZJkCPJVXV6Tw9wVsN7(ADo9zf68KS6(g3zTlCdilPgHxbXH2p50Whw)3(zWOiGbPItba(afaapC8wbzAuWnS(7)cRD7FkfG1F)F2A3458Y6hVqTA7E3JnqHc8DG)WDU4pUffEFa47guacIeV(Gsm41b0vCkRAxsph4XvIek7Pembr1osrhQ6(rxUZDoxQDferkGWJUsAhmkkP(8Nz9jVFNBEtAzyZD4tXddCOMHh(uCb7zB5mWXOJFDUZX78lFjscPEa7u8us4Ruy6(M3aM2rsXgaIIyxCaJ4B8gVuqCqP3uCaW09TpbmT0hhEDmsnS2TFTU)S3L1XiWV2V98ykIu4cWpD)TpharGXi5S46QpYXOzq(iF7pqg81wHcis7EQZV6T(GGCw85QKZIcWQF(N25Q3qzzx)6FMxwCn2TZgxau35mVljbKM(ace(TZi8kbsKYsNzYtzzPisG4GvfzIRGbiwuHMqhrNetQ8rFaujCKkwpeKqLPhosOlvIW8bNTZPUbVOLoF(nWLFoZ7XWgzHtaY1)GtU(7FxEzmREZFbdsV22fp)6VjB60gx8Ff)SxF)T(I1(GBXY6Yxd)Si5NocXt(zP4bgHdKba9ZEYpV6xS2DVANV85x78VipPy9p6t8sxEjny285V26N8JH1D5LMGZqVW7IP)sxqsYcDunyr8tpqrccSsW21UqzuWYLCG7V6NFEUfKFPqUo9gV(Z15QxC1B(jS2fx)EJx5nyzPV3058VcvbPv)YRc6v87p(j01)68fVSmKEO9xCIU)8l15u)kyXy2Qfx71HLVXLkFtys8lZQXBIk)qbasS71ox3F9Lbwj4RREZBblES6DFfQ(mqUuWw9MND17Cr6AYqzHXCOhHQdXrb8BZSMXhsBgirWRz82NG1mGUZN)ROndIKj)Mb811oHIMbKo0m6EPNNUYp2m(OpHVzqP2ceKaCLk5hH6QZNEokfGwJaDWv0IxMiTNlt3c)hUZPEa7)WDonfAVV5H7RFzqBuVbegoV(R6LOaxobM1V6N25UxGFb21)O3AJx(NWnLZhaPS(9h)5OPJFqC9w(vAduJFb0PabnIv6NaJdyI09PgCJWZoXizwY4O5snC9MlvMU)b6gvAzuf3QcDxW2TRqbBGCPkYd1ITmG97feUbZLAB8WvPEBdfGnuUuBpR)otP1P3wWHVc142ZM6HtvCOHiq4wFEWqsqgkwT5be(DzyC3TjPJRAJZPivpd)umqGLUHt39Thc8c7mvbTFodNrRx22E0DV7mnG9YMlfAFfJw5s5SstJSUnq8lK2NB9GW6TFzk5TuUulGOYTmuejTpCgmaHz)nmPvDgkGzd2NucnwZIBxNw9lyv3QfPzbSEPDBe0Yl0g4aNSp46gl4KzB5snHlPaZjdPGz93mRa6)XlKov(8mCaFGKo830UQ3WnI4vWC0pQDOJcdRP7nK1F)PanF34KNRVQwKC8g6iwQAaO5m3m7FVJ9etoF(jMR08to)uJxAM9n)KZS3sZ8ePGIdAsSXRF1nE3)nyhZkWqraddT9hBOhBWuk)bBaN9KRDRFPkmmXSJp(EX2qAQEEPfZE2XhJKjvJ10(88EqCGjhB(9aGm4afKl6(gF45H(Z0Jdzxuk39m5yJV7zhE6XDbyqX8nQUOXCMpdoyvm)qI5vP8chUAlRMJY4aE2ufYX(x(TN6yQbEeRwvnA5xKbiIHGImGUsqGTunZ6og0IKhe049)bJrfPRWruLtApTbPmccyHbOh7XGXaStMnovUhAkOTR2QSz1zTqtqH2JY3gJIqnTzdZPTAySY8vqdA5BNjKZ6tphUR8R9H0fxPQxWRjH3k3SfY5s0dppBQbPTrObMJlvy)NqAfcK(GfOzq)vGYGPpKYmhSGBjPGOOO0muLDdZ65Crp(h3CpM)88p5nx9UVM78CrXuPNWQE1bE00irJy4rRgo0KeSQRxQqrgTLrzhdmPmPDZ0xSvw1L7XHfeqBNtfcIJ75F0IWVdbCsnm38dV3XgE2Xkn)4)dZxA3ZS35HE5JcIZyorin3kSs9SXmTL6yKuKRqsIjVBrkMyVYFUKEOtsNsr)zOa9NHuvvd1B9NHsu)zOW7pdfRbPjqvkK6wS0cWzqtUh4aPfuSZXK(egWB2(2tVKPJHuFJLMCTEaAYjVVXkyGPx4)cd44230OE3K2ZcYONYOmiwxqplM3IuPJglnQox7fukjtAAsPd4Lexq3P4Ac06tP(SoTIwNuyLNPUp0yZeARL4knvGm9uz75Ec1dKZkSmjZxteViPzL0SbxMLrs3jUmI0YRtXLk0nN0EYgynMzaP2DnOdAcWoarv392E5jAz1U50g4UtSZKnfBDhr1KPkL2QCJdNlfSJPfXIKlvDJJyuNPCEr2FZL6zGf5ZLYQb684Cc4Y0EmO9d4Xc9IKjm(IkdVCLYoZcPaTjObjrLmfD0eYceW5GU)Wulh2yNDZ6MWeY(b1C83NqWEvzb9quGks3wjaiPaaGqrucGlvcBqUemLasiIauuIPsqOeyaggLwpqUWOgeCKbGGmaPea6GgaIQrpXrrai2WPA6dDaLmsRbleowctG6(dpJH)xca7XcKcXlL5nByB0Yr3CRCPkhKRa4UOJRW2fuZIfYesGvja4UIDKQesFpA8tNshh8Y)D(p79bo3fphaaVRIv7KyyvLPx5jb5NK9ZMJ8hENyd5p7WtoMK4vISLCPGEyJuMnlBccue9qoV0fM48AGG(XBunvz8)cY(ZgKgvl)cLBSGr9hFULSE6mzLYdJTdCz1rA74y14XhTUrz05(KqjXokOHvzjaMj98ZSpqWX2Gvw7ViNBS53RUqBHlieUp1wki1uyK7qwYbKKYIvaZglU7wwltwlqyDu5viCxrZf7E4c6McOdnNL7QE9cJLaYslYjnAP5nx2Ov(HRbturnJ8I9arswynUALDhQGwKwDI2hiMS0mngTU5choJTr9A8AXxJAsOA5TE6ggTCPAiRQcB0Ha6QrxgoFN43IjztkzMb4s1dD8TzAoK0deJlY5vuiay4XGCBY1Pnz5N(5rlGLmavmxOTDWzCbHHYlt(yMSkf7W1DlKFq1DypoOa9xPP2I9xUmDRX9bkRnhAcRms2et7q)OK5Tkg8j6nnCDNNWyLXGrEzjq9cZoTUCJBhFPPcJuu2mqkabQjhtCoreDYiKe41zhVboLkEC687CWCXLCOftKAmbmGmVLvDhZM449my5ZudA6dV3r3ZmZwAQX398uzxfuWGgvPNDYj2JuXzJ38LKWkofOQIlRiFMWibMfPT)4tWMlKnhZODW)qEq9flKyrIUzuQjrIbA6P4scRGH4)L6QHnHqZG)uwl6VSIcEaYiVPnld(PL)zd3rahLPKbXTR)3wlFDRfTrvelOVdZH7aESlNGrC9RbS)Zvb7c2AF0vq68KFsRdP8B4ZfZ9NAGTLZ7BsB3tvLyIsT88gi8zArpO5HYVmAqxssK4UnJGhmZXbiBF8eQAW5nck1iSqO)Mv)MBdwbNxYMvcBI4igHnR0x7a(kHT2VMk5hAwg(xJmKEmQhv125svsWDEKVrIdZhkTsJBqPwpePW8mP(fSFPcczslu)KcbSXfcQtHa273h7C1aTzJvbMBwYUdOj9pdCdrIsMBKuQ3od0cjrDAGZIGAxQjhDKkOK1C99ZljbwGzZjp1TRY2P0r42PKspLOAhth5GdCieX06Ch0VhCRsi5FNqMfpKq6vAzu(WAzIzeN4Wfr)MokgWKo3YLRxpGchlVY0Y0kXfOdq0wODRwgnCClgNctKwLIrb36OFHYULr4fAq6O)EZeqag8qQ3VpJCJaiUHEzMwoGf3QGUT)hQHv5w12vwGpvfhjg1GOOqwy(7(NCFLXERqY9QLqnDmwoOwiBgvkq42uAviIGTaflampj0nhzLjhldvso8TjhtRQBEB8yuRgoTSQRzZhyiA0ULTvRmPNePF1kVGXdtt5HNSHDtJfCKSgJEL7egpMufeqdAKjisDhzI8ydT0W1RVhyKPoo6i2YubbTNx3SXHZgpEc51avSqxelnQTt5dIpnSHz9Sb7OyffEhnaezIS)5BBcud2QqY4xPfRw(kLBXZiqLJ5aT6c8ay4m3cTmB6Kj9mnOEtinNPrOSWg1l302OQODsqm5aRGZYuHP9BzSCztxZ64krMPDu6hi)G1s73ObbQozZ2NAlP7JOh2RakaTuUulxMCQsiDnqQci2D6Yh9jlxVTHSLXOfHCezs93HLtYUzmIdPSzosaFf43K2bO1qb1YGjg2HfJfiFakPptnMcGKu8(Yov5GPS6nLR)ONtzN22JuMgufzA3Oz5foCg(tbuir(r2GwQw56dHvJd4gBlfYV9SXYo11Y7r9qtYfmIa8KqgrP067YIfc4x2q7F)5Ya1aBTdu((wUxhOu4aDDninnMm(suQcYt8GjliAAGSeRIzNoRomXlCraMqNVRz6ET8mTdhVQPJkB3hw3iDb7iiaYTI(lKFiDne9I29wEsBVvvRuBNbRiTzsD)IKfzJJtou2M8xaR2J7hCeZrpxGblVtOmEdQxcHxH9DuIRUBunUigmgk(iZm)8ZmTBE9Jbcw)dfJocrAJkzl)ZyGLQxuIJGz3foqezdVakI0ffdhC79aleFTfYr4Hyee6Esv7o2Ari8uFhM2UCSAgrBs8CbrctwiprplYcKuQ5B4o8GQB0AfU2ZnjG(Idc8rDsCebRKbYx7YqjDGsL2aojT0PSqzDYPqpq5XS8h0D)ghIOIfAoRIBj9d1btue8fOBsqFM46LeFRUf5X(IymotmGtCzmZ5Xch0)ir1Z0YQioDLDWKI1evT6afVjQQozFrnlvdpDAneIV(gkdECdDh(6LXkfPfibrhfRjIW16(yLE4KU6lzDJm1uQ7L6L(dZlZ8CbLMPX0wTTni7UxYAVEwEXxzapytNnJM7)GevT7VzCC(xnfnI93ShAcmTSGANmLzPYnw0OACAbAmOQwJesw6ICZDOXu07WDsvqgCE3KhYS6A5P2QhNdmnTF94JzAtU0ecSPtEffI76OkQG8vnTRPkoxcd(8oqhbOArDQ31B(qz5KkPqb3sHkk04nuqG02tLuWK3Dq(JK7u9qz8gF6HXMEN)q7Wxsg6eVPd2udss0tn2PxFGTOP3hpkFCPprrB8xZr7HSmNUUwebjJgYwS4RJdpnxeihpEz0TlsKsrxJYdNqtkqaCrxyB461z2e1otmKAtK8FGLmmQZSVyvJ6ochltMxarNa621iWGBGqYfDEG(qPdCf7O1xIAxHijotsy5ag0eNjY(SUHbPBTiv(ktigRc6Qq5WoH61Syq5LDpIw3wqjj(oVGUvxbVxSvfSmHg)eHEBieNyLHtmGANwOHMfQBdkfTBdc315jjMPcLDmVbAQj9o4SuoxV1QWHZuuMJwHC(DoQqKjPmdEHJlvvkxdSYhEUrS6jcIFR0nUcIZKTiIlh)JtURvdO)qSDqgxmsdtHS643eeEYC9rUulMlvfA8LGKjEHfb7jbLp4vEMrBugnK6MLXqo2Lsr6juNRZqQC0MOBQxcU9P0rzcb9HEfLOLsRpGys8mC)PIXoqD7XPI)XK)3VLPF5ewbZHivNYmrHdvctsGod9w026peQA3VYo8K99svXdsCb2H22DL27dobLnStQbCKg1JQQoBHes7qPf7LuGqJ)cCsTRDs7XkRusRhZTFGEmGY2uuJ7k48vWdO0Oi6xlmjMbrIhqWuerru1ELv4PSDIdJ)G60RDOxJ1ie9IKk5j9AaJZ1QufU418JsCUJMJRObjlTj2kvg3(rey5c2EtHis61sj3hZB1KCzQQiP8K6jito7ig2Ez6bQRQ1YzgOqWZ9hK)oug7FcDJDBc7dAKjoyAsVO0EABxbq5OwlBmdn87v1MoeECNkJNnSq8UxmISkGlEAQW6CUdj8UsOw(2(MyKFjr6baIKSoqyW5fHB(b0wmS0SUlDqxoh3wH3XOL(bx877seEvu5VZye7L8mDc9skFdFe5iC6HJYImH7sNqVxd7v3nrKmnc)fRHBmbeY1UrwnLNlIb0If57EdEC5ZLSzBvQX0MU9TeSJleH7fTttD0TUZu5FcVxDcEI95lM7z6lXfm4XMlHiOoFKyN4Y7WoJPu3SLl1ZMsy6zo)JLEu8EaJNltAR0PoMUQO4wEDiOcjzTXLTQsuDTCdRgRSmSADAvhdZnZerfx7Rs6RfB6k)1r2Xc9SAUzAWH4v443ufLJEm1NCUemCRfF8HjvWrUKk5qzKnTPKQPgJ9USTKGVTO2ACKZrUZvYQ50l3dfnzY6uIIejTtcdbNsLWXPTqwOTmEN7lmn9e3sG1w2uRmULS64wXkK8Y2e9ypEo1cX58CrpTJf3wI4DmVNd5dy8c1(EwqX0SXZCh(7z00gBkm7arfkVRDYOYtRYnoeYVPtDd5LCuDh3MnQc65Fk(lIlk80wgauWJkoIk)Ho3gGQBmxnLsHVU86Wizm)ug1C0C62fbKCSoIfKtBwTADdnGYggcEI5dYT7rVdTJkwgYRcsMa5mbnifDdJr87uiZQTBePJfdaTRfiKo(Msuht7PSw4WKBNuHl6afx5EmMAVrt3jpExfs8XylA4cX31d(7ErbEBnhTbvfmB0BzM3moX2FlFT7tmIlO9In7E70yRtitsV2ueeKXzkD9xEdYoxuHOqzX1CgkdnDxSQgzJfYJG4ulB2kjK6qyDSWQh5L8echkszsNnJeqj6QzXJlGo42J8audXb)gz5gTCdhIfqv8054PibheQJlfryY7BtE9OPNnjVG1RDCNFRZi9YULJyX88pA4bSysnwVq50eU7AU8LYg(TVun9x)p4TbLI4LWtdz)OBND0g1egEGapFyedrh1AURdXuUTdAIhI6d5f(8(iU)H6bMDHyQ03Jpd0NxZzt5zN(15zhcFI(J9LR)9uCN(eGErvfXj6JKJYinMn7Uu8MElFDHrIGr0(3HYVxsN4anhTJiJG(qqyWZGCsdO3en10butX6isp3w5OeffbhPUzV6EfXMJyCOJaQXmtR5mFg1NuLejGwuQj11gMXIUeXYejXPBLByUCMMKdVnTW0pNVC964BLhN)vzz4eij6Ge(EDny2ajh1mwPjlYI67pLtFQfU7D4T8ltHaelFX7yZBayLdgWpm9dSEz2OQJnLtEJZWaO1aOKfXVBtaSCcbbTIBGlk9PpUvIyN0yQhg9UMOfEVpo5D7EHp19kJw1rqMUBgfoknWvqfNbqWP(nY46E8aqmP9tAABs2Ey44cu3IuTgboMzX4ATY35xk7wAJV84gbHXooZL2mMGt4cFBx(nQy0HqMfnEBp0UJ64bZFqi0Tef52I4N84Td0atF0fhxQFzBuUBQOqvSERBclsNcSKNMAs0QbkVuOIQT(h)hqNqjeAIrnfxXEAyxdHrxh7koDYt(wCT2eBtBQoMaK92XnNuPuDH6q952iYkIf38kpPjkAiHCMtcuDw0j7Z7f))cZxI9X4iM9u19wfBiu(yHi3ddjWP7HUNMJ6qpp8j1HKJD7qea7DTCPAPYqfbZBNyn0KEWGW9IrHJWWW9UXHtKjGtMzGtOPGd1CW9QjHVpyw4KBA4ezE4yBIyn(fxltzpZoQ8aSZZmQ9UBwbZOIhQVWjukdYTO5ALZTS)Bqwm5K7bmiZDhlu4XXhyt9HXWR7Dj8pUS(Ayv0Y6t4MJnVFacumDQ4w4Ut0EXR(na15vP1QUfU1QQEVP4yi0FpZYXToQ8ntEOxph6JJqvOrAWOHXtlUPUWu5Zf4uEAcPxqlhSreA)bI7v3sUlb1V49d9o07gALTvpyt2JiaFJzh7m868(qKpRp6NDBvbda6yyHA6LudZMGz4UcUPxJgEbYR7vAM)tJ4YwvZHmRKaAOx9KNF)H8AZ4(LKEwe5SSo9TAHE1z8JAxUUPZkEpvlLODR5xPPb9tZ1Uc9lSCg)h12SjibnxkCAF7w0CiVPiiTWUDfVpxXSr15PhRZjOx5H0xSfUB7q2KzSTe4S5Jz4s8uX)WhSifIiAreeUN0buY5QyiPH1GkzP1npCJmIpfLSMazK3FqQ)(tT6nV9Ax4L34NDfscCCe(RiWU6Ki(njn5puZpgMdGCJxP5nwg6logP1egYzc(M3uzrmU5XGiL7ULeMatqT)NqmGpLnnQMo4J2c(ylU1Gf2t2yGNXrFOpwVhH2BrbNTmAW2xgX3Zs8b(BiHv2(BfegOZAfQE(psG)8c4lpXA13PE6DOhfRuTUihyhfXKINylFPw8HPdzUg61dYh4d5AtYlNe(h(ZPcg1X4uV(KDBIen7HsnGy8BB7)Gt6NwrXe5NjIRagiEBLDSK8GBG7dfjNDO7fMAz3PNqTQzIBGsUCY8lfEe6bm7FoC8(w(MipHENgkbOBlJ8AF63iMWL3AGSkERLu5clUoq0ErrqSAOuDYvHZxt0DqFpkHxnbpopCkbwxkIhqLyrrZ764Uet0L9nNPQNfnT1NucpeP8AloEvliwa0n85lgU)RJzhv2NSL6fFYgWYTE3yGHfAq6(rZDvCu)WvR6IYipaIgJ6Up3uAK6aoWl(DwEei0QXT)rA0E5V5B0HLVMinisrlsbXuOkBvlc1QuequQIYhvWr(WuOA5zkwOqiWQFzyPiQE7HQJCa8g8cxsj1I78iU5ivchSX7BAJESyuLc2DnxQ8BlKYOE4uciUXYbgQGgaPMZd6vSiSiiaowoLRppvWx(TPP6ceJ3sTfPjKrUGjnEi0jTn(N8(WxrHVw8)CeRJWUBXzKnwuDGFPFoCWc3dFA3FhhKHTeffv7WnutCRMcHk0XLEqnyRcd0Qruzq2QyuEMd3rXSu4ZgsyRSve6JXj8hJQZfrrJVuBxiLI1LEzpZ86)hUykj9fIAFZBv7DERB)ZXFp0ssl)g2z6YBp1dGxt8pYGYzRFvrTHaOBiiSZGwMr1gf95Vf2YOITNepbTrejW62IripikkJPsMHaeV2RLNaWhuVf1Ej2g(9RCGkJHpL1L39VDi1wyXv9MzR4YdSj(gonXTQ4Tv1y0UI66Fn0wMEoBPi9NNrpEcrLWq4YuJD1RmU0RP6c3mPOtKjCtGYWf7KifYJFLQqww4d2BzATNun33kwp8yXS6L1IFWikN(xF5yQnFK6IhIJfJ8brqsXdNE9b5Wr5Jh9JQaiXB1vvrqucdsPalE6fGiOZ4JdvcVIQKzxrV6pI1r5zyNSrZ2yArR)M79IfrtIACbPaSfc8XLOOup2fEbXg01il(iQbf9sn1wEkIobxG2BBqSG5ckezGqeTEjgEHdcU1WbdNS7gEYfIbyJtP4i(vt48wpIlkRtNlSyWoBeiIyDR91YW2oiMeJ9UyHjzuWh)0rHaYThkGa5Bn0iRyXa6NVjeiZqethNTUyiCanLv8YDfTbqguDAqxeKwuCOyOGSalIx8Afq7xMenAomzAmVflHqhmAV0l5LLTBztB6TErRYMvRrwVaWE1vwyjJfoC)KpMwtnifDGHiKPsarmuUoEjm4JEydJ60mIwmtfLcna5lsu9kAfgHBYPyrvqh)4YeGxD0XwXPh25dTVdfPIJQ(G3CbYm1KmpwbVegXUXx3t)wNiIPX9RE2nvH1TB6yqdRkKXi5fjXZTMJq0Ky0GLncuepHtAOm5zKu8pXzsrcj)sB)qLvt0QULKkwKjc0NyuAyeYLh(8GfqdS7tB9))A3LjRLjWtqK)s(yrHLlKdtP(7pv3x7SRE3ljBfpiJ9v22oHIQ5Bd(ToQeQeDp1qlI3rTtDPoWsMogblvWhGS(dy1n80uJg)qUSUc334INF938C8c05wQOItirBlS2)JYxQWz0Ju4noieuSTWynEDgjUSqpllrkmlcS3FjtjjCc37Nx39eA5RGVYVQKmjp7jebtHgSmbDztOJr9QGOTeHqctZ7DHpBrcEeAnAe4iiVHxEc9SdqFIX(tB5kmM(GsvEOuBVqyIv4jbBfcxE8znw0eVMC3TvlIic7mPhUXkiR1wNiOrj35zbfcvjQD)5vqj1RQK4D9jBwoaTIs8enq)0tPkakQ4e4qOjBp9koXYesQ8a2FIXmh1bV6pMCKbTBL3XCrCupwB9H)C2NnXmms2UBBdjo9wfhKk79vmgCux9t7C3l8FAfmgQ6w0((9F1Te4SeUXOcNXkGOTP4lB8LWPT8eac6M93)f68bNS7B9fR9b36(RB2vRUNWwbf03t3iCaftrmShd6dZpAJ34OIOIQvVM8yatpKEDgJA3Sdui(6bM0GOocEiejb4CQfbJdTqCSl)NfnubbYtAp3sM1CEcJviVjjH4CD2XvbAYJsVR9HYmIv5wvzbXB4ULhD5fXQ0ddnOJateWeY4L6OlzzzBmI1rHLWWJavMSj7Hh2drtsIL9PaEImKxEvLpcUK(9OGWTww1JrpFm0o97VjE6EIaX3VnaHIJOMgf28cAwHTgaY3242)01p91x)5F5UV91KeSzllyZ7z53ZSWC3Xn6SVLTK0a7qLg0pV5Hjf1Rs9mjECDHQoe5DoBz)lpxvI7r6D(IUV3j1(SyXoxx)90trgfxSJuwGJXk1Fa9E8HYSKFioxEl)agvuDyJk1s4dKjVhNRbccFGLZKSUadmFR)7UofBfi3VkwK8m)SGLw0vleQA6rgE0NyIzNz)7DS0blO2ayLlFx0X(RwGg1cOdzkKN4S4hd)f9trnjmV5cCN8gaFckHs04yTp50RDRFPkpM73Rv608i8sErLEjxPVAWAs6GrnGurikpsohLkYqG9iRuxCTB)t53iG)bNeyb19C4eNUFmibdKGafGsdK2(qW4aG0Fc8KneXb7NxYT34ENZF21(LFAsJuIEk0iuVXb2OoNcFff79oC3acIoSRMKMM8wdKJDbwU8Xx0UDLmPFGdcOpD6SUF9q0VkvQFyBBhZARSNmPjnr5wcmf8aTk3uoud0nZd(eEo4decgOK)p76DV0P5zlhzc6B20e5zI9hfKG6Okn3Z4l(o4vaVrNuKj7i0sbrhpUsxitKR9Gdp78hyMzFIhuP7EPbg6q4OTY8Pd0piscFqOHaOZ9JKbrGc20OQ3o6kSL6vALC6R9VE7o)8xAlMtpUI3ez2f37JyCdq3uoLPEGbfSErPjoi)5d)qkVbSyNnCnc2eNAWD6ZZg9fOQF5c0q8Fan1JYWEHZ9rDAndJHpZmKjFyljWKpHzHh)vx)QxU7BEJU)SlVP1ingI3evjXwx0iep1tsQ2Uf)AsB3b8UTsYVDjiN2e2EXrFYY1BBytwKQa)rVYobwZPszeoB1JQN(Fz17(2WO6gV5Vrw3A37BF2X8j05)ca3lR6fabsHnu)djWpea8qUKQeigY9kHVlBLjAWdQ2(s4LS)tJSH4Td9Jvq26KeZx5MFXHKYEjchkMtrHrdUBwUTkpvsM041yfJJWODLPVuc5yXFqymzWyzEdpl0W)6)X)gRgdZ1eko2FZyBPQTMLZ2M(LZuThMWfk7)UcI6V4)S9MwXRzwp)GjQCUqW34Wiw1rOs9UCh7HAui4L4x)Io(i)mrkyDerpEfesh1qUSYBcxCsN4JPwIM3jx9rm3JoTpQ5FYivXvBFHS)PbhDagyHHevVHNQhLt2Z6PmtvsMHLOx5ZOMwU1(aFQ0sLBUxxZOq5M8z2m8ZQ29H2(9LhluTA6JxEeX4jOSN5sI81NmudAN4Qt3uU4DXFSj4kV)XqE)Ix8Rd2WSrEhhhhMpnCb7ifLLQ7hD5o35CP2fYdOw4Pq)I)Pjv7ofx)lEToVWh29YVyYpYmkw6lKtqJWrMr2)nZ6zVRap60c5oOOkXshRMqxvw7UvfEJ7L0jkYdJt4heNOpeoX(8WO8PhmBFj)4WO49Tpm0q0z)alzyuxDRXp)iBmQrGKJJ1FyA4okms(nER6G0iQc6kApite9qpxcdXfedX4eGWhWi(Blv8qCOjCvy1GG6Ns7epgruJv9QsHcfuc25)OQ(N01efSW5nuqvHKl5qV3ht3FAvryJle6dqfL7K1)HDtXMyvIbXDXkvE(nWgzKB5x2Kg1HsphDjiOCcm)qGV2)LZtmwHqM6Z8EFdHPwLXn8B449XQsr5)Pc79d9FXEFFN9oi3DVeKRjIbpCJZ51YctzefN4pxafeVZv6(LnuHuSARiMy7vgyDboMI(jNAgjmyxdvbLezWNkYwVrzmle8yuO4m7LSZwraUDfVgTrgRCXmmYzhiVA8Jtbsl4JjL6NYADAaLnKxdyYZbxqBAR6X8vmqoDVOKfF8G9Dx8ESSoSWLUS4gMubHI2H3v0T0Zl0SLnRoRfgI3KRx6S(5JxlwET5D3YAzeuaG(eUILz(yio8HO0dC7i6JuPWUQFlWbcbTZ5a0TYzEW9aYaEqUmhTE5LBAuDElGxYWOb3ErKJMurKoVvts4NixGPToc5q)kLm9HXJ7IHLDzVA1ejz2ks6GPXTyZOPKIN(qK3)S8pgZp7AIuppE4(88wCy3iTkslVswhnaDWIhcQryitLnFzgbqtrz7)xW(o10Ck(aQp5yMvqIbLreg)ignuZoLLheVtOa(fOggDpdpFPPNBIsdp2yZS3WHfdSR9vA2zMB(XNT0(33ydp)4HxG9n1W)JaOJVxOatU3jkDGzMDQXcVitpZytU7jHcn38a6lbnV9oX4YLruQjwqfpqRqY5sLpFEbBwBqOsGUus9BDXesZwg1mpAUulBVyo80l7qVE6TbkVrRD3UE99s53Yl9YaGMyMuu0g0kFHb0(gqWDvd2AXbYH)Ui53ds(92i)EiYV3o53pc65xNw2nRBceKCPjT2SkWhTvNdQ0Y1xwOq9NwUpjwEqewZwihPlkIBtlW7hbwqYaGWZRaof0L6sYL8WjO2mRmAd3n(T3JLi2E0Ehml)YkIn7TW3vvUhW3XHEd9bXiUpNcsis7B8HsRttEno2z4VWBY)W7Ff2JEI3lraDmo6BlxP3aIKeK4cg4091ejMn)nBtpIMTUMCCEjHzDjFECCuKjQ)RfMCpnTJGlx)uITPdyV3Ncr4hsh8(UYdegOTbuLcWJO)HhEt9GOeSX1xexUHGoBGM0atuyhdbM)yRGhdZNvlNudIbfOpYG4ZD1nVj1s8PpuoTLXZm)S3Mqod4RRyhtzQH0UlrFowc5Hsrbnk4JMI8pOaDm6OCFxDQHDFYEjF2wodCm6X(fV2y(LVejHupGDk(4la(kfgmsLUWxssXgakmYLxhJ88YeGtidmeDqGn4qK5EP3bXBSEPH(ODxPrnkXaFL9A9u6adp7EbDvs3d3bLj)vIzRyWjXduFtzq7pkdGXE1PgvZULToa9OG)1ZcbBgfy0QWc2I51Uju(RygTkk9LT2OxbVE80C0bc5ye4DMkveJBCBSs8zNjuNSZMrqUjdu5Q(qUtd1EvZQvEn1esIXbzexO11WqbnAGOdJkUHPebJZworJt6ntquWf6DGEsxiowIXEKJXpOrsGkHIDYvZg8HAljskI5YbE9T9m5yJV7zhE6Xln)KtpEIwIqYwu0D5xlBYfIfHEW9ImobZFPvghMmvjDCJXXn2R2mY0YWj3klBBzEZOc89DP9OcemYGrxYW3L9Fbav)Ua6DcQ5tIQdUK1d4)HbzgUwzwomKX7LMKUmOywOc200dHlnXpnIo0qJ4a7zY5234ZgHPd2m8uHYq5w99ip1F2VdRVE0Ci05sBsrqk7f3p24OmF5tA0Y2eNqySWHtM6C9Ydr60Ra1hV4fpapc2AvT2LIajZZYNQSI7w6lEPghLODHj5gOARgRZcT4lS8IMWONP9Sg1TkxvT1yXvbYWGffj6cD2qTd7xJuHGvxX4xz689uSP5Am7UoIo9rjLgwcki2zCJAXPgD(zNISdn3uMLKIgzYqrDytIgi0R)cHleKjJ3tK2CKRldBqzC(d2fjLhEYg2nnwWjDcw6sNHa8RgLVTnkEwjecjtCuQsnyzE7L67eWwMwCrqwZE)bTyF8xmcsGgPnSi3VRTTrPY1F6YRyJAX)u)o72vWXtN5AxRM5rVEPrhEU5XXZzNFws6xzuRgGI8OR18GDFeNumlSq6utDcGguV(KvT77eiQX64PMfF(ET77E)nvOchVsvJka6rrDT2Z4tTVDV)PE12nynU(Uoig8FIWYEeJILBSsZ)QYKpppn)PTQA8R)wntdqHyJC1ur1uVuZs4RNujGlPein24PA(d0duDJflVWkLQv3YQ1s)FpSHrZHjJEZIIXx6vrhlteOV979xT7799hPbiM)F3OSn6auJgl6S0FXx5kYNe3mTSnwaim2NaHb7y3BGrip8F377FVbUxX)I7n49229gc(4)n5u(QYTDwYQ1mu3v2hqBSl7GO2yPRZ18)oJud2vBZ)YD3Y8zs933UCv0pSPMF(VYEPYvTE6)XzQvZ2W5)X36kWGc6nmaxF)V39((Ff81kEhYWk0W145gbV)cEQrqrx3a3qnKzZVxfB4t1ngbprWVko2rCm7sFLzdBhCtzK(zFZsopSFVzxUDDhtO1AcSjlaFELFW9gfqFllZfU3E676y5zi(PQ4uUoWL89G0j4TbG3wlncsUjPHvyPww1n6BeBZNXat7FFblR6q3QX4vx0yPM)nkhhPFywC4S6jqQd6e7)7vSTA3AbJkMl30QLZvGkKfidlXiv)dus139vrx8r2LFf6E5l22S61FMd06hTNfZwBGTp9SKqB)h(DHFUslcjfhyhbvC96MnO1oKyFJadzlC0V7)NUFYhCGH7(wxRZ7CLo)03ATF11(d35Lx71)OvV1R09v(WUV(nG034cFzNZ9t7CYBT2f)jmtEDJt195qi7E9l35QNgVjcU4pHIb6Lw1Q38SRERxKc8(N83F8tS(1(mkM6EMZS(1(WdmmGX1U9BtldffauD(fNO7p)sSe)SRV2TphnlaxuFi39CV6Q3(gD(8BS6nF91o9P6EPFDNl9rdK)rYxO7PEJvV9hU6npd0Q6CURr(8zHocfbKQeQG(6R778B6(gFk9Eh7pCNl23rkMVi83UV8P7CM3dp6aV5n8WWAaSar4mNHgsq0hEHvV5T6C(tTXXpb0LzNLrahda4G26x9UVhsmiLOZh8XRE3xHHs6jt4YVOlf6wRDRRS(PVow6cqP34KNTZZDX1)Y3PZl8HDoZ))TINpLD)(9mBGoRNV7wazFtzDangiolGbDVSHgb6HFXYB6PRF(q2y7CvMH6zjihXIMhipYoA4j7yvpF37hOf8YjTYNU2jajA9zZDPVyHRaK1V3faksFcldsW8Z6EPpBoDcmu65DUYNo5gbzywa3WG57HeKn7q9857zLpDd9dmsbO188M2ji3z)t4LREgGIYNtdaLcsq5t3zRpDxldKzzoCZc5JDWN218FrZ7fK8MbxEiboGMZG5ScijFagyIYw3hOYnfuegyjHebamS0qdmOoJnWadaf0JKL)8(2aqdcI8aDSpBnleK(nbTWjiJYl8rZfSzakc4ztTdGrOG0HXa1Xt2)6E6s6fyW0lBEfpTJ2EEFR8PRdy6WEH6KH4ybVuxaAaVC6R7LlAgadzE6ENm0WAu3zkqShWbARdI9amLj0aG5Shq2jOKLqC)qIuaANVS1EbQ1NSZ5dnHasUBiHraJbwuYWRRJlSwguYqzCbd3uAiwDmmxGY4UENckk1KZeu7(z(talufyb)G7weOcwskyNbTZUcc8vIbZficSIabziWwKOzuuwq2lDobAv(TOsYp5YG0lcok7WkLzkfiSnqYCBheFIcGYs6uv5NFUmwGqalj0zOgjW6qdcufKbbETW2ytLd9m4Ojyhghjb0NNwMPZfWkhazbPMXNaFIrKxI5aTxltEtqkmf8at6fJmYiZlcytaGEau0cpnbZXNaS6W8eOjMKHgBS5wyIqfNKP6zOr6zPqLDLia8d
    ]]
    -- 更新记录
    local updateTbl = {
        L["v2.2：按加价时，可以直接把出价设置为合适的价格"],
        L["v2.1：如果你的出价太低时，出价框显示为红色"],
        L["v2.0：重做进入动画；按组合键时可以发送或观察装备"],
        L["v1.9：增加一个绿色钩子，用来表示你是否已经拥有该物品"],
        L["v1.8：增加出价记录；UI缩小了一点；提高了最小加价幅度"],
        L["v1.7：增加自动出价功能"],
        L["v1.6：增加显示正在拍卖的装备类型"],
        L["v1.5：拍卖价格为100~3000的加价幅度现在为100一次"],
        -- L["v1.4：增加一个开始拍卖时的动画效果"],
        -- L["v1.3：修复有部分玩家不显示拍卖界面的问题；当你是出价最高者时的高亮效果更加显眼"],
        -- L["v1.2：现在物品分配者也可以开始拍卖装备了"],
    }
    do
        local function OnClick(self)
            if self.frame and self.frame:IsVisible() then
                self.frame:Hide()
            else
                local f = CreateFrame("Frame", nil, self, "BackdropTemplate")
                f:SetBackdrop({
                    bgFile = "Interface/ChatFrame/ChatFrameBackground",
                    insets = { left = 3, right = 3, top = 3, bottom = 3 }
                })
                f:SetBackdropColor(0, 0, 0, 1)
                f:SetBackdropBorderColor(1, 1, 1, 0.6)
                f:SetPoint("TOPLEFT", BG.MainFrame, "TOPLEFT", 0, -20)
                f:SetPoint("BOTTOMRIGHT", BG.MainFrame, "BOTTOMRIGHT", 0, 0)
                f:SetFrameLevel(310)
                f:EnableMouse(true)
                self.frame = f
                local edit = CreateFrame("EditBox", nil, f)
                edit:SetWidth(f:GetWidth())
                edit:SetAutoFocus(true)
                edit:EnableMouse(true)
                edit:SetTextInsets(5, 20, 5, 10)
                edit:SetMultiLine(true)
                edit:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
                edit:SetText(wa)
                edit:HighlightText()
                edit:SetCursorPosition(0)
                self.edit = edit
                local scroll = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate")
                scroll:SetWidth(f:GetWidth() - 10)
                scroll:SetHeight(f:GetHeight() - 10)
                scroll:SetPoint("CENTER")
                scroll.ScrollBar.scrollStep = BG.scrollStep
                BG.CreateSrollBarBackdrop(scroll.ScrollBar)
                BG.HookScrollBarShowOrHide(scroll)
                scroll:SetScrollChild(edit)
                edit:SetScript("OnEscapePressed", function()
                    f:Hide()
                end)
            end

            BG.PlaySound(1)
        end
        local function OnEnter(self)
            GameTooltip:SetOwner(self, "ANCHOR_NONE")
            GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
            GameTooltip:ClearLines()
            GameTooltip:AddLine(self:GetText(), 1, 1, 1, true)
            GameTooltip:AddDoubleLine(L["拍卖WA版本"], BGA.ver)
            GameTooltip:AddLine(" ", 1, 0, 0, true)
            GameTooltip:AddLine(L["全新的拍卖方式，不再通过传统的聊天栏来拍卖装备，而是使用新的UI来拍卖。"], 1, 0.82, 0, true)
            GameTooltip:AddLine(" ", 1, 0, 0, true)
            GameTooltip:AddLine(L["|cffFFFFFF安装WA：|r此WA是团员端，用于接收团长发出的拍卖消息，没安装的团员显示不了拍卖UI。请团长安装该WA字符串后发给团员安装。如果团员已经安装了BiaoGe插件并且版本在1.7.0或以上，可以不用安装该WA。"], 1, 0.82, 0, true)
            GameTooltip:AddLine(" ", 1, 0, 0, true)
            GameTooltip:AddLine(L["|cffFFFFFF拍卖教程：|r团长/物品分配者ALT+点击表格/背包/聊天框的装备来打开拍卖面板，填写起拍价、拍卖时长、拍卖模式即可开始拍卖。可同时拍卖多件装备。"], 1, 0.82, 0, true)
            GameTooltip:AddLine(" ", 1, 0, 0, true)
            GameTooltip:AddLine(L["更新记录："], 1, 1, 1, true)
            for i, text in ipairs(updateTbl) do
                GameTooltip:AddLine(text, 1, 0.82, 0, true)
            end
            GameTooltip:Show()
        end

        local bt = CreateFrame("Button", nil, BG.MainFrame)
        bt:SetPoint("LEFT", BG.ButtonMove, "RIGHT", BG.TopLeftButtonJianGe, 0)
        bt:SetNormalFontObject(BG.FontGreen15)
        bt:SetDisabledFontObject(BG.FontDis15)
        bt:SetHighlightFontObject(BG.FontWhite15)
        bt:SetText(L["拍卖WA"])
        bt:SetSize(bt:GetFontString():GetWidth(), 20)
        BG.SetTextHighlightTexture(bt)
        bt:SetScript("OnClick", OnClick)
        bt:SetScript("OnEnter", OnEnter)
        BG.GameTooltip_Hide(bt)
        BG.ButtonAucitonWA = bt
    end

    -- WA链接版本提醒
    local function ChangSendLink(self, even, msg, player, l, cs, t, flag, channelId, ...)
        if not _G.BGA.ver then
            return false, msg, player, l, cs, t, flag, channelId, ...
        end
        msg = msg:gsub("(%[WeakAuras:.+<BiaoGe>拍卖%s-v(%d+%.%d+)%])", function(wa, ver)
            ver = tonumber(ver)
            local myver = tonumber(_G.BGA.ver:match("v(%d+%.%d+)"))
            if ver then
                if myver and myver >= ver then
                    return wa .. "  " .. format(BG.STC_g1(L["（你当前版本是%s，无需下载）"]), _G.BGA.ver)
                else
                    return wa
                end
            end
        end)
        return false, msg, player, l, cs, t, flag, channelId, ...
    end

    ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", ChangSendLink)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", ChangSendLink)

    ------------------正在发送WA------------------
    do
        hooksecurefunc(C_ChatInfo, "SendAddonMessage", function(prefix, msg, channel, player)
            local done, total, displayName, ver = strsplit(" ", msg)
            if not (prefix == "WeakAurasProg" and displayName:find("<BiaoGe>拍卖")) then return end
            if not sending[player] then
                sending[player] = true
                sendingCount[player] = sendingCount[player] or 0
                sendingCount[player] = sendingCount[player] + 1
                if sendingCount[player] > 2 then
                    if not notShowSendingText[player] then
                        notShowSendingText[player] = true
                        BG.SendSystemMessage(format(L["由于%s多次点击WA链接，不再提示他的相关文本了。"], SetClassCFF(player)))
                    end
                else
                    BG.SendSystemMessage(format(L["%s正在接收拍卖WA。"], SetClassCFF(player)))
                end
                UpdateOnEnter(BG.ButtonRaidAuction)
                UpdateOnEnter(BG.StartAucitonFrame)
            end
            if done == total then
                sending[player] = nil
                sendDone[player] = true
                UpdateOnEnter(BG.ButtonRaidAuction)
                UpdateOnEnter(BG.StartAucitonFrame)
            end
        end)
    end
end)
