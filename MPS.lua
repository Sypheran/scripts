local Atlas = loadstring(game:HttpGet("https://siegehub.net/Atlas.lua"))()

local UI = Atlas.new({
    Name = "BeastHUB"; -- script name (required)
    ConfigFolder = "BeastHub Files"; -- folder name to save configs to, set this to nil if you want to disable configs saving
    Credit = "Made By Beastplayz1264, And Maximrespi"; -- text to appear if player presses the "i" button on their UI (optional)
    Color = Color3.fromRGB(255,0,0); -- theme color for UI (required)
    Bind = "LeftControl"; -- keybind for toggling the UI, must be a valid KeyCode name
    -- Atlas Loader:
    UseLoader = true; -- whether to use Atlas Loader or not, if set to false than CheckKey and Discord are ignored
    FullName = "Discord"; -- works2 if UseLoader is set to true, can be same as Name argument, shown on loader frame
    CheckKey = function(inputtedKey) -- works if UseLoader is set to true, where inputtedKey is the key inputted by the player
        return inputtedKey=="BeastHUB.com/key.argument"
    end;
    Discord = "https://discord.gg/xu5dDS3Pb9"; -- works if UseLoader is set to true, will be copied to clipboard if player presses "Copy Invite" button
})

local MyPage = UI:CreatePage("Main")

local MySection = MyPage:CreateSection("Reach") -- creates a section in page with the name passed. This argument is reqiured.

MySection:CreateButton({
    Name = "GK Reach"; -- required: name of element
    Callback = function() -- required: function to be called when button is pressed
      game.Players.LocalPlayer.Character["Right Arm"]:AddPropertyEmulator("Size")
      wait(0.5)
      game.Players.LocalPlayer.Character["Right Arm"].Massless = true
      game.Players.LocalPlayer.Character["Right Arm"].Size = Vector3.new (12.3, 13.11, 10.2)
      game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0.9
      wait(0000000000000000000000000000000000.1)
      game.Players.LocalPlayer.Character["Left Arm"]:AddPropertyEmulator("Size")
      wait(0.5)
      game.Players.LocalPlayer.Character["Left Arm"].Massless = true
      game.Players.LocalPlayer.Character["Left Arm"].Size = Vector3.new (12.3, 13.11, 10.2)
      game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0.9
    end
})        

MySection:CreateButton({
   Name = "Leftleg Reach"; -- required: name of element
   Callback = function() -- required: function to be called when button is pressed
      game.Players.LocalPlayer.Character["Left Leg"]:AddPropertyEmulator("Size")
      wait(0.5)
      game.Players.LocalPlayer.Character["Left Leg"].Massless = true
      game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new (12.3, 2.11, 10.2)
      game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0.9      
   end
})

MySection:CreateButton({
   Name = "RightLeg Reach"; -- required: name of element
   Callback = function() -- required: function to be called when button is pressed
       game.Players.LocalPlayer.Character["Right Leg"]:AddPropertyEmulator("Size")
       wait(0.5)
       game.Players.LocalPlayer.Character["Right Leg"].Massless = true
       game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new (12.3, 2.11, 10.2)
       game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0.9
   end
})

local MySection = MyPage:CreateSection("Important") -- creates a section in page with the name passed. This argument is reqiured.   

