-- Make sure you do a getgenv here.

game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJump then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)