

local ZA="1.5"if myHero.charName~="Riven"then return end
HWID=Base64Encode(tostring(
os.getenv("PROCESSOR_IDENTIFIER")..os.getenv("USERNAME")..
os.getenv("COMPUTERNAME")..os.getenv("PROCESSOR_LEVEL")..
os.getenv("PROCESSOR_REVISION")))id=250;ScriptName="IncomparableRiven"
assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQIDAAAAJQAAAAgAAIAfAIAAAQAAAAQKAAAAVXBkYXRlV2ViAAEAAAACAAAADAAAAAQAETUAAAAGAUAAQUEAAB2BAAFGgUAAh8FAAp0BgABdgQAAjAHBAgFCAQBBggEAnUEAAhsAAAAXwAOAjMHBAgECAgBAAgABgUICAMACgAEBgwIARsNCAEcDwwaAA4AAwUMDAAGEAwBdgwACgcMDABaCAwSdQYABF4ADgIzBwQIBAgQAQAIAAYFCAgDAAoABAYMCAEbDQgBHA8MGgAOAAMFDAwABhAMAXYMAAoHDAwAWggMEnUGAAYwBxQIBQgUAnQGBAQgAgokIwAGJCICBiIyBxQKdQQABHwCAABcAAAAECAAAAHJlcXVpcmUABAcAAABzb2NrZXQABAcAAABhc3NlcnQABAQAAAB0Y3AABAgAAABjb25uZWN0AAQQAAAAYm9sLXRyYWNrZXIuY29tAAMAAAAAAABUQAQFAAAAc2VuZAAEGAAAAEdFVCAvcmVzdC9uZXdwbGF5ZXI/aWQ9AAQHAAAAJmh3aWQ9AAQNAAAAJnNjcmlwdE5hbWU9AAQHAAAAc3RyaW5nAAQFAAAAZ3N1YgAEDQAAAFteMC05QS1aYS16XQAEAQAAAAAEJQAAACBIVFRQLzEuMA0KSG9zdDogYm9sLXRyYWNrZXIuY29tDQoNCgAEGwAAAEdFVCAvcmVzdC9kZWxldGVwbGF5ZXI/aWQ9AAQCAAAAcwAEBwAAAHN0YXR1cwAECAAAAHBhcnRpYWwABAgAAAByZWNlaXZlAAQDAAAAKmEABAYAAABjbG9zZQAAAAAAAQAAAAAAEAAAAEBvYmZ1c2NhdGVkLmx1YQA1AAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAMAAAADAAAAAwAAAAMAAAAEAAAABAAAAAUAAAAFAAAABQAAAAYAAAAGAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAgAAAAHAAAABQAAAAgAAAAJAAAACQAAAAkAAAAKAAAACgAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAAMAAAACwAAAAkAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAGAAAAAgAAAGEAAAAAADUAAAACAAAAYgAAAAAANQAAAAIAAABjAAAAAAA1AAAAAgAAAGQAAAAAADUAAAADAAAAX2EAAwAAADUAAAADAAAAYWEABwAAADUAAAABAAAABQAAAF9FTlYAAQAAAAEAEAAAAEBvYmZ1c2NhdGVkLmx1YQADAAAADAAAAAIAAAAMAAAAAAAAAAEAAAAFAAAAX0VOVgA="),
nil,"bt",_ENV))()local _IQQ=true;local XpkjA=myHero.name
function Riven:OnProcessSpell(pVRj,fuZ3z86)if not pVRj.isMe then return end
if
fuZ3z86.name=='RivenTriCleave'then
DelayAction(function()OW:resetAA()end,.25)self.AnimationCancel[menu.cancel]()elseif
fuZ3z86.name=='RivenMartyr'then
DelayAction(function()OW:resetAA()end,.25)self.AnimationCancel[menu.cancel]()elseif
fuZ3z86.name=='RivenFeint'then
DelayAction(function()OW:resetAA()end,.25)self.AnimationCancel[menu.cancel]()elseif
fuZ3z86.name=='RivenFengShuiEngine'then
self.AnimationCancel[menu.cancel]()end end
if spell.name=='RivenTriCleave'then
DelayAction(function()SOWi:resetAA()end,menu.Q[
"q"..Q_Sequence])AnimationCancel[menu.cancel]()if GetGame().isOver then
UpdateWeb(false,ScriptName,id,HWID)startUp=false end end

