EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
  if IsKeyLockOn("numlock") then
    if IsMouseButtonPressed(3) then
      repeat
        --while IsMouseButtonPressed(1) do
        if IsMouseButtonPressed(1) then
          repeat
            PressMouseButton(1)
            Sleep(1)
            MoveMouseRelative(0,1)
            ReleaseMouseButton(1)
            MoveMouseRelative(0,1)
          until not IsMouseButtonPressed(1)
        else
          Sleep(1)
        end
        until not IsMouseButtonPressed(3)
      else
        Sleep(1)
    end 
  end
end
