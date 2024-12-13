if BG.IsBlackListPlayer then return end
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
        if not f.itemFrame2.guanzhu then
            local t = f.itemFrame2:CreateFontString()
            t:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
            t:SetPoint("LEFT", f.itemFrame2.itemTypeText, "RIGHT", 2, 0)
            t:SetText(L["<关注>"])
            t:SetTextColor(RGB(BG.b1))
            f.itemFrame2.guanzhu = t
        end
        f.itemFrame2.guanzhu:Hide()
        for _, FB in ipairs(BG.GetAllFB()) do
            for b = 1, Maxb[FB] do
                for i = 1, BG.Maxi do
                    local zb = BG.Frame[FB]["boss" .. b]["zhuangbei" .. i]
                    if zb and f.itemID == GetItemID(zb:GetText()) and BiaoGe[FB]["boss" .. b]["guanzhu" .. i] then
                        f.itemFrame2.guanzhu:Show()
                        BG.After(0.5, function()
                            f.autoFrame:Show()
                        end)
                        break
                    end
                end
                if f.itemFrame2.guanzhu:IsVisible() then break end
            end
            if f.itemFrame2.guanzhu:IsVisible() then break end
        end
        -- 心愿
        if not f.itemFrame2.hope then
            local t = f.itemFrame2:CreateFontString()
            t:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
            t:SetPoint("LEFT", f.itemFrame2.guanzhu, "RIGHT", 2, 0)
            t:SetText(L["<心愿>"])
            t:SetTextColor(0, 1, 0)
            f.itemFrame2.hope = t
        end
        f.itemFrame2.hope:Hide()
        for _, FB in ipairs(BG.GetAllFB()) do
            for n = 1, HopeMaxn[FB] do
                for b = 1, HopeMaxb[FB] do
                    for i = 1, HopeMaxi do
                        local zb = BG.HopeFrame[FB]["nandu" .. n]["boss" .. b]["zhuangbei" .. i]
                        if zb and f.itemID == GetItemID(zb:GetText()) then
                            local hope = f.itemFrame2.hope
                            hope:ClearAllPoints()
                            if f.itemFrame2.guanzhu:IsVisible() then
                                hope:SetPoint("LEFT", f.itemFrame2.guanzhu, "RIGHT", 2, 0)
                            else
                                hope:SetPoint("LEFT", f.itemFrame2.itemTypeText, "RIGHT", 2, 0)
                            end
                            hope:Show()
                            BG.After(0.5, function()
                                f.autoFrame:Show()
                            end)
                            break
                        end
                    end
                    if f.itemFrame2.hope:IsVisible() then break end
                end
                if f.itemFrame2.hope:IsVisible() then break end
            end
            if f.itemFrame2.hope:IsVisible() then break end
        end
        if f.itemFrame2.guanzhu:IsVisible() or f.itemFrame2.hope:IsVisible() then
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
!WA:2!S33AZXvrwc29eBeBe6l7SSr0Fz3purTbnvnUurjjKXWy7yLKLL1GKLhjz8UlHdrvQUL1DCP6wtDVLXcA3HX0GFagB8dWaMh2GbZdBt7UBJFIJy(f4GFcDRQK0NiI9xWEozEFK5nFCV3sYa9mTJUr3kZtEYmp5jp5jpNtM5VCRpY8ps5hP8r(hBy10PQznJgtSZPhB0Tp8fnN1Q2uwnBmRXV87l20zoRgtu3X0QMDxxVSPD9QfxyAJ9783DXzBA7ynp57V3EUILTEH)ptuPITHZ)JFX1lwBwOC7WYSMtPHgE7tp8KF)SwwvbyQn1lyw345RNIbxZuXQX8fDMP(moMZB4(RFz9)(GAyN1lx0XOutYF(38q1WL3JXCdIT3N)qonm3ZEmAyV9FDd3p)SbDwOUXGnRz68NBABmtXQVqXfSDA0045)Z2nlzSpJAot1SsfZ9F9zgAGPMEMPMEGjNEss6xCiRALnj9AFy3rdda2jNAhdp2yhYUUr1QJw2URdHOgRJN)b)3kHDiJgtwR48g2DDXYqdUsLPHgrJTn8y7yR7CSt1SMBJJql)xAwBwhZ9z0BXAlu))ArY3ttZFCRYgF9VOEA1uP5TkptdGA881)1QbQQXEko7cZuPQLvJ5()TxdJ6daT8zDMSi03M7u2gvRqhKgCIPNEIXBSF6i42(FT)j)YFb8VblByp7()p9FP9v(0Dnq7ZDTwV)fB9wNBPV6A)WDFJLoZLx82Vz738sTpZnG0x5S3V1jERwh(2l9E)U2V(XBD83U9nos7xgHS91VqRRE0L)KxfYIIH2N77w6tV9I384lE7xJc8oh9VCWdT81(wkMAFSJT81U0UgaW4s35DPLHIcaQwF2HA)HN3nXV96lDNtqZcW1GMfTgXO9jo1I35gTU1nw8MNzPJEK2N)RBD(l3t(NmFH2h5Tx8oxAXBEmOv16exJ89XHocfbKQeQGU6Q97)hB)2FZYx9BADVZ(d3996AF9MVp4VU9Rl8AlEVt36e)bapl)5Nc6uR8ENC535eTFJJUYPUA7ZCRfV5TBFSZ16eFmnfS09IL(noARJ9XlENVT97Cd)6FjOMas4Xogq5GSw(QF3s37QacADYJSYbpeGBe(p(Uio6bWbTVV49(yKuskrRp9lx8EVPlkjPaTpp67Tx62xC5JEDS0fGsVYHpERx(9w((VFRx9sTo2Lx6m35hU77dnRLUZVdRVZCvan0Mfq4x5GVmqUw(ZpuRR9raXP1NE4U2xp5FkSrCXpe7i38GlEZVCP7CFOcw5uFrRRCsktr7p4slFHlJv)9(yKL5KFgDqQ9RFP2N)OanEPJ(fTo9lJiBd(iZR3tj4V)ohDP7(fT(MtadPq1S0HUf2opXjx5RohYWC(dczrjLTU1R262FgIRN0hxlF4Ve6CUuNJ9rl)k3dZF9(5tjoTVYNaCf0ruGys7Hl97VtRp81rW73F4Moaa0YEku432xHcfqsptLV0B(naIO5dn22F9fWY)eHOtTU7bB95VUld07CdcoWbG2N9iWakwcKbBX7F1wF6XbY0kVYLBDKxBP38lADvGl(4UnzAJ9SVXkFWfrUU35QRCXZbuMw370U0A64)5piqOw(GVkTEieTRsRhGV2LaC(7I1jYwsB)0bfOox5vpou0fV1h5YiW0UP0iyeO(6ulYP8cG4pZzNXzUgg2ZbcQxyWkw1CQ)3V1gMVyQ)5MfldsTkMA6PBSGNWMN))7xEWFXV4VR()DjyDw3pgSMvnJsZzyUN5CE5tvSM58OiSARFsBNInC26)MrrBJPCAyuBpoZ9F(bpYd697l3SbbKzWLbAyBaltu2(qiCOi5h07GZx0S2wFW6jq)GN8bB4bp1d6TufZAM2Zfo5bRAvS8nAywBpWYL1)vLSHVQAmyJIMLpfUaqnyfIgZvYPyvyHIF1KZ3SQJzxtoB1I22)QhmiSuGjSoZSqQl8RFWMHErdlZzH0VowwxK(8FVznOVuBwdsdURtHiFMgwvn6AquMnIhsDvfQRQZnOT5lAGP9NH1OTqIXS7YSSZCdoa8Zg4AjWAxR)b9)RouzRzSTAwR8Cp4FSRbHENZV(uqs01wF(s0)EWF5JS)QwZwSAQIavBgJA7l1Mc(0QrQx6aDLc(Nxs5HUlarAuUy6UizvHSyMvTaygXW5znAS9MZNbw1nlbi8FnmCA2OwkhRAnNVKrdmtGeKh6cZoh(JCaAZ8OLx3JMh(pztNnlw)fif3OwzALzwjvnlNuZms(bhzGuoZzuZh9UPTjVMCqA53AdCH5GSmQAB4ddGsjTC2oC2uBCtYGXf7ei4Akb9w)K87bUvPBzhOjH2noYrInsr8OaWNEBMLnYKLd)IOFyq)fLOeZ8P3zTgg7X02XOXavRIP4yhjwDjNc4fvWldhmIyY7Vb0oggo8NS5kHNSlE2Xbkx2Q2qZvSwnJQiFjvpaxIvAcSdndKVZO1QyLFsVUkwQXnSTlUhdQ2DzKIXS0AJobzma)GuR5nCaXyLQAK5LoqUuVuaRgmFUSX(bG8MqKHawUu71yHSsynGjc0zaz4aWJaDGS(C8zawUXW2amGNAtqV8fNB6DLoep3ypx6bQ6SoyjZwh(oTp6XHv)w6mFei9p9UrcdM3k35dBF6JXLhBXBDIVewaYvpSJ82HwyaYQ9h8kR8UNS1jik4rwyGIB3cE(ZTYz)w5f8RpgBbx(p8jCvC7p(wTp(v50T5yxUnOfYzUvRtCoCX0dFc6sU06dH)0VNp8TELB161pB7x91b4x(QhdGV9nFFx4zRgSBbAIrxD7(F1kh8Jw(BEL2N9psxNNIAShecMV8(amqDGWWrUo)Lx(7onOqfrTW7JkaDN3BzqhoYkOQQaSu39M8L67w(UFjxPuvLBEZPGEDQnUrkUc(jx76ixAXBF7mTEJ736KhpRBTYNghvHO0aOqpOmrRJECoIbjR2V9Dx6S3aYssdYVW4W(vok8XY)PVfgHbSecfuaGpOaa4keVNitLcUfC7e35TOaT8N8blDJxMl7FZSvQS1TUfqNm2oeOUZVPbTmbaW2TOaihr(9jPyXVdPdfHuqtkIOSYHGro62yk6qz7lFHw39eP2SiYKabh9M0ECP0K6LFgjOJ8nVjTSUZ5ytHdtmvJl(ytHf0xQHtphGogt1UKKqQh1oflfg(PV2YWuwsk2aquK7HdGRyL3(1fXbDCGIdaM2V7HGP0b4GRts1Q(oNU9h8rUDsszw6pDsmfrkpSfGcT)tVmaLW4x4Sc1TFYdqZK8jBFriJW1AHciYBFKtU4T)uroq2CvYbsbAXB9nWwkKw(LV(36NvOg(6DhVGQa2rfjbKw)OCdiR3DarkqIuC6mBwkUBkIeng4Lr6ykSucivGmUHmfsJPYEdaqLGx6shAqeDDJOreD5zeUp94ToYnyfr16w3GUVrxmswSgGC5p9Wl)j3Jvw1I38ZCHKRZsS8GB)6yNBP3(y8Zt)9NfM05od93FwyYJKHg6ii7qJBkCGs4yDbI(nN8zILmAD)xzPt(ASKOLV8v8tx2YPGeHtEn2TW7shGz5N9JW0F9ZkrsfD0xSybPlTyIfqjOBEZulgWwKGvGdYZRWHxoMHqSYzE5wx99w8MxXTnYqlw5nFB3S037ADY3KQa3I3hT40F5Ghsv)T139gHHKd1uJPDKVcumWD1PRDgqDcC5AInLCR1BIkMrbaTO31or7V(cuRGGw768hCX79MuDT8ndfADV7(Eu9cGYc8dqpdvvJHse0UDBgxI2mqIHFZ4DpKBZa6s36ROndIuUGMb8ZLoKKMbKoA9KZ)kuTpWMXLVcBZGs1fikcCTk5xfngfqp8ep5NjooWKjlc(H7EKh1(hU7rPLW)xC1X1VaO9S)aKlUV(P8tuy2aJ10yxCF5lFUvEJFxOPPbajj7)YbFzAE4hIR3ZUsV0wW3bDyq4fFJ4kWyfMi)E6fnGWKJmyM5m2FUuduT(Cfd2BeDJynmkJBfJA9a7MLOG2tUu9ggY90Wa2)RiS9Ll1teg2svBAib0(ZLA9z7IXggyD7Bcd4NqnV(SPE8u92F)(q5vV(WrsqgKU1QpG4VzHJD33eIHkdnKI0uCRhkwiWhSVswBEOPCs3XUIXPPmCgcn11qBDRzqFFKlf1ri5sHwYklBJhtG029QxeEo7lqhgMjxkI1ZyllfPsSJHlSabCN1mPnLmuGZQUFlTuyRrUzpOnRzTQA1G0Kb250SnokUeABmfJy3GQgZ6K5jYLAepsgMtgsHZYBDaUQ63mB6u5Z7Ih4ds6WFtZQQgZOPFHZr)mYHFkSmDjHH9U7ofO5)kh(eKFv2YhsF2aIvg7bAUtnXo3(wEMrNo)itnZ0Jo9ydpZe7y6rNy7ZmXZGOb9kYzU6kF0FO9zpIcS0lGL(x)t1)t1xkP)dBmh)WlD7pxfwgzYHhE7yBjnv320IGm5WBHaavR90DjcXUgDltVnaK(6PGyMBB4rhzBtd52tH(LH8Dm8atd9(XhgaPxzLF0Tm8wNCGXh2dO(eHXO8EmMY8frwGEZlPwkvC29wUHv9HC5VEPufY5()YV(uhqDbg0QrzJgbfRhIGtOy9ORue4NPIzvhdAXYdIf9))9fZkufcuu16lu(neDdEu7XnifKBHfGX4PEkyChjvzJBt3hvf0sWqt3pPfAIr0EJudolc14M1mh3QMXctxcnA5l1vyoC0)xV5Yx7sufrOQJXQ5LVMoUk(W6rmwC9sP6J2EHgBUq50tbmRcsZdD2vopikiTSyE9ReG(k4HbkykqbntvGuZSAoVQc)dlehqug1vENfV3PdlJIxmC6rSQwUNnKgHNyKARAo0Ke8yGFoqXgQHrrhdmPmP9YmqSCw1L9PHfirFArf2J8n53qVW)nIIqQPPMEGTVLbMClZm9W)VNEMToX2NgOcBaev7gUgPz0kjuVClM2H6KKuKvPKm6SUiPO89WGjO6lrC7GA6F9l0)6xvv2FN3)6pX9V(13)6pwdGJGQJfQl6MMuohAwDiNkTW8DuxPCrvGvB)8fMZ0Xiu)0nnz18UOz1z9t3clmLe)FrvG42pJqD5rTNewFymJIWYkc6P66ztv666MovN1TdkTLjnnP0k9wNxr2e)6t06x5(iW4Kkj7bawzCSFe6mz02BiUkwgiJpw21SEknw0MKBjEgFLs8(PcnbYkxvb3HInHl1jrnHXcLdqgg1E0Aylitps6xvaIGjQykzBgBV58JGXxW4g4olTZKLDDr(jK0nb0OyT9MlfSZxsyjKlfjEdC3SuVU)nxQxeuCjxkRAyOdMtaFM2Bb6taUSqpFAc8g4grMVurNjHuG2g0WcrbnZkILk0n6i0d9(N72JGnRBxVQjieOBqDo(9Wj2llkORLeusifkbcjraqekLsG8OGyd0JyQeycrgGKsSvcgDqaGZD0qpGEWPgmCueGImyQei6GmaMQrB(rDaq3HF10pktaH7qd2iC(eMh19twMQGFif(dinvI35ZBwZ2OHJQ5T5svuohfWHs5fGnOPMnvZeEGntAryf7fQcj0L4vxurhjPocNgx8QekmkMcYKnekKh8eWkJJVWZcY0j2Rih5pSb6bK)Kdm6wuiYNillxkOxxlLz9IMGam(iljS0m3LCQalinCTYPkI)FU1OYkN2vj)SySxv9PNAoRxitwj5JXzfQYWGnDCSQ90dv1OigSmK4N1ooLa0GGaCM0tpXoabvpbO1q39Yxqb7ZW12cfSppeBBfK00ygwIXYKGeE34VXS2E2AdR5jRxjOBq4vY8wvMT28Xjqg4qlAYu2vV7eMtoeMwKBCOzM2CEJg5hOcima1u0pUE4jp6AKvkYoScTSi1rehPNzIAdv1C29Mbdt7W7cQc1CIvYB9c1mAWsvrw)PMVy1Q7YSwzRxqI(bHaiC7JS4fGApDKZW4vXSDfE22QE2vIz5dlJsKzwSsQKVQ1EIcKzB2OHrnhInzOrxNuWCSQRhKqYGuqrMFbcwgUSPJuYIqVe2hY8K6Sxp45bahVqRfMH3aM5cBZYSQWRE5gSaYjUySH360WeNkWCNGFjAdZ1HkK2DL8ZbJOpnmdzBKy5f4y6ovFXPMOhrHjXEqqT59ZUfQpiT(7xjEZJNAKK1PzkI0UFaKCeIcCBGoo4muhvbEzjsmutcjwAoXSrmOOzpZ0SwDi1msltE6ET1GD4lCZD4SVeqSzlve07GgdptrVIlIXwQs7j(nhawOrOgYsfBefYqq6WoImEiE0PJNHppECji8vCXbUvyLT2GxiLewEerSS0Ouokj8cs0LcdVeD5vHGeDPGXlrxkiSsRLcaJ0z38JP05E7BTrGCYeHTgj1tMyxH0(ru8hSyISMKkOxxQoTXktmPRze1lWFTuAyesqyKdwyTum4Anxahw5h(LTUEKy(VEegNWUhRoH7OAXfMc9vEMqoGpY9wmerURIDxqmU4avDEgJf2cS1czk03j7YIwNEhiJatbiOxCWEAG1aiqp6we3uwmiaXCBQ(eJHRH7VlzB1I1K(ejkKIlsXgbN6Azv1XSoYMmbINmOgSdS9H22etoJuvffwAokSOyfEgEgwmqMGmMznd2jhSaaJGy2K(ek0KSCFwprCW)dvmqFr1CyuOYjP(bnMOQJoykyL0p7)rDvXSjmnmmJXQ1Hc(gc3IPTBMH1H6VXv5oEYfLIcmwSKK)NeT9Sr7SwqpHGb)cHnzoUqhHNraPlmv0Mt1t)XRIsNN8V06qoRxz8QHUt1ZtKZ)xs8jJSkZeLC6hwMW30I)CM7o)8O6PKKiNx2mCHwAogaDDshHslF(NG1(e2KqGhM(RJoGcU1oBg)ygf3NruZ45nPgBLYS7bnv6)Kzr4)vldHQGgDSCZCPMriEkjPqomGRlTspCsPSRJGKWm8biOBjiaaGw4UjfgMwuqU5S4QPU5RjMAJ2DWQdHilX880K(Ta3uSqntS4P06HUfPWQX(1ahlPk9gbcr7PcXD7obbUljbMtSmJ8EwsIRBn2hJBnKgwyQCVX(EUE2nwj06FJ0Fl3oJ4W2Maa6D3c5vQHrX9gRjnUe04WDMlONQH6ctgiwzqQcxU71MLUYReIucm7E95wBLkzrXiNxD1nx5xZhO4AC6gV8NXHa13Uv7Op3HeeirV4jBsbtHeT3VkF)LOiaHrBfwzubJe4i4qgefMYcYs25O7Oisv4sETkmnWnD1zA1lZbkYCl1Qvvne21eT14r0AScBqTmkqkhCHr3sg6QCWVgDlrQcT)MjhYQMtdRQA2qjE(bA2W2QrM0JIJxvkoRXJtt5XhTg5clsH7H1ROnhVWOQGcAKdoczLObhjp2bMzGQv3gmAwfhrfBTYGIszQAwBVztopQm9juOWqmu1qzNMhSaAEnZQzLtmioHmsIHauzseniWrP4Uo8U0wcqHRXv4zSOtHDGEvHUeScZuZ2WSUtM0tuJgQwPz8zlDQIr1I1TnkZRWiInhqlj3mLCmoAyGxzmU(D2BLjxTvt)O57Rs6GoaSGItiNIee(rbi6X9lGeqNjxQ5lsUkjiDnqkjSKZ4f3)ZwSAtJW20IweYDKrQ)bSCYnrfPSz2NGdldAsBepsdkxCQsE3iXh5rWv4YuXvHCsk()ytYIQVSQxoly0ZPOtt7blY76j2RbKWhkGSzJ)cGQQME8o3efYV(SDfNiLPsEFsggGaIX4TGzcvukLrvAVfKgf0k7F)76rNEwBhD4d33oz0rsm)Q219sBmzcKDugKC4dd6wIEYsSrQD6SQWeRyKU0oBUqCIabLHwK8ME6c2r0Pd3k6Uq((v1qul4MS4uKTkLnEeXkZKgDgsCWPm3tQiKzDisNz89xqiPpf9w9rSMD0Yx1N6z9(foWTfXYjd4X7P7(L0hismKjF43IhVr1IdC4cniURmGS6lGIZvGAV265XlVAtZLHbXAs0nGRk2j1lauFuvg4My1Tj(BxdYb0eYJpMhDpAIu7GXCv(iVrRuwzh3KQqJyJWXQV2O(Kx9qTKjqJqBO8Kw1ywOyQWPeCDYfJY)CEB4y3KzAOna7nXTz5h9IigVrFBHo6YZ1wbMLmYlefI1knXWO3JHlNpRPCNzPnMCvXcWpn0964iwtavQFs8Mak7oWjQzFk4vtNo7pIdBIxapEdvDY4Imoo(WfvXP9vzqKkSjo6cHe56zQiv1hTw9osZmZospZe1g3QPTbzB6smVTVjCcwN2h(0zZO4gkSJAc7SEsSztfjnQDwFv0KCvmcAnKPmZvS2EmkNKwKcRdR1kMKLNi3MPASd)g9MKjFsaBOzf5orOo0aNVmoT)(0BX0MCLgMvRMc)2KT2PKkkFzt7kQI0EDLjVd0XakAu35CrBBtzYuLs9uTtbrQ3W1uq8usbIi4MDDAI7i)Mup0h)XYoCCC1XxPD4ojd183nHRzdOsO5kCuHi1jMuM4pcLe6xu0UG1(uEnfLtvxvJrOJjzn2ZrI78JqgFp(ZlqFvjHClj4xzGxOPk9iPqxGEGQvDn0QDMeS6czLQDnNHrvxdtw2OQJWfDKRlArp0Y29jWIBKrIFt9lY6sR8s8vRJF1U6ws8uNWYyULG45x3V1neg4bOy5OsUytw0xUHJLjQlltWiMm)jP0NmuYwGNzOBlxW1mRLrLvKbDJ27cX4guwHefP2lmAOPr63JzIVFpIook6Ka8tllEEd0Qz69i9m58C)UKOkGI2C0kouWfevmz1Pms(hmjQAMEgjM9WsgH2biibTyVapjUtMJiqWcUS48SCc9Fe7NKXdR04yjRoEvbb7U(VjxQ9KlvjAGlHKUWcNe7zYLh5JhxdzP1qOQM96wryxnfPhsJIcxKllKMunLob3B26OAAQcTx8PAhjIoYR6yjibtTt8XKCvm1(N65qbTq1lZ5w4CiIJsrUOWLmbvDOorRUWwpy4wLvkK5vy30MPmEnCvG5suZttHhcEl2LfHudixbQhz5mrS1kvo)iHkd5w)oP28MO9APvkP1J52nqt6rEq4hbFHKzkk4re4p0VMCNygRq8gcMpkoezTxWL(BmPJpu2I7fslRHcliX70ovYO60tPbtRt3z0OsWrZG5sDWtKJeROY3QjQMSvRzBgoeg0iBq(5Roqem9b)G5Z8w0hTojjLNuhYNy4Er40CE617szR5Z0tb53mnamBuzqRY1D2QjSpYbh55st6nZSTM2LaupK18gtqplmYAF7gV4mkI3ajPZUwhQEWmHXPluKZBytXv3umUmbAgyIA52OW)yGQduoJP7T43MsXh6MXXZeQEYh84qzJSi)lGk6hS1tGlYyvFN9MUnmft7j63JxnCyyXD)CfhRXP3LFAFLjwnUJSc7zEKl2p0CPBMvdoKC8YJ8M3mRsoR1IwNCSTM0ojx5bas3oApUQOR)NO0)cEtalEF6P4qs3zfw8sEPdqsOloJoahoU3Usu33Ml1lLIB6DUGlcUO4pbMtpg5gPX3gj1vtVpuQhbvOjRTpVvzIA8fRzvBH5bnqsRksxwntEL8O(ij(qInTM9sC)aX6kzz104JiQdIFZMx28b0hesjGLqlEzdTo5JSjvcKYGJBvjLunw7CzLjfNRHT54i3KCBRMvZnouhw8Kj7ujAsK0tjyr(uXeogUgZMTMYF9qJXQJ5OKUg2QE141SvKxRwvoSSs(ixbpeRAcsfMW33XIzBJze3iFeglsESwWPmD24zIj(9BBAJnnx7Xrf6V5n5ocmUk3fsgEmDQAeEjozVMrzJtH99pA4R8B3lbdsReau91GtWqS)fUJK3ijnLuHpx9jeijo)ygvCO3Im1NRyME0dm5SofBOh3SC5QgAa3DOs29qNSzm(Jjrsa4lh59XnJqoJqdgxVW1f)nfYSA7wXYb4cLWZIpsoF4HOAM2Jzn7EjVZmYilebzsDrTYjl(Ce4KuUlvz2WkhnKe)lDl7BzHWCgfNJhzfoBYmrbRj3sSV7(jZNSKqVW)4kS6VUj0zl9o5YrLtWkJlxKQvRshGRq8ScJrZgwfXUkdBKywKKKACTOcJr9XTECu1z4LV5cFrs5sNntiGwvxgR(CrugJvnpKnW7ouXAoetHtFXQzDeMwlg6RjftPvhCy8WLN35oQrxh7xhoxG44jCrLNEc77yIBxYVb9rOCs94dx5uCAw0eJYz1FHoxr)vLfEHtRiiJ83gHWTOLI4UnI7ft1B1rvfqzrFot8AHy3(N7LGkO7(xdM1ie81bUzSNU4AMRkxj2Tkxjs4PkOH8t1QYjoet6K9zI)SDo2am4Jr3EOL7EgPsh2KI7CGipIlQqN0dTLUi1xkPlUtbDa9JS2xOx1(CuYHS9wRywQQhX)PiwwBFGUtt0ykZxu(XglXsQdKos9NLzSOlXynJoXdTfRzoFM6KR7Haer)DEyXchtYOkRd6DZ0rAY0bp8PWVVSsZkQzIHMUewCF3PC6sUaE)duzqzkiqideXJnXEGvpCb(XPF42JZgvDSQIwGKoebQEaAZrCm7iaRPWjEWhWQfTPG5sV6k0kuU3dauxtl8cDX9m2E471(SFt4xRlzxsa0TSPW778hrfERhHAwulJx8yiaXO2pRPTjzxurJpqVos1Bi9yJgZlKWi6MAp0jjj0Ct0Hpj0oqf88Q(9tY3iJrNez00e(hr2fLhGKbdurU)UyThp2jL(Bhx60svb2O8h9zLBpmk0fRNb6OcXpPl3QOg5nXIY7(XOA3)0)gthjrrtqBQnsfuTvlvtouXEJth5KLMeZ45URtvNPiYw2yMBR5kbGP(uFyWIvL6EqAuEK2K0WI4WTju1wubit7FqH4MVLOZhwc69YPak2aRSZDw4EDeN(HoOlR5CsTQgMJ4zQigc(9VefvTmEKI(znUVc6Lg7jVQnZFNAQ)yyU)vNj)tSr9tUH97aJ7VASH)dj743z2YpX2ZpX20xND91eug(m7kUgtuYRVQ4YvEdEWYJR9P0scpUG6nXGhxD0Kg9eIW5wetnXts6qSeEItIqJ8jtBEZTVYN068xMLek)Mf5NIPvAyzuoTImljrZRKoliUERMzkO8LfdVC(AZw(0ExI)ZS9djtfFvAOODFoDUg2rmi6h5Ymkji767m8XHp6linbujzqQMXliUZ5O0d2RqP8vfmAj)mLjIdaK0Ox3R0BMtxu2OLyJ6dwcPTDF4t(dljBJAJBk66(H45Bq9zCWRfk)yoKq3lqVQWCngCgMx7c6fEKFO57Ddr6fSIygLZHm5Kq1z16lVG(j5ft27hD6jXoKBsOVPW0ldP)1MfRA6SG)tk8m0U60lu3G(1unlr)HBod)V20SoiApxkuCsZg0CiVPTi9XUzj)VlzwR800d9(i0BSw6RkCOlRwxHdy7r6TScMPhHvfFhBysviI4KIB1NKoGtoDw9hAyxUMMAViGKmYXMnDGYTzr4ucge7U7ulEZ7S0zFJv(Gl6NyiUOGvNCV87iomln5pu7sRZJGEr330gZd9thJ0Ao0azeF3MlTh801GH0nZvhmiyGG(GVqmGpbZ1kNw8XegFODwBWc5HoCtsEpK4G(aRUZwXA4XQqgQs(tij(UzWjOrNjMK9uZ2bocwWjW8TGaVbhTNGPyNQYj54dQi6S8ftgiLuYtAfba6hHpifMKxnC8pHpDC45haNE3Lm)2fI2UUu9iEcnqxXe6s1ZnM3fZGDMoUQT0iMpSNoLXOiCJBfYlBzvC86M3B6pu7kemiuY5tMZsXl4eaZbNkq)FLVoYdPwFMqa61YqYitJyepEXEYk5DfxMFvz6aX29DsFdbLC5R9JeDh0FLs4LtWL4FqLuzry1VrETu08EEpoXe9WofwWNSkRRqjSoszvf6eHagJNJ8r8EXhJohRAFZ0jbgaVjvdE370h8A6C6JMOtsusP)mjzX(Mpa6XMQ3jFbpmi4T3415ylmxlf3YkPH6NFN3qvLxCdOlHhE1zdhTmQvmRsmubts01P(LvuewYhJHQ8NP3cfIaE9ldh6mkSET6ElGB5x3EcupMtP8QN0XDKNFOQj7bIzvh6Tkn)ter5upuhcqMX5E6VGgGP22e6PmH1JiqowofRonv4x(Nqtvl9KteQTfAIBKlysdehvsEJ)DhI6vuyRHGV1SoI7ZhHlPZnmIWF0nt5DJVOaA3)adKkVNDjOzJEX1KxvuqPGjV(p1Y1kSuDiXNISvruw3iVaf7sHnRM4I6HDS1QRZSgesUYpJuHcwQvZ(Vz15pAXws0xiQ9HVwTx81U9JNS9Klrc6ptpPL(7rVh8bc5j7tgi6xfvBmQ6fpkBI3IqHbJnZG5fcBNuY2wINa4yeA6Y26reVdxQmOa)dMq4jlSrvEVkV201Ft9luzU4tAD5)YnOP2IJKLvZw1dpi3r3X2DuRlEBPngTV4CXKRxzqbo9qhhfwg)4j8negIwwCSBcYFpZvDnnNuug6nnF1H2OfpLif9JFfRqMN8b(10DcK0DdSwTE6bsqZi8od6lgLvNW5eTdHyPxVcNUsUxLI6P3rIsnoD6l8KFHdBj7U3Gca5VFWvfHyDqWOjSqSFe7GrdrCOE4L4xy2BmSkg0A)Sm4JwREtmT4RZO3niirBLkmrocSLf8zoQxjuaVYWj2HUUBVpPAWrp9tTDOIqgXdWT3eeRyoRcXoiuXt)hd)y0b3EAFrpS4fx9fIjOdthvW6rnH1F9oMJmq6C6oqbzJbYiwHBhnmSTfXgFaCgBSfgnShaG4GeYDfnGKW3p0XQbWFQwyBkczQ8H(s)2Rmeog0Hv6ZBLZEqgzDA13li1P3(tGc7CSp(bFNunXDLwsZ1vEPRN1L9oLHHWNEj8UG4HJ0M(Rt1OOz5kK1PGAP8cZoNXS7TBYNP1utsIGufcTkjiYIYzYkXcFFHRzuLMr8fBvsQaiqELKrLskfWHBoR3EvvIKfxVqzuhM2LC6WDSrPlqXk5OQF5phImBpkzbk43Wqhp(6hh0Ye7Q0GqxplPQZJGxEyKSRkobj5hlIPxljcXC8r2x2yGM4lOtbvlVl5g)tSEYe6U7uTp9Xx8ENxL9Laaw59o5YVZj6GPHSns(UaLdlX3Ar0I5FgdLxYDnNPJH8s6opQCSVaUkP4fxSBbdkHNcDCp7YkV)R02XoxRt8XHNJZifPKJMiUfw(ydYkjJE10YtFx1PLLjtYllQq)lAo(iLgqEdOLQtahxkgzTu5nHzWOX(n9n17VXMfS)DrMS1LA9fIIlJLAUMYRnPXEmXRK4TA1GmwBNj9a1waTd0App1qK7An5CvLIsht)clrWBPos3YWgyaqV4sN8MIC8Xu5M5sosplvYSGyjNyTryv(k4)4nhkohTOFUmjqCZ7(h8crMRyPtg7PKpBhZBgYWgpr)IsCuXSkZOi9gdM3R(nTU3z)BI(1l6ps9lOKX1s29eYeZDNvfnpSGG7XylFYKFReheau7I1p5vB9PhU95(UL(0B)JNlwLFVgvHv5nURljvCdc6xHyyBgeNGrSZM6QnKj9fRA1Q6IbuB)sWmJUMvIspuHiejsgTooaBJGNdrMuoTkrWOrlyi2RvJt3wZC4MGZ26ChTbRBmQ9uZzwX5zmwG8Q7OXXQUhHcOPpe9LAakZGwfBu2nWo17sw0Lgeldoa0G2hmPbtiJFQdnNLLTXGw7hw5fpkpYocI6INoFenkjgNhd4tYqE7NL(KBt63dbckByvng98TG2lDN1XtEsei(hjxzQNFG3QHEbBPGvdDf81RE3FfhuJOOsVcgw4oV1Yh96l)kVr739ADfxtvsQ00doWqpZitoXo3E4JHve2T0nBIZy8WybVZPyH89hNot(s4dBpGjH9X((Fx7p(WAF75CpEs)Z0ddf1NqUNmkPN6tkny1fgIU9zn(BCn)mW0R(OtmulInUy8Fb86rEzK5KBTxSGHkOGRSdVaS3YNWQCC)weR5DzqXkir8OEfwBawYaJhAD)RwahYciMzkKN4OXNc)p0VKuiYtEa5On4XFEG4W9BolZXhrYSaQkvlDLJU0T)CvURT3O8xBeoNTxLoNvQ57XMzOZeupskgrpAYXturMCSOXsubbBs9hlLsT0DERW7tl4WmcZJ09qvfpkzmOM9KqxDtjNs2BNOxSj9qPpvjX8(bqLiyxIKsxDlLPS1jp(sF(30PXqqhhWaY3INltjJQ29ksrDyUCg4DXuLq66hoKky4ObLrE69y3SuM0p6Zbvt60z9(5UP)usj)NAA7ywzHTLjnP5kRvbcA2vJI1L50DvIoGVWtvVQjeT(2R3(8hn8eIbhH(oUnsE3vphcwaYrwAEN4x8T3SaEPAjjt3drlfeDZUOc37vMO9hBGjNExtm5Z8yk9Mjngn7pxkzpGdCRi9yi99XGwfGwVpjJ0aPTUrz)nNx4HMdyvmynhSXMYuNjhwkVYjyl97VtRp81)5GuF(jz8R6l6fEQvFOtM6PpbtNnZiph7jsF3kVqZCpr6AeDZp1K5CVNGTleuEHgwWdkSEul5MjtJK80PJ4LwksjgAeiWjgxqIWbp1Yx9cTFNB0(dUGe2k7WkhpLtrNM2dwSHITNyhtrXI6rARvjs(uuuAgJGyRZajskQF)YFYEC1txhYyJ5pY(FwVeOh3e2R5(F2IvBAytwNUq4ZXLDcntyPIiS2Id2h9lw8EVlmyVY78hLTlkVNPc3Zfu0Yt4krNU6Tascfup4WVVXY6xyKxO4rCxJXrPc3L5(TkBAsdxq9wZeFOkEbCPf8Im)PkiZ07edO6btV9lbK5icmXCf2Ap7Lq4QYyQQUJc87aIrsOCRRkxcu4i8VpymSVyB8mFBbY(YKY(gvhtddQfp7SEITv6ANsTpH(LCvAMLixqi4Tpf1Jl4jtpTIxpXv1J9Q05wYFtwJXQHCna)7v0oS2fcfPWRTshld)03kyRoEpuZaTCt7PeCPQMZb98kVJOX598VbKjEQF4MsmM(tLcfhraHrUKhnIcz)R3jssN3Wn0P6jpwoxrYFfKLX)M0j6j(rrokjeR9VhYsnB)Q)riok0Ug8AeR)a89qQp8q7Tvw7MKWBEJy(Y82XCqX6r5nYJhyIRwvtttMdXwfCVpCzCFyYZ(Jf7A2yFBGhxMufCjBmfL1R9LVqR7EIuBg5r0lqMRV69QohdTeyFaOLUx9L)Ut36vVu7l8AD2XmsYQZrCQJ4oIrH9H6K(wgnmI5ZTpXnqe6yiPvbcT2mWG5EWnJeTcJ1byk6dVu8o4sX(Cdj9rznBxD2XgI)PCusKPjIkYUE21CggvL3QcYpwnk5irsaFO(GhXCKHKeVhR2dDKAnTxq7HbJOUDNex(iMI5jKHn4XcmiG4HBrryS5wtCAzlXgjXiy9SQwwE4VhDe3THoj(KZBOGQdznJd9UgnD3PvfnEEqPp41KAlHGNIsfMrqkw4TJqiCe2ecrgmPbLVtI)6qpMMjma(KohJBErWBbQymgItko2h)ZWjfYmdvqhHXgIf(3ntpw3FB6XpPtpKp7OtpIajEcIEtW63kJsjkjNitpG5wEHbdDlZMqHoLmkoAaRwMFDbPQK(pJ6rDqm)lv5QeBZTsYmEMY4ss(nUMIZvzCIR3iMTi5TapwXPBcoqpUhAYkHhl9tx(lHNu9KZOsdUOEN2jVrMY98HSNzD(ao37sdN)PDpiWj2ML1E5UaYf3JPmOu0EeUE7d9(NnzrZYtAHNsgY1WEwEyWR0n)(XwBynpcEMS(prK8x54mEVko8YO0jClA6dlYo4QUoic3NYbO1fZ8yBda4XcbWqvloFDJYtBb8Jgg1cTxTWrjFpSosLK50w1jrmMScoU1(ihcCjzrFPrzUWJDVeJTQJKz7qj9)V8UE6TXjIIRQCbvXPccjGlvbHuSuiOK2ULvAPsPnPTzvtsLtGUOQkVXj2jgstm2ozx6QEGkUXreFbYfUNt7noWxa0k(KSFc49MX2zSZm(pjq4a5Gv90z888mJFZBE)7hw01zrTC4opqAE2BiGczHhZ4Wkc844GFteB2wMtzfeUmuqfVU0nqVctXIuZVRoze0Cg1XSKQ40feIVWSd6pwSZrlTW3DaQ6uTr8xwkfUA(bqgEd0JNCE52k1BDMs5kvA2i(6Jou6LkYnB1UQSYxDzLYTRgFJU8IYFdu9QnGgvRXzkx1u(IkX3S6nRu70AqdB1g6gfGuBCwvETlihCSXCq)AO487wOqHa4XGgzKdKvm04WYlmOF9BAPPB8Y87ERD)8yuU7qHmcBygrZ60jdh2GU(SqiK9aTQaPPOPh4IqircvmUPFtR(fZJxlrUUh56(KRhqU(iY1drNBWXY2CObmGKplHA5zxjkvNh60odVnqJ(SSHFNKclhNPfUI17rKusB5OceAizcia8OGFY6n6s(Veapjk3LJnd57J6Si9imFKhgIArY(FqGV2hjGQzxfEBOGBtAG7eMhuK43ZsgDGGSoFz8WzjxHkim6jO4JpIGqNJJpXAZbFwsQTacOpApKbkHK)6s6Xq2Pm)yZtf7lwJJZIUBjSrwK7FAGywLl(tI9fvzFCIjy9pqu9xyjxGzGqcOhTchkgf1wlGlItAIjuc8eKfeKGhw0ev4w5AwEvmi8FLWvoJikmHIuQi2496xtnss2BYlSn(wHXfGvzSTIOMD)2rqJku4pkgGjk04bFakI9hYSgD2ppmVshFvjNR9vwofVNM8hW0l0V9ZKc29tT3L1tvGBP1bD2UF93jLydvkQHgYlfbkNwAgohmvCnm9Ed5BQSpHyuD)YqtTFuwu6s0vZDrplLRkl3aKfj7kyW00JctR7KsQMC(VEsAJpzLODx4Layxv(40e8XMHr(6iaIqboqkMv6KixpX4esmruzsI7NK5Bsy2ymI4)rquS47(RCCMsMZqTm6lj0O2UFqqsFnICKcoHourpLggrUBpOt4gBQExTJv8vIoZjizITOAmQak(Njn1Y4vVOejn17zMiUshEp7KaPakdh3aSxIp2hg(B3eY5EHYwQvP6PYLRxvPDT6vtm38qQDIEWBDP0ZdkgXqxfwub0YLqwuyXuzKXZLMuVDBDyjLJHTJK7PI8)6yP7pkY4yjO7KJw8H9vEbWzYhon9tOdSfrfbwaSC69ZT25yOujMNsoFGCLUlwW)fkJlT8iwLMA0f1H6nixDETwxwvoMtVVoRRICrLx3VIRR(F3HC2mB2h53pRaBN)1oBwuR7(AnlBdCbVw3VlDsCTky1B9Fa6pwwi(vCksTXI)UuI3x5I8uA6YeB6owrsS5b3nEctC8voRifGIODEFdyMZWwwB44o94RStKlFo36IS78QTuKQ5CdncSCxvkzDKithL4XAbA0w0GnfZDPEZaNb5CE(U5fN0w(cYHM8krMuIKqxC3X9dNIrMnDcKRHQLmK5Rfj77ydcgZgIGKs(8AJSn166KnfBhj6C4l6gUqRepe)MJvuKEqhp)IXDAFOQ94jwD1unU1CSLJ5hdSxqMtKuAhvgvft3)qgr7QEVXEqNEJFXZAQRBR5Kz2eBp79o4Hx4gB6p4fK6QDhps3O)2ZS06dlFq(whJ7zltCF6NMb(9qxO1WdC0ZN1tZUJdYJuBWCx6Og8aulU3Eh(f7pZEIQm5Xy)rFWFUZBGBv9J3sZpHlHJuSIPLwxdKlAgzIhd9JM7ae9jUDB9X9KHE85MVVhHGpcp)3zG13sJcKJrNPyMZ4UtPCKFNP)rwJEMV3tO296iQa87oTuH9KjPO(mZ1xy2YmVfoHXGXwKTZWrb1wNGX8WX3nE8TBvAIrV53DL13FEFj9IpQoCSsSx0gmt34LUXI(p9UZPd8KtF90T2ARmZGXg44n4aY2ZngrFPH72(TKisFuNHU7E8l7yREqHILk84DM(xp7Vd
    ]]
    -- 更新记录
    local updateTbl = {
        L["v2.3：拍卖框体右上角的隐藏按钮改为折叠按钮"],
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
