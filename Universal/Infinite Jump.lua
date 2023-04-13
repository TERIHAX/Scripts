-- Make sure you do a getgenv here.
-- To disable inf jump, just re-execute/run this script.
getgenv().infiniteJump = not getgenv().infiniteJump;

game:GetService('UserInputService').JumpRequest:connect(function()
    if getgenv().infiniteJump then
		game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState('Jumping')
	end
end)
