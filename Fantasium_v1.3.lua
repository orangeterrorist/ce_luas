function AOBRep(search, change)
local aob = AOBScan(search)
if aob then
  for i=0,aob.Count-1 do
    autoAssemble(aob[i]..':\ndb '..change)
  end
  aob.Destroy()
end
end
aTimer = createTimer(MainForm, false)
aTimer.Interval = aTimerInterval
aTimer.OnTimer = aTimer_tick
aTimer.Enabled = true

NepMain = createForm(true)
NepMain.Width = 200
NepMain.Height = 130
NepMain.Color=0x252526
NepMain.Caption="SRC"

Fanta = createPanel(NepMain)
Fanta.Caption="Fantasium v1.3"
Fanta.Width = 120
Fanta.Height = 20
Fanta.Font.Size=12
Fanta.Font.Color=0xe695d3
Fanta.Top = 60
Fanta.Left = 40
Fanta.BevelWidth=0

By = createPanel(NepMain)
By.Caption="made by"
By.Width = 100
By.Height = 20
By.BevelWidth=0
By.Font.Size=12
By.Font.Color=0xe695d3
By.Top = 80
By.Left = 50

Credits = createPanel(NepMain)
Credits.Caption="neptune#1995"
Credits.Width = 200
Credits.Height = 20
Credits.Font.Size=12
Credits.Font.Color=0xe695d3
Credits.Top = 100
Credits.BevelWidth=0

Inventions = createButton(NepMain)
Inventions.Left = 37.5
Inventions.Top = 15
Inventions.Width = 125
Inventions.Height = 40
Inventions.onClick = EnableInv
Inventions.Caption = 'Enable Cheat'
Inventions.Color=0xe695d3
function EnableInv()
searchV = '62 00 00 00 01 00 01 00 00 00'
replaceV = '02 00 00 00 01 01 01 00 00 00'
AOBRep(searchV,replaceV)
end