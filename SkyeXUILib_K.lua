--[[
 _____ _              __   ___       _   _ _____   _     _ _     
/  ___| |             \ \ / ( )     | | | |_   _| | |   (_) |    
\ `--.| | ___   _  ___ \ V /|/ ___  | | | | | |   | |    _| |__  
 `--. \ |/ / | | |/ _ \/   \  / __| | | | | | |   | |   | | '_ \ 
/\__/ /   <| |_| |  __/ /^\ \ \__ \ | |_| |_| |_  | |___| | |_) |
\____/|_|\_\\__, |\___\/   \/ |___/  \___/ \___/  \_____/_|_.__/ 
             __/ |                                               
            |___/                                                
            
]]
local Library = {
    Colors = {
    };
    Settings = {
    }
}

TS = game:service"TweenService"
UserInputService = game:GetService("UserInputService")
local TabVariable = 0
local tabloc = 20
local zinvar = 99999

--Actual ScreenGui
local SkyeXUILib = Instance.new("ScreenGui")

SkyeXUILib.Name = "SkyeX UI Lib"
SkyeXUILib.Parent = game.CoreGui

local exploit = (pebc_execute and "ProtoSmasher" or "SynapseX")

if exploit == "SynapseX" then
    syn.protect_gui(SkyeXUILib)
elseif exploit == "ProtoSmasher" then
    get_hidden_gui(SkyeXUILib)
else
    error'Cannot protect gui.'
end

SkyeXUILib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--Tab (Use this to create more tabs)-- 

function Library:NewTab(name)
    local OptionVariable = 0
    local OrderVar = 0

    TabVariable = TabVariable + 1

    local TabContainer = Instance.new("ImageLabel")
    TabContainer.Name = tostring("SkyeX UI"..TabVariable)
    TabContainer.Parent = SkyeXUILib
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.LayoutOrder = 1
    --TabContainer.Position = UDim2.new(0, 20, 0, 20)
    TabContainer.Size = UDim2.new(0, 196, 0, 38)
    TabContainer.ZIndex = 99
    TabContainer.Image = "rbxassetid://2260429633"
    TabContainer.ImageColor3 = Color3.fromRGB(40, 40, 40)
    TabContainer.ScaleType = Enum.ScaleType.Slice
    TabContainer.SliceCenter = Rect.new(12, 12, 13, 13)

    local TabLabel = Instance.new("TextLabel")
    TabLabel.Name = "TabLabel"
    TabLabel.Parent = TabContainer
    TabLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabLabel.BackgroundTransparency = 1.000
    TabLabel.Position = UDim2.new(0.135556832, 0, 0, 0)
    TabLabel.Size = UDim2.new(0, 141, 0, 32)
    TabLabel.ZIndex = 5
    TabLabel.Font = Enum.Font.GothamBold
    TabLabel.Text = name
    TabLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabLabel.TextSize = 20.000
    TabLabel.TextWrapped = true

    local Minimize = Instance.new("ImageButton")
    Minimize.Name = "Minimize"
    Minimize.Parent = TabContainer
    Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Minimize.BackgroundTransparency = 1.000
    Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Minimize.Position = UDim2.new(0.879999995, 0, 0.300000012, 0)
    Minimize.Rotation = 90.000
    Minimize.Size = UDim2.new(0, 15, 0, 15)
    Minimize.ZIndex = 3
    Minimize.Image = "http://www.roblox.com/asset/?id=4726772330"
    Minimize.ScaleType = Enum.ScaleType.Fit
    Minimize.SliceScale = 0.300
    
    local ColorFrame = Instance.new("ImageLabel")
    ColorFrame.Name = "ColorFrame"
    ColorFrame.Parent = TabContainer
    ColorFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    ColorFrame.BorderSizePixel = 0
    ColorFrame.ClipsDescendants = true
    ColorFrame.LayoutOrder = 1
    ColorFrame.Position = UDim2.new(0, 0, 0, 34)
    ColorFrame.Size = UDim2.new(0, 196, 0, 3)
    ColorFrame.ZIndex = 99
    ColorFrame.ImageColor3 = Color3.fromRGB(45, 45, 45)
    ColorFrame.ScaleType = Enum.ScaleType.Slice
    ColorFrame.SliceCenter = Rect.new(12, 12, 13, 13)

    local IgnoreButKeep = Instance.new("ImageLabel")
    IgnoreButKeep.Name = "IgnoreButKeep"
    IgnoreButKeep.Parent = TabContainer
    IgnoreButKeep.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    IgnoreButKeep.BorderSizePixel = 0
    IgnoreButKeep.LayoutOrder = 1
    IgnoreButKeep.Position = UDim2.new(0, 0, 0, 35)
    IgnoreButKeep.Size = UDim2.new(0, 196, 0, 15)
    IgnoreButKeep.ZIndex = 2
    IgnoreButKeep.ImageColor3 = Color3.fromRGB(55, 55, 55)
    IgnoreButKeep.ScaleType = Enum.ScaleType.Slice
    IgnoreButKeep.SliceCenter = Rect.new(12, 12, 13, 13)
    IgnoreButKeep.Visible = false

    local IgnoreButKeep2 = Instance.new("ImageLabel")
    IgnoreButKeep2.Name = "IgnoreButKeep2"
    IgnoreButKeep2.Parent = TabContainer
    IgnoreButKeep2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    IgnoreButKeep2.BorderSizePixel = 0
    IgnoreButKeep2.LayoutOrder = 1
    IgnoreButKeep2.Position = UDim2.new(0, 0, 0, 20)
    IgnoreButKeep2.Size = UDim2.new(0, 196, 0, 15)
    IgnoreButKeep2.ZIndex = 2
    IgnoreButKeep2.ImageColor3 = Color3.fromRGB(40, 40, 40)
    IgnoreButKeep2.ScaleType = Enum.ScaleType.Slice
    IgnoreButKeep2.SliceCenter = Rect.new(12, 12, 13, 13)

    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint.Parent = TabContainer
    UIAspectRatioConstraint.AspectRatio = 5.300
    UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

    local OptionContainer = Instance.new("ImageLabel")
    OptionContainer.Name = "OptionContainer"
    OptionContainer.Parent = TabContainer
    OptionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    OptionContainer.BackgroundTransparency = 1.000
    OptionContainer.LayoutOrder = 2
    OptionContainer.Position = UDim2.new(0, 0, 0, 37)
    OptionContainer.Size = UDim2.new(0, 196, 0, 0)
    OptionContainer.ZIndex = 3
    OptionContainer.Image = "rbxassetid://2260429633"
    OptionContainer.ImageColor3 = Color3.fromRGB(50, 50, 50)
    OptionContainer.ScaleType = Enum.ScaleType.Slice
    OptionContainer.SliceCenter = Rect.new(12, 12, 13, 13)
    OptionContainer.ClipsDescendants = true

    local UIListLayout_3 = Instance.new("UIListLayout")
    UIListLayout_3.Parent = OptionContainer
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 1)
    
    if TabVariable <= 1 then
        TabContainer.Position = UDim2.new(0, tabloc, 0, 20)
        tabloc = tabloc + 200
    elseif TabVariable >= 2 then
        TabContainer.Position = UDim2.new(0, tabloc, 0, 20)
        tabloc = tabloc + 200
    end

    if TabVariable == 1 then
        OptionVariable = OptionVariable + 0.2
        OrderVar = OrderVar + 1

        local ContainerLabel = Instance.new("Frame")
        ContainerLabel.Name = "ContainerLabel"
        ContainerLabel.Parent = OptionContainer
        ContainerLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ContainerLabel.BorderSizePixel = 0
        ContainerLabel.LayoutOrder = OrderVar
        ContainerLabel.Position = UDim2.new(0, 0, 0, 0)
        ContainerLabel.Size = UDim2.new(0, 196, 0, 18)
        local TitleLabel = Instance.new("TextLabel")
        TitleLabel.Name = "TitleLabel"
        TitleLabel.Parent = ContainerLabel
        TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.BackgroundTransparency = 1.000
        TitleLabel.Position = UDim2.new(0, 0, 0, 1)
        TitleLabel.Size = UDim2.new(0, 194, 0, 16)
        TitleLabel.ZIndex = 2
        TitleLabel.Font = Enum.Font.GothamBold
        TitleLabel.Text = "UILib By SkyeX"
        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.TextScaled = true
        TitleLabel.TextSize = 14.000
        TitleLabel.TextWrapped = true
    end

    --Hide UI
    local hidenothide = true
    local tablocstring = tostring(tabloc)
    UserInputService.InputBegan:connect(function(inputObject, gameProcessedEvent)
        hidenothide = not hidenothide
        if inputObject.KeyCode == Enum.KeyCode.RightControl then
            if not hidenothide then --not hidden
                TS:Create(TabContainer, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Position = UDim2.new(0, -220, 0, -30)}):Play()
            elseif hidenothide then --hidden 
                TS:Create(TabContainer, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Position = UDim2.new(0, tablocstring-200, 0, 20)}):Play()
            end
        end 
    end)

    local OCMinimized = true
    Minimize.MouseButton1Click:Connect(function()
        local Debounce = false
        if OCMinimized then --minimized
            if Debounce == false then
                Debounce = true
                TS:Create(Minimize, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 270}):Play()
                TS:Create(OptionContainer, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 196, 0, OptionVariable*30)}):Play()
                IgnoreButKeep.Visible = true
                wait(0.3)
                Debounce = false
                OptionContainer.ClipsDescendants = false
                OCMinimized = false
            end
		else --not minimized
            if Debounce == false then 
                Debounce = true
                OptionContainer.ClipsDescendants = true
                TS:Create(Minimize, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Rotation = 90}):Play()
                TS:Create(OptionContainer, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 196, 0, 0)}):Play()
                wait(0.15)
                IgnoreButKeep.Visible = false
                wait(0.15)
                Debounce = false
                OCMinimized = true
            end
		end
    end)

    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        TabContainer.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    TabContainer.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = TabContainer.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    TabContainer.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    local Cheats = {}
    --DropDown (Use this to create a drop down)--
    function Cheats:Dropdown(name, dropname, options, callback)
        local content = options
        OptionVariable = OptionVariable + 1
        OrderVar = OrderVar + 1

        local ContainerDropDown = Instance.new("Frame")
        ContainerDropDown.Name = "ContainerDropDown"
        ContainerDropDown.Parent = OptionContainer
        ContainerDropDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerDropDown.BackgroundTransparency = 1.000
        ContainerDropDown.LayoutOrder = OrderVar
        ContainerDropDown.Position = UDim2.new(0, -1, 0, 112)
        ContainerDropDown.Size = UDim2.new(0, 196, 0, 28)
        ContainerDropDown.ZIndex = zinvar - 1
        zinvar = zinvar - 1
        local TitleDD = Instance.new("TextLabel")
        TitleDD.Name = "TitleDD"
        TitleDD.Parent = ContainerDropDown
        TitleDD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleDD.BackgroundTransparency = 1.000
        TitleDD.Position = UDim2.new(0.0343286954, 0, 0.0714285746, 0)
        TitleDD.Size = UDim2.new(0, 99, 0, 23)
        TitleDD.ZIndex = 2
        TitleDD.Font = Enum.Font.GothamBold
        TitleDD.Text = name
        TitleDD.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleDD.TextSize = 14.000
        TitleDD.TextWrapped = true
        TitleDD.TextXAlignment = Enum.TextXAlignment.Left
        local ContainerDrop = Instance.new("ImageLabel")
        ContainerDrop.Name = "ContainerDrop"
        ContainerDrop.Parent = ContainerDropDown
        ContainerDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerDrop.BackgroundTransparency = 1.000
        ContainerDrop.BorderColor3 = Color3.fromRGB(27, 42, 53)
        ContainerDrop.Position = UDim2.new(0, 114, 0, 2)
        ContainerDrop.Size = UDim2.new(0, 79, 0, 24)
        ContainerDrop.ZIndex = 499
        ContainerDrop.Image = "rbxassetid://3570695787"
        ContainerDrop.ImageColor3 = Color3.fromRGB(84, 81, 86)
        ContainerDrop.ImageTransparency = 1.000
        ContainerDrop.ScaleType = Enum.ScaleType.Slice
        ContainerDrop.SliceCenter = Rect.new(100, 100, 100, 100)
        ContainerDrop.SliceScale = 0.060

        local CheckboxButtonDrop = Instance.new("ImageButton")
        CheckboxButtonDrop.Name = "CheckboxButtonDrop"
        CheckboxButtonDrop.Parent = ContainerDrop
        CheckboxButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CheckboxButtonDrop.BackgroundTransparency = 1.000
        CheckboxButtonDrop.Position = UDim2.new(0, -7, 0, 0)
        CheckboxButtonDrop.Size = UDim2.new(0, 86, 0, 22)
        CheckboxButtonDrop.ZIndex = 500
        CheckboxButtonDrop.Image = "rbxassetid://3570695787"
        CheckboxButtonDrop.ImageColor3 = Color3.fromRGB(88, 88, 91)
        CheckboxButtonDrop.ScaleType = Enum.ScaleType.Slice
        CheckboxButtonDrop.SliceCenter = Rect.new(100, 100, 100, 100)
        CheckboxButtonDrop.SliceScale = 0.040
        local List = Instance.new("ScrollingFrame")
        List.Name = "List"
        List.Parent = ContainerDrop
        List.AnchorPoint = Vector2.new(1, 0)
        List.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        List.BackgroundTransparency = 1.000
        List.BorderSizePixel = 0
        List.LayoutOrder = 5
        List.Position = UDim2.new(0, 79,0, 24)
        List.ZIndex = zinvar
        List.BottomImage = ""
        List.ScrollBarThickness = 4
        List.Size = UDim2.new(0, 86, 0, 0)
        List.TopImage = ""
        List.Visible = false
        zinvar = zinvar - 1
        local ListBg = Instance.new("ImageLabel")
        ListBg.Name = "ListBg"
        ListBg.Parent = ContainerDrop
        ListBg.AnchorPoint = Vector2.new(1, 0)
        ListBg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ListBg.BackgroundTransparency = 1.000
        ListBg.BorderColor3 = Color3.fromRGB(27, 42, 53)
        ListBg.BorderSizePixel = 0
        ListBg.Position = UDim2.new(0, 79,0, 24)
        ListBg.ZIndex = zinvar
        ListBg.Image = "rbxassetid://3570695787"
        ListBg.ImageColor3 = Color3.fromRGB(50, 50, 50)
        ListBg.ImageTransparency = 0.02
        ListBg.ScaleType = Enum.ScaleType.Slice
        ListBg.Size = UDim2.new(0, 86, 0, 0)
        ListBg.SliceCenter = Rect.new(100, 100, 100, 100)
        ListBg.SliceScale = 0.060
        zinvar = zinvar - 1
        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = List
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 2)
        local UIPadding = Instance.new("UIPadding")
        UIPadding.Parent = List
        UIPadding.PaddingLeft = UDim.new(0, 2)
        local Selected = Instance.new("TextLabel")
        Selected.Name = "Selected"
        Selected.Parent = CheckboxButtonDrop
        Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Selected.BackgroundTransparency = 1.000
        Selected.Position = UDim2.new(0, 1, 0, -1)
        Selected.Size = UDim2.new(0, 82, 0, 22)
        Selected.ZIndex = 50
        Selected.Font = Enum.Font.GothamBold
        Selected.Text = dropname
        Selected.TextTransparency = 0.6
        Selected.TextColor3 = Color3.fromRGB(255, 255, 255)
        Selected.TextScaled = true
        Selected.TextSize = 12.000
        Selected.TextWrapped = true

        local Minimized = true
        for i,v in next, content do
            local TextButton = Instance.new("TextButton")
            TextButton.Parent = List
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Size = UDim2.new(1, 0, 0, 20)
            TextButton.ZIndex = 50
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextColor3 = Color3.fromRGB(216, 216, 216)
            TextButton.TextSize = 14.000
            TextButton.Text = tostring(v)
            TextButton.MouseButton1Click:Connect(function()
                callback(TextButton.Text)
                Selected.Text = TextButton.Text
                TS:Create(List, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 86,0, 0)}):Play()
                TS:Create(ListBg, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 86,0, 0)}):Play()
                wait(0.5)
                Minimized = true
                List.Visible = false
                ListBg.Visible = false
            end)
            List.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
        
            --[[if #content >= 4 then
                List.Size = UDim2.new(0, 190, 0, 80)
                ListBg.Size = UDim2.new(0, 190, 0, 80)
            elseif #content < 4 then
                List.Size = UDim2.new(0, 190, 0, 20*#content)
                ListBg.Size = UDim2.new(0, 190, 0, 20*#content)
            end--]]
            
        end
        CheckboxButtonDrop.MouseButton1Click:Connect(function()
            if Minimized == true then
                List.Visible = true
                ListBg.Visible = true
                wait(0.08)
                if #content >= 4 then
                    TS:Create(List, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 190,0, 90)}):Play()
                    TS:Create(ListBg, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 190,0, 90)}):Play()
                elseif #content < 4 then
                    TS:Create(List, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 190, 0, 22*#content)}):Play()
                    TS:Create(ListBg, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 190, 0, 22*#content)}):Play()
                end
                wait(0.5)
                Minimized = false
            else
                TS:Create(List, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 86,0, 0)}):Play()
                TS:Create(ListBg, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{Size = UDim2.new(0, 86,0, 0)}):Play()
                wait(0.3)
                Minimized = true
                List.Visible = false
                ListBg.Visible = false
            end
        end)
        List.Size = UDim2.new(0, 86,0, 0)
        ListBg.Size = UDim2.new(0, 86,0, 0)
    end

    --Toggle Button (Use this to create a Toggle Button)--
    function Cheats:Toggle(name, callback)
        OptionVariable = OptionVariable + 1
        OrderVar = OrderVar + 1
        Enabled = not Enabled

        --Begin Toggle Button--
        local ContainerToggleButton = Instance.new("Frame")
        ContainerToggleButton.Name = "ContainerToggleButton"
        ContainerToggleButton.Parent = OptionContainer
        ContainerToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerToggleButton.BackgroundTransparency = 1.000
        ContainerToggleButton.LayoutOrder = OrderVar
        ContainerToggleButton.Position = UDim2.new(0, -1, 0, 27)
        ContainerToggleButton.Size = UDim2.new(0, 196, 0, 28)
        local TitleTogButt = Instance.new("TextLabel")
        TitleTogButt.Name = "TitleTogButt"
        TitleTogButt.Parent = ContainerToggleButton
        TitleTogButt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleTogButt.BackgroundTransparency = 1.000
        TitleTogButt.Position = UDim2.new(0, 7, 0, 2)
        TitleTogButt.Size = UDim2.new(0, 133, 0, 23)
        TitleTogButt.ZIndex = 2
        TitleTogButt.Font = Enum.Font.GothamBold
        TitleTogButt.Text = name
        TitleTogButt.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleTogButt.TextSize = 14.000
        TitleTogButt.TextWrapped = false
        TitleTogButt.TextXAlignment = Enum.TextXAlignment.Left
        local Outer = Instance.new("ImageLabel")
        Outer.Name = "Outer"
        Outer.Parent = ContainerToggleButton
        Outer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Outer.BackgroundTransparency = 1.000
        Outer.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Outer.Position = UDim2.new(0, 168, 0, 3)
        Outer.Size = UDim2.new(0, 20, 0, 20)
        Outer.ZIndex = 2
        Outer.Image = "rbxassetid://3570695787"
        Outer.ImageColor3 = Color3.fromRGB(84, 81, 86)
        Outer.ScaleType = Enum.ScaleType.Slice
        Outer.SliceCenter = Rect.new(100, 100, 100, 100)
        Outer.SliceScale = 0.060
        local CheckboxButton = Instance.new("ImageButton")
        CheckboxButton.Name = "CheckboxButton"
        CheckboxButton.Parent = Outer
        CheckboxButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CheckboxButton.BackgroundTransparency = 1.000
        CheckboxButton.Position = UDim2.new(0, 190, 0, 60)
        CheckboxButton.Size = UDim2.new(0, 14, 0, 14)
        CheckboxButton.ZIndex = 2
        CheckboxButton.Image = "rbxassetid://3570695787"
        CheckboxButton.ImageColor3 = Color3.fromRGB(132, 132, 136)
        CheckboxButton.ScaleType = Enum.ScaleType.Slice
        CheckboxButton.SliceCenter = Rect.new(100, 100, 100, 100)
        CheckboxButton.SliceScale = 0.040
        local UIListLayout_2 = Instance.new("UIListLayout")
        UIListLayout_2.Parent = Outer
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
        --End Toggle Button--
        --Function for toggle goes here
        local ToggleVar2 = false
        CheckboxButton.MouseButton1Click:Connect(function()
            if ToggleVar2 then
                TS:Create(Outer, TweenInfo.new(0.1),{ImageColor3 = Color3.fromRGB(0, 0, 0)}):Play()
                TS:Create(CheckboxButton, TweenInfo.new(0.1),{ImageColor3 = Color3.fromRGB(0, 0, 0)}):Play()
                wait()
                TS:Create(Outer, TweenInfo.new(0.1),{ImageColor3 = Color3.fromRGB(84, 81, 86)}):Play()
                TS:Create(CheckboxButton, TweenInfo.new(0.1),{ImageColor3 = Color3.fromRGB(132, 132, 136)}):Play()
                wait()
                ToggleVar2 = false
            else
                TS:Create(Outer, TweenInfo.new(0.1),{ImageColor3 = Color3.fromRGB(132, 255, 130)}):Play()
                TS:Create(CheckboxButton, TweenInfo.new(0.1),{ImageColor3 = Color3.fromRGB(132, 255, 130)}):Play()
                ToggleVar2 = true
            end

            local s, e = pcall(function()
                callback(ToggleVar2)

                if not s then warn("error: "..e) end
            end) 
        end)
    end
   
    --Text Box (Use this to create a Text Box)--
    function Cheats:TextBox(name,callback)
        OptionVariable = OptionVariable + 1
        OrderVar = OrderVar + 1

        --Begin TextBox--
        local ContainerTextBox = Instance.new("Frame")
        ContainerTextBox.Name = "ContainerTextBox"
        ContainerTextBox.Parent = OptionContainer
        ContainerTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerTextBox.BackgroundTransparency = 1.000
        ContainerTextBox.LayoutOrder = OrderVar
        ContainerTextBox.Position = UDim2.new(0, -1, 0, 55)
        ContainerTextBox.Size = UDim2.new(0, 196, 0, 28)
        --Rename this for the Option Title!
        local TitleTB = Instance.new("TextLabel")
        TitleTB.Name = "TitleTB"
        TitleTB.Parent = ContainerTextBox
        TitleTB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleTB.BackgroundTransparency = 1.000
        TitleTB.Position = UDim2.new(0.0343286954, 0, 0.0714285746, 0)
        TitleTB.Size = UDim2.new(0, 100, 0, 23)
        TitleTB.ZIndex = 2
        TitleTB.Font = Enum.Font.GothamBold
        TitleTB.Text = name
        TitleTB.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleTB.TextSize = 14.000
        TitleTB.TextWrapped = true
        TitleTB.TextXAlignment = Enum.TextXAlignment.Left
        local Container = Instance.new("ImageLabel")
        Container.Name = "Container"
        Container.Parent = ContainerTextBox
        Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Container.BackgroundTransparency = 1.000
        Container.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Container.Position = UDim2.new(0, 113, 0, 2)
        Container.Size = UDim2.new(0, 75, 0, 24)
        Container.ZIndex = 2
        Container.Image = "rbxassetid://3570695787"
        Container.ImageColor3 = Color3.fromRGB(84, 81, 86)
        Container.ImageTransparency = 1.000
        Container.ScaleType = Enum.ScaleType.Slice
        Container.SliceCenter = Rect.new(100, 100, 100, 100)
        Container.SliceScale = 0.060
        local TextBox = Instance.new("TextBox")
        TextBox.Parent = Container
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.BackgroundTransparency = 1.000
        TextBox.BorderSizePixel = 0
        TextBox.Position = UDim2.new(0, -6, 0, 1)
        TextBox.Size = UDim2.new(0, 83, 0, 22)
        TextBox.ZIndex = 3
        TextBox.Font = Enum.Font.GothamBold
        TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.Text = "Type Here"
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.TextSize = 14.000
        TextBox.TextScaled = true
        TextBox.TextWrapped = true
        TextBox.TextTransparency = 0.6
        local TextBoxBG = Instance.new("ImageButton")
        TextBoxBG.Name = "TextBoxBG"
        TextBoxBG.Parent = Container
        TextBoxBG.Active = false
        TextBoxBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBoxBG.BackgroundTransparency = 1.000
        TextBoxBG.Position = UDim2.new(0, -6, 0, 1)
        TextBoxBG.Size = UDim2.new(0, 86, 0, 22)
        TextBoxBG.ZIndex = 2
        TextBoxBG.Image = "rbxassetid://3570695787"
        TextBoxBG.ImageColor3 = Color3.fromRGB(88, 88, 91)
        TextBoxBG.ScaleType = Enum.ScaleType.Slice
        TextBoxBG.SliceCenter = Rect.new(100, 100, 100, 100)
        TextBoxBG.SliceScale = 0.040

        TextBox.FocusLost:Connect(function()
            local s, e = pcall(function()
                callback(TextBox.Text)

                if not s then warn("error: "..e) end
            end)
        end)

    end

    --Slider (Use this to create a Slider)--
    function Cheats:Slider(slider_name, min, max, callback)
        OptionVariable = OptionVariable + 1
        OrderVar = OrderVar + 1

        local Dragging = false
        PreciseSliderValue = 0
        local ContainerSlider = Instance.new("Frame")
        ContainerSlider.Name = "ContainerSlider"
        ContainerSlider.Parent = OptionContainer
        ContainerSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerSlider.BackgroundTransparency = 1.000
        ContainerSlider.LayoutOrder = OrderVar
        ContainerSlider.Position = UDim2.new(0, -1, 0, 83)
        ContainerSlider.Size = UDim2.new(0, 196, 0, 28)
        local TitleSlide = Instance.new("TextLabel")
        TitleSlide.Name = "TitleSlide"
        TitleSlide.Parent = ContainerSlider
        TitleSlide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleSlide.BackgroundTransparency = 1.000
        TitleSlide.Position = UDim2.new(0.0343286954, 0, 0.157142863, 0)
        TitleSlide.Size = UDim2.new(0, 100, 0, 23)
        TitleSlide.ZIndex = 2
        TitleSlide.Font = Enum.Font.GothamBold
        TitleSlide.Text = slider_name
        TitleSlide.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleSlide.TextSize = 14.000
        TitleSlide.TextWrapped = true
        TitleSlide.TextXAlignment = Enum.TextXAlignment.Left
        --when this is active/clicked, move SlideFrame to where mouse is and update Value.
        local SliderBar = Instance.new("ImageButton")
        SliderBar.Name = "SliderBar"
        SliderBar.Parent = ContainerSlider
        SliderBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderBar.BackgroundTransparency = 1.000
        SliderBar.Position = UDim2.new(0, 112, 0, 8)
        SliderBar.Size = UDim2.new(0, 80, 0, 6)
        SliderBar.Image = "rbxassetid://3570695787"
        SliderBar.ImageColor3 = Color3.fromRGB(132, 132, 136)
        SliderBar.ScaleType = Enum.ScaleType.Slice
        SliderBar.SliceCenter = Rect.new(100, 100, 100, 100)
        SliderBar.SliceScale = 0.040
        local SlideFrame = Instance.new("ImageLabel")
        SlideFrame.Name = "SlideFrame"
        SlideFrame.Parent = SliderBar
        SlideFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SlideFrame.BackgroundTransparency = 1.000
        SlideFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
        SlideFrame.ClipsDescendants = true
        SlideFrame.Position = UDim2.new(0, 0, 0, 0)
        SlideFrame.Size = UDim2.new((min - min) / (max - min), 0, 0, 6)
        SlideFrame.ZIndex = 2
        SlideFrame.Image = "rbxassetid://3570695787"
        SlideFrame.ImageColor3 = Color3.fromRGB(84, 81, 86)
        SlideFrame.ScaleType = Enum.ScaleType.Slice
        SlideFrame.SliceCenter = Rect.new(100, 100, 100, 100)
        SlideFrame.SliceScale = 0.060
        local UISizeConstraint = Instance.new("UISizeConstraint")
        UISizeConstraint.Parent = SlideFrame
        UISizeConstraint.MaxSize = Vector2.new(84, 6)
        local SlideValue = Instance.new("TextLabel")
        SlideValue.Name = "Value"
        SlideValue.Parent = SliderBar
        SlideValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SlideValue.BackgroundTransparency = 1.000
        SlideValue.Position = UDim2.new(0, 0, 0, 5)
        SlideValue.Size = UDim2.new(0, 82, 0, 16)
        SlideValue.Font = Enum.Font.GothamBold
        SlideValue.TextColor3 = Color3.fromRGB(225, 225, 225)
        SlideValue.TextSize = 10.000
        SlideValue.Text = tostring(min or PreciseSliderValue and tonumber(string.format("%.2f", min)))
        local function Sliding(input)
            local Pos = UDim2.new(math.clamp((input.Position.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X, 0, 1), 0, 1, 0)
            TS:Create(SlideFrame, TweenInfo.new(0.10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = Pos}):Play()
            local NonSliderPreciseValue = math.floor(((Pos.X.Scale * max) / max) * (max - min) + min)
            local SliderPreciseValue = ((Pos.X.Scale * max) / max) * (max - min) + min
            local Value = (PreciseSliderValue and SliderPreciseValue or NonSliderPreciseValue)
            Value = tonumber(string.format("%.0f", Value))
            SlideValue.Text = tostring(Value)
            local s, e = pcall(function()
                callback(Value)
            end)

            if not s then warn("error: ".. e) end
        end;
        SliderBar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Dragging = true
            end
        end)
        SliderBar.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Dragging = false
            end
        end)
        SliderBar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                Sliding(input)
            end
        end)
        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                Sliding(input)
            end
        end)
    end

    --DropDown (Use this to create a Title Label)--
    function Cheats:Section(name)
        OptionVariable = OptionVariable + 0.6
        OrderVar = OrderVar + 1

        local ContainerLabel = Instance.new("Frame")
        ContainerLabel.Name = "ContainerLabel"
        ContainerLabel.Parent = OptionContainer
        ContainerLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        ContainerLabel.BorderSizePixel = 0
        ContainerLabel.LayoutOrder = OrderVar
        ContainerLabel.Position = UDim2.new(0, 0, 0, 0)
        ContainerLabel.Size = UDim2.new(0, 196, 0, 18)
        local TitleLabel = Instance.new("TextLabel")
        TitleLabel.Name = "TitleLabel"
        TitleLabel.Parent = ContainerLabel
        TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.BackgroundTransparency = 1.000
        TitleLabel.Position = UDim2.new(0, 0, 0, 1)
        TitleLabel.Size = UDim2.new(0, 194, 0, 16)
        TitleLabel.ZIndex = 2
        TitleLabel.Font = Enum.Font.GothamBold
        TitleLabel.Text = name
        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.TextScaled = true
        TitleLabel.TextSize = 14.000
        TitleLabel.TextWrapped = true
    end

    function Cheats:Button(name, callback)
        OptionVariable = OptionVariable + 1
        OrderVar = OrderVar + 1

        local ContainerButton = Instance.new("Frame")
        ContainerButton.Name = "ContainerButton"
        ContainerButton.Parent = OptionContainer
        ContainerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerButton.BackgroundTransparency = 1.000
        ContainerButton.LayoutOrder = OrderVar
        ContainerButton.Position = UDim2.new(0, -1, 0, 55)
        ContainerButton.Size = UDim2.new(0, 196, 0, 28)

        local Container = Instance.new("ImageLabel")
        Container.Name = "Container"
        Container.Parent = ContainerButton
        Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Container.BackgroundTransparency = 1.000
        Container.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Container.Position = UDim2.new(0, 7, 0, 2)
        Container.Size = UDim2.new(0, 185, 0, 24)
        Container.ZIndex = 2
        Container.Image = "rbxassetid://3570695787"
        Container.ImageColor3 = Color3.fromRGB(84, 81, 86)
        Container.ImageTransparency = 0.500
        Container.ScaleType = Enum.ScaleType.Slice
        Container.SliceCenter = Rect.new(100, 100, 100, 100)
        Container.SliceScale = 0.060

        local ButtonA = Instance.new("ImageButton")
        ButtonA.Name = "Button"
        ButtonA.Parent = Container
        ButtonA.Active = false
        ButtonA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonA.BackgroundTransparency = 1.000
        ButtonA.Position = UDim2.new(0, -3, 0, 1)
        ButtonA.Size = UDim2.new(0, 188, 0, 22)
        ButtonA.ZIndex = 2
        ButtonA.Image = "rbxassetid://3570695787"
        ButtonA.ImageColor3 = Color3.fromRGB(88, 88, 91)
        ButtonA.ScaleType = Enum.ScaleType.Slice
        ButtonA.SliceCenter = Rect.new(100, 100, 100, 100)
        ButtonA.SliceScale = 0.040

        local TitleButton = Instance.new("TextLabel")
        TitleButton.Name = "TitleButton"
        TitleButton.Parent = Container
        TitleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TitleButton.BackgroundTransparency = 1.000
        TitleButton.Position = UDim2.new(0, 0, 0, 1)
        TitleButton.Size = UDim2.new(0, 186, 0, 22)
        TitleButton.ZIndex = 3
        TitleButton.Font = Enum.Font.GothamBold
        TitleButton.Text = name
        TitleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleButton.TextSize = 14.000
        TitleButton.TextWrapped = true


        ButtonA.MouseButton1Click:Connect(function()
            delay(0, function()
                --if callback then
                    local s, e = pcall(function()
                        callback()
                    end)

                    if not s then warn("error: ".. e) end
                --end
            end)
        end)
    end



    return Cheats;
end
function RB(X) return math.acos(math.cos(X*math.pi))/math.pi end
counter = 0
spawn(function()
    while wait(0.1) do
        for i,v in pairs(game.CoreGui:WaitForChild("SkyeX UI Lib"):GetDescendants()) do
            if v.Name == "ColorFrame" then
                v.BackgroundColor3 = Color3.fromHSV(RB(counter),1,1)
            end
        end       
        counter = counter + 0.01
    end
end)
return Library;
