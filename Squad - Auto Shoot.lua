EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
  if IsKeyLockOn("numlock") then
    if IsMouseButtonPressed(3) then
      repeat
        if IsMouseButtonPressed(1) then
          repeat
            PressMouseButton(1)
            Sleep(5)
            ReleaseMouseButton(1)
            MoveMouseRelative(0,math.random(1, 2))
          until not IsMouseButtonPressed(1)
        else
          Sleep(2)
        end
        until not IsMouseButtonPressed(3)
      else
        Sleep(2)
    end 
  end
end
