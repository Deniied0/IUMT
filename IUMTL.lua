-- LocalScript, parented to IUMT.lua

local uInputSrv      = game:GetService'UserService'
local replicatedStrg = game:GetService'ReplicatedStorage'

local remote = replicatedStrg:FindFirstChild'IUMT'

local currentint = 0;

uInputSrv.InputBegan:Connect(function(io)
    currentint=currentint+1
    remote:InvokeServer(io.keyCode,currentint)
end)

uInputSrv.InputChanged:Connect(function(io)
    currentint=currentint+1
    remote:InvokeServer(io.keyCode,currentint)
end)

while wait(1) do
    currentint=currentint+1
    remote:InvokeServer(nil,currentint)
end
