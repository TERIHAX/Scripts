-- Make sure you do a getgenv here.
getgenv().InfiniteJump = true

game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJump then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
