EnablePrimaryMouseButtonEvents(true)


 function Jitter()
       PressAndReleaseMouseButton(1)
       Sleep(10)
       PressAndReleaseKey("r")
       Sleep(20)
       PressAndReleaseKey("1")
       Sleep(20)
       PressAndReleaseKey("2")
       Sleep(20)
       MoveMouseRelative(0,4)
 end

function OnEvent(event, arg)
  if IsKeyLockOn("numlock") then
    if IsMouseButtonPressed(3) then
      repeat
        if IsMouseButtonPressed(4)  then				--Jitter
		        seconds=GetRunningTime()
			      seconds1= seconds/1000	

		      Jitter()	
    		until not IsMouseButtonPressed(3)
      end
    end 
  end
end
