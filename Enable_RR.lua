local aTimer = nil
local aTimerInterval = 1000
local aTimerTicks = 0
local aTimerTickMax = 0
local function aTimer_tick(timer)
   if aTimerTickMax > 0 and aTimerTicks >= aTimerTickMax then
      timer.destroy()
   end
   aTimerTicks = aTimerTicks + 1
   openProcess("RecRoom.exe")
   if b == 0 or b == 255 then
      openProcess("RecRoom.exe")
   end

end
aTimer = createTimer(MainForm, false)
aTimer.Interval = aTimerInterval
aTimer.OnTimer = aTimer_tick
aTimer.Enabled = true