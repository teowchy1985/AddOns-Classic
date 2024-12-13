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

local Maxb = ns.Maxb
local Maxi = ns.Maxi

local pt = print
local RealmId = GetRealmID()
local player = UnitName("player")

local AFDtbl = {
    "露露缇娅",
    "陈",
    "爱发电用户_4nNA",
    "ronaldozhou",
    "爱发电用户_fmpN",
    "爱发电用户_96Sm",
}


BG.Init(function()
    local lastBt
    local hight = 25
    -- 角色总览
    do
        local bt = CreateFrame("Button", nil, BG.MainFrame)
        bt:SetSize(20, hight)
        if lastBt then
            bt:SetPoint("RIGHT", lastBt, "LEFT", -10, 0)
        else
            bt:SetPoint("BOTTOMRIGHT", -10, 1)
        end
        bt:SetNormalFontObject(BG.FontYellow13)
        bt:SetHighlightFontObject(BG.FontWhite13)
        bt:SetText("|A:classicon-" .. string.lower(select(2, UnitClass("player"))) .. ":0:0|a" .. L["角色总览"])
        bt:SetWidth(bt:GetFontString():GetStringWidth())
        BG.ButtonRoleOverview = bt
        lastBt = bt
        bt:SetScript("OnEnter", function(self)
            BG.SetFBCD()
            BG.FBCDFrame:ClearAllPoints()
            BG.FBCDFrame:SetPoint("BOTTOMRIGHT", self, "TOPRIGHT", 0, 0)
            BG.FBCDFrame:Show()
        end)
        bt:SetScript("OnLeave", function(self)
            BG.FBCDFrame:Hide()
        end)
        bt:SetScript("OnMouseUp", function(self)
            ns.InterfaceOptionsFrame_OpenToCategory("|cff00BFFFBiaoGe|r")
            BG.MainFrame:Hide()
            BG.PlaySound(1)
        end)
    end

    -- 提交BUG
    do
        local bt = CreateFrame("Button", nil, BG.MainFrame)
        bt:SetSize(20, hight)
        if lastBt then
            bt:SetPoint("RIGHT", lastBt, "LEFT", -10, 0)
        else
            bt:SetPoint("BOTTOMRIGHT", -10, 1)
        end
        bt:SetNormalFontObject(BG.FontYellow13)
        bt:SetHighlightFontObject(BG.FontWhite13)
        bt.title = AddTexture("Interface\\AddOns\\BiaoGe\\Media\\icon\\icon") .. L["提交BUG"]
        bt.title2 = AddTexture("Interface\\AddOns\\BiaoGe\\Media\\icon\\icon") .. L["有报错！"]
        bt:SetText(bt.title)
        bt:SetWidth(bt:GetFontString():GetStringWidth())
        BG.ButtonBug = bt
        lastBt = bt

        bt:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 0, 0)
            GameTooltip:ClearLines()
            GameTooltip:AddLine(self.title, 1, 1, 1, true)
            GameTooltip:AddLine(L["邮箱："] .. "buick_hbj@163.com", 1, 0.82, 0, true)
            GameTooltip:AddLine(L["Q群："] .. "322785325", 1, 0.82, 0, true)
            GameTooltip:AddLine(L["（点击复制）"], 1, 0.82, 0, true)
            GameTooltip:Show()

            if self.hasError then
                local e = self.errors
                BiaoGeTooltip2:SetOwner(GameTooltip, "ANCHOR_TOPLEFT", 0, 0)
                BiaoGeTooltip2:ClearLines()
                BiaoGeTooltip2:AddLine(L["报错"], 1, 0, 0, true)
                BiaoGeTooltip2:AddLine(L["请你把该报错截图发给作者"], 1, 0.82, 0, true)
                BiaoGeTooltip2:AddLine(L["版本："] .. ns.ver, 1, 0.82, 0, true)
                BiaoGeTooltip2:AddLine(L["时间："] .. e.time, 1, 0.82, 0, true)
                BiaoGeTooltip2:AddLine(L["错误："] .. e.counter .. "x " .. e.message, .5, .5, .5, true)
                BiaoGeTooltip2:AddLine(L["栈："] .. e.stack, .5, .5, .5, true)
                BiaoGeTooltip2:Show()
            end
        end)
        bt:SetScript("OnLeave", function(self)
            GameTooltip:Hide()
            BiaoGeTooltip2:Hide()
        end)
        bt:SetScript("OnClick", function(self)
            BG.PlaySound(1)
            ChatEdit_ActivateChat(ChatEdit_ChooseBoxForSend())
            ChatEdit_ChooseBoxForSend():SetText("buick_hbj@163.com" .. "   " .. "322785325")
        end)
        bt:SetScript("OnShow", function(self)
            BG.After(1, function()
                if BugGrabberDB and BugGrabberDB.errors then
                    for i, e in next, BugGrabberDB.errors do
                        if BugGrabberDB.session == e.session and e.message:find("BiaoGe") then
                            self.hasError = true
                            self.errors = {
                                time = e.time,
                                message = e.message,
                                stack = e.stack,
                                locals = e.locals,
                                counter = e.counter,
                            }
                            self:SetNormalFontObject(BG.FontRed13)
                            self:SetText(self.title2)
                            self:SetScript("OnShow", nil)
                            break
                        end
                    end
                end
            end)
        end)
    end

    -- 爱发电
    do
        local bt = CreateFrame("Button", nil, BG.MainFrame)
        bt:SetSize(20, hight)
        if lastBt then
            bt:SetPoint("RIGHT", lastBt, "LEFT", -10, 0)
        else
            bt:SetPoint("BOTTOMRIGHT", -10, 1)
        end
        bt:SetNormalFontObject(BG.FontYellow13)
        bt:SetHighlightFontObject(BG.FontWhite13)
        bt:SetText(AddTexture("Interface\\AddOns\\BiaoGe\\Media\\icon\\AFD") .. L["爱发电"])
        bt:SetWidth(bt:GetFontString():GetStringWidth())
        BG.ButtonAFD = bt
        lastBt = bt

        bt:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 0, 0)
            GameTooltip:ClearLines()
            GameTooltip:AddLine(self:GetText(), 1, 1, 1, true)
            GameTooltip:AddLine(L["感谢这些玩家的支持："], 1, 1, 1, true)
            for i, name in ipairs(AFDtbl) do
                GameTooltip:AddLine(name, 1, 0.82, 0, true)
            end
            GameTooltip:AddLine(L["（点击复制网址）"], 1, 0.82, 0, true)
            GameTooltip:Show()
        end)
        bt:SetScript("OnLeave", GameTooltip_Hide)
        bt:SetScript("OnClick", function(self)
            BG.PlaySound(1)
            ChatEdit_ActivateChat(ChatEdit_ChooseBoxForSend())
            ChatEdit_ChooseBoxForSend():SetText("https://afdian.com/a/wow_biaoge")
            ChatEdit_ChooseBoxForSend():HighlightText()
        end)
    end

    -- 网易DD
    do
        local bt = CreateFrame("Button", nil, BG.MainFrame)
        bt:SetSize(20, hight)
        if lastBt then
            bt:SetPoint("RIGHT", lastBt, "LEFT", -10, 0)
        else
            bt:SetPoint("BOTTOMRIGHT", -10, 1)
        end
        bt:SetNormalFontObject(BG.FontYellow13)
        bt:SetHighlightFontObject(BG.FontWhite13)
        bt:SetText(AddTexture("Interface\\AddOns\\BiaoGe\\Media\\icon\\DD") .. L["网易DD"])
        bt:SetWidth(bt:GetFontString():GetStringWidth())
        BG.ButtonDD = bt
        lastBt = bt

        bt:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 0, 0)
            GameTooltip:ClearLines()
            GameTooltip:AddLine(self:GetText(), 1, 1, 1, true)
            GameTooltip:AddLine(L["官方插件平台"], 1, 1, 1, true)
            GameTooltip:AddLine(L["集插件管理、配置分享、云端备份、团队语音于一体。"], 1, 0.82, 0, true)
            GameTooltip:AddLine(L["你可以在这里更新BiaoGe插件。"], 1, 0.82, 0, true)
            GameTooltip:AddLine(L["（点击复制网址）"], 1, 0.82, 0, true)
            GameTooltip:Show()
        end)
        bt:SetScript("OnLeave", GameTooltip_Hide)
        bt:SetScript("OnClick", function(self)
            BG.PlaySound(1)
            ChatEdit_ActivateChat(ChatEdit_ChooseBoxForSend())
            ChatEdit_ChooseBoxForSend():SetText("https://dd.163.com/?utm_source=112231")
            ChatEdit_ChooseBoxForSend():HighlightText()
        end)
    end
end)
