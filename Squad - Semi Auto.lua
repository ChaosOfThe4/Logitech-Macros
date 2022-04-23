EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
  if IsKeyLockOn("numlock") then
    if IsMouseButtonPressed(3) then
      if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        Sleep(5)
        MoveMouseRelative(0,8)
      end
    end 
  end
end
