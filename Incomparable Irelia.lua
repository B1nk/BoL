

local ZA="1.5"if myHero.charName~="Irelia"then return end
_G.UseUpdater=true
HWID=Base64Encode(tostring(os.getenv("PROCESSOR_IDENTIFIER")..
os.getenv("USERNAME")..
os.getenv("COMPUTERNAME")..
os.getenv("PROCESSOR_LEVEL")..os.getenv("PROCESSOR_REVISION")))id=250;ScriptName="IncomparableIrelia"
assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQIDAAAAJQAAAAgAAIAfAIAAAQAAAAQKAAAAVXBkYXRlV2ViAAEAAAACAAAADAAAAAQAETUAAAAGAUAAQUEAAB2BAAFGgUAAh8FAAp0BgABdgQAAjAHBAgFCAQBBggEAnUEAAhsAAAAXwAOAjMHBAgECAgBAAgABgUICAMACgAEBgwIARsNCAEcDwwaAA4AAwUMDAAGEAwBdgwACgcMDABaCAwSdQYABF4ADgIzBwQIBAgQAQAIAAYFCAgDAAoABAYMCAEbDQgBHA8MGgAOAAMFDAwABhAMAXYMAAoHDAwAWggMEnUGAAYwBxQIBQgUAnQGBAQgAgokIwAGJCICBiIyBxQKdQQABHwCAABcAAAAECAAAAHJlcXVpcmUABAcAAABzb2NrZXQABAcAAABhc3NlcnQABAQAAAB0Y3AABAgAAABjb25uZWN0AAQQAAAAYm9sLXRyYWNrZXIuY29tAAMAAAAAAABUQAQFAAAAc2VuZAAEGAAAAEdFVCAvcmVzdC9uZXdwbGF5ZXI/aWQ9AAQHAAAAJmh3aWQ9AAQNAAAAJnNjcmlwdE5hbWU9AAQHAAAAc3RyaW5nAAQFAAAAZ3N1YgAEDQAAAFteMC05QS1aYS16XQAEAQAAAAAEJQAAACBIVFRQLzEuMA0KSG9zdDogYm9sLXRyYWNrZXIuY29tDQoNCgAEGwAAAEdFVCAvcmVzdC9kZWxldGVwbGF5ZXI/aWQ9AAQCAAAAcwAEBwAAAHN0YXR1cwAECAAAAHBhcnRpYWwABAgAAAByZWNlaXZlAAQDAAAAKmEABAYAAABjbG9zZQAAAAAAAQAAAAAAEAAAAEBvYmZ1c2NhdGVkLmx1YQA1AAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAMAAAADAAAAAwAAAAMAAAAEAAAABAAAAAUAAAAFAAAABQAAAAYAAAAGAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAgAAAAHAAAABQAAAAgAAAAJAAAACQAAAAkAAAAKAAAACgAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAAMAAAACwAAAAkAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAGAAAAAgAAAGEAAAAAADUAAAACAAAAYgAAAAAANQAAAAIAAABjAAAAAAA1AAAAAgAAAGQAAAAAADUAAAADAAAAX2EAAwAAADUAAAADAAAAYWEABwAAADUAAAABAAAABQAAAF9FTlYAAQAAAAEAEAAAAEBvYmZ1c2NhdGVkLmx1YQADAAAADAAAAAIAAAAMAAAAAAAAAAEAAAAFAAAAX0VOVgA="),
nil,"bt",_ENV))()local _IQQ=true;local XpkjA=myHero.name;function OnBugsplat()
UpdateWeb(false,ScriptName,id,HWID)end;function OnUnload()
UpdateWeb(false,ScriptName,id,HWID)end
function OnTick()ComboKey=Settings.combo.comboKey
HarassKey=Settings.harass.harassKey;JungleClearKey=Settings.jungle.jungleKey
LaneClearKey=Settings.lane.laneKey;if ComboKey then Combo(Target)end
if HarassKey then Harass(Target)end;if JungleClearKey then JungleClear()end
if LaneClearKey then LaneClear()end;if Settings.ks.killSteal then KillSteal()end;Checks()end
function OnDraw()
if
not myHero.dead and not Settings.drawing.mDraw then
if SkillQ.ready and Settings.drawing.qDraw then
DrawCircle(myHero.x,myHero.y,myHero.z,SkillQ.range,RGB(Settings.drawing.qColor[2],Settings.drawing.qColor[3],Settings.drawing.qColor[4]))end
if SkillE.ready and Settings.drawing.eDraw then
DrawCircle(myHero.x,myHero.y,myHero.z,SkillE.range,RGB(Settings.drawing.eColor[2],Settings.drawing.eColor[3],Settings.drawing.eColor[4]))end
if SkillE.ready and Settings.drawing.rDraw then
DrawCircle(myHero.x,myHero.y,myHero.z,SkillR.range,RGB(Settings.drawing.rColor[2],Settings.drawing.rColor[3],Settings.drawing.rColor[4]))end;if Settings.drawing.Target and Target~=nil then
DrawCircle(Target.x,Target.y,Target.z,70,0xCE00FF)end
if Settings.drawing.myHero then
DrawCircle(myHero.x,myHero.y,myHero.z,TrueRange(),RGB(Settings.drawing.myColor[2],Settings.drawing.myColor[3],Settings.drawing.myColor[4]))end end end;if GetGame().isOver then UpdateWeb(false,ScriptName,id,HWID)
startUp=false end