MySection:CreateButton({
   Name = "Anticheat Disabler (Do not use on KRNL)"; -- required: name of element
   Callback = function() -- required: function to be called when button is pressed
       if getgenv().MTAPIMutex~=nil then return end;local function a()if is_protosmasher_caller~=nil then return 0 end;if elysianexecute~=nil then return 1 end;if fullaccess~=nil then return 2 end;if Synapse~=nil then return 3 end;return 4 end;local function b()local c=a()if c==0 then return is_protosmasher_caller end;if c==1 or c==3 then return checkcaller end;if c==2 then return IsLevel7 end;return nil end;if a()==2 then error("mt-api: Exploit not supported")end;local d={}local e={}local f={}local g={}local h={}local i={}local j={}local k={}local function l()local m=a()local n=b()local o=getrawmetatable(game)if m==0 then make_writeable(o)elseif m==2 then fullaccess(o)else setreadonly(o,false)end;local p=o.__index;local q=o.__newindex;local r=o.__namecall;o.__index=newcclosure(function(s,t)if n()then return p(s,t)end;if d[s]and d[s][t]then local u=d[s][t]if u["IsCallback"]==true then return u["Value"](s)else return u["Value"]end end;if g[t]then local v=g[t]if v["IsCallback"]==true then return v["Value"](s)else return v["Value"]end end;if j[s]and j[s][t]then return k[s][t]end;return p(s,t)end)o.__newindex=newcclosure(function(w,x,y)if n()then return q(w,x,y)end;if e[w]and e[w][x]then local z=e[w][x]if z["Callback"]==nil then return else z["Callback"](w,y)return end end;if h[x]then local A=h[x]if A["Callback"]==nil then return else A["Callback"](w,y)return end end;if j[w]and j[w][x]then local B=j[w][x]if type(y)~=B["Type"]then error("bad argument #3 to '"..x.."' ("..B["Type"].." expected, got "..type(x)..")")end;k[w][x]=y;return end;return q(w,x,y)end)local C=isluau and isluau()or false;o.__namecall=newcclosure(function(D,...)local E={...}local F=C and getnamecallmethod()or table.remove(E)if n()then if F=="AddGetHook"then if#E<1 then error("mt-api: Invalid argument count")end;local G=E[1]local H=E[2]local I=E[3]if type(G)~="string"then error("mt-api: Invalid hook type")end;if not d[D]then d[D]={}end;if I==true and type(H)~="function"then error("mt-api: Invalid callback function")end;d[D][G]={Value=H,IsCallback=I}local J=function()d[D][G]=nil end;return{remove=J,Remove=J}end;if F=="AddGlobalGetHook"then local K=E[1]local L=E[2]local M=E[3]if type(K)~="string"then error("mt-api: Invalid hook type")end;if M==true and type(L)~="function"then error("mt-api: Invalid callback function")end;g[K]={Value=L,IsCallback=M}local N=function()g[K]=nil end;return{remove=N,Remove=N}end;if F=="AddSetHook"then if#E<1 then error("mt-api: Invalid argument count")end;local O=E[1]local P=E[2]if type(O)~="string"then error("mt-api: Invalid hook type")end;if not e[D]then e[D]={}end;if type(P)=="function"then e[D][O]={Callback=P}else e[D][O]={Callback=nil}end;local Q=function()e[D][O]=nil end;return{remove=Q,Remove=Q}end;if F=="AddGlobalSetHook"then if#E<1 then error("mt-api: Invalid argument count")end;local R=E[1]local S=E[2]if type(R)~="string"then error("mt-api: Invalid hook type")end;if type(S)=="function"then h[R]={Callback=S}else h[R]={Callback=nil}end;local T=function()h[R]=nil end;return{remove=T,Remove=T}end;if F=="AddCallHook"then if#E<2 then error("mt-api: Invalid argument count")end;local U=E[1]local V=E[2]if type(U)~="string"then error("mt-api: Invalid hook type")end;if type(V)~="function"then error("mt-api: Invalid argument #2 (not function)")end;if not f[D]then f[D]={}end;f[D][U]={Callback=V}local W=function()f[D][U]=nil end;return{remove=W,Remove=W}end;if F=="AddGlobalCallHook"then if#E<2 then error("mt-api: Invalid argument count")end;local X=E[1]local Y=E[2]if type(X)~="string"then error("mt-api: Invalid hook type")end;if type(Y)~="function"then error("mt-api: Invalid argument #2 (not function)")end;i[X]={Callback=Y}local Z=function()i[X]=nil end;return{remove=Z,Remove=Z}end;if F=="AddPropertyEmulator"then if#E<1 then error("mt-api: Invalid argument count")end;local _=E[1]if type(_)~="string"then error("mt-api: Invalid hook type")end;local a0=p(D,_)local a1=type(a0)if not j[D]then j[D]={}end;if not k[D]then k[D]={}end;j[D][_]={Type=a1}k[D][_]=p(D,_)local a2=function()j[D][_]=nil;k[D][_]=nil end;return{remove=a2,Remove=a2}end;return r(D,...)end;if f[D]and f[D][F]then local a3=f[D][F]return a3["Callback"](p(D,F),unpack(E))end;if i[F]then local a4=i[F]return a4["Callback"](D,p(D,F),unpack(E))end;return r(D,...)end)if m==0 then make_readonly(o)elseif m==2 then else setreadonly(o,true)end end;l()getgenv().MTAPIMutex=true
   end
})


MySection:CreateInteractable({
    Name = "Fates admin"; -- required: name of element
    ActionText = "Execute"; -- required: text in the interactable button
    Callback = function() -- function to be called when the interactable is activated
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
    end;
    -- Scroll to the bottom of the page to read more about the following two:
    Warning = "dont use any fly/speed/change stuff"; -- optional: this argument is used in all elements (except for Body) and will indicate text that will appear when the player hovers over the warning icon
    WarningIcon = 12345; -- optional: ImageAssetId for warning icon, will only be used if Warning is not nil, default is yellow warning icon.
})
