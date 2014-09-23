
if myHero.charName ~= "Khazix" then return end

HWID = Base64Encode(tostring(os.getenv("PROCESSOR_IDENTIFIER")..os.getenv("USERNAME")..os.getenv("COMPUTERNAME")..os.getenv("PROCESSOR_LEVEL")..os.getenv("PROCESSOR_REVISION")))
id = 250

ScriptName = "IncomparableKhazix"

assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQIDAAAAJQAAAAgAAIAfAIAAAQAAAAQKAAAAVXBkYXRlV2ViAAEAAAACAAAADAAAAAQAETUAAAAGAUAAQUEAAB2BAAFGgUAAh8FAAp0BgABdgQAAjAHBAgFCAQBBggEAnUEAAhsAAAAXwAOAjMHBAgECAgBAAgABgUICAMACgAEBgwIARsNCAEcDwwaAA4AAwUMDAAGEAwBdgwACgcMDABaCAwSdQYABF4ADgIzBwQIBAgQAQAIAAYFCAgDAAoABAYMCAEbDQgBHA8MGgAOAAMFDAwABhAMAXYMAAoHDAwAWggMEnUGAAYwBxQIBQgUAnQGBAQgAgokIwAGJCICBiIyBxQKdQQABHwCAABcAAAAECAAAAHJlcXVpcmUABAcAAABzb2NrZXQABAcAAABhc3NlcnQABAQAAAB0Y3AABAgAAABjb25uZWN0AAQQAAAAYm9sLXRyYWNrZXIuY29tAAMAAAAAAABUQAQFAAAAc2VuZAAEGAAAAEdFVCAvcmVzdC9uZXdwbGF5ZXI/aWQ9AAQHAAAAJmh3aWQ9AAQNAAAAJnNjcmlwdE5hbWU9AAQHAAAAc3RyaW5nAAQFAAAAZ3N1YgAEDQAAAFteMC05QS1aYS16XQAEAQAAAAAEJQAAACBIVFRQLzEuMA0KSG9zdDogYm9sLXRyYWNrZXIuY29tDQoNCgAEGwAAAEdFVCAvcmVzdC9kZWxldGVwbGF5ZXI/aWQ9AAQCAAAAcwAEBwAAAHN0YXR1cwAECAAAAHBhcnRpYWwABAgAAAByZWNlaXZlAAQDAAAAKmEABAYAAABjbG9zZQAAAAAAAQAAAAAAEAAAAEBvYmZ1c2NhdGVkLmx1YQA1AAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAMAAAADAAAAAwAAAAMAAAAEAAAABAAAAAUAAAAFAAAABQAAAAYAAAAGAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAgAAAAHAAAABQAAAAgAAAAJAAAACQAAAAkAAAAKAAAACgAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAAMAAAACwAAAAkAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAGAAAAAgAAAGEAAAAAADUAAAACAAAAYgAAAAAANQAAAAIAAABjAAAAAAA1AAAAAgAAAGQAAAAAADUAAAADAAAAX2EAAwAAADUAAAADAAAAYWEABwAAADUAAAABAAAABQAAAF9FTlYAAQAAAAEAEAAAAEBvYmZ1c2NhdGVkLmx1YQADAAAADAAAAAIAAAAMAAAAAAAAAAEAAAAFAAAAX0VOVgA="), nil, "bt", _ENV))()

local piece=myHero.name

ScriptName = "IncomparableKhazix"

local AUTOUPDATE = false
local version = 1.0
local SCRIPT_NAME = "IncomparableKhazix"
local SOURCELIB_URL = "https://raw.github.com/TheRealSource/public/master/common/SourceLib.lua"

local SOURCELIB_PATH = LIB_PATH.."SourceLib.lua"

local piece=myHero.name

local prodstatus = false

function KD()
	if os.clock() < KD_nexttick then return end
	KD_nexttick = os.clock()+0.2
	
	for _,enemy in pairs(GetEnemyHeroes()) do
		if ValidTarget(enemy) then
			local Pd	= getDmg("P", enemy, myHero)
			local Qd 	= Q:IsReady() and getDmg("Q",enemy,myHero)
			local Wd 	= W:IsReady() and getDmg("W",enemy,myHero)
			local Ed 	= E:IsReady() and getDmg("E",enemy,myHero)
			local Rd    = R:IsReady() and (Pd*(Re and 3 or 2))
			local HP 	= enemy.health - (P_ON and Pd or 0) - getDmg("AD",enemy,myHero)
			if Qd and HP <= Qd then
				KILLTEXTS:SET_TEXT(enemy,"Q KILL")
			elseif Wd and HP <= Wd then
				KILLTEXTS:SET_TEXT(enemy,"W KILL")
			elseif Ed and HP <= Ed then		
				KILLTEXTS:SET_TEXT(enemy,"E KILL") 
			elseif (Qd and Wd) and HP <= Qd+Wd then
				KILLTEXTS:SET_TEXT(enemy,"Q+W KILL")
			elseif (Qd and Ed) and HP <= Qd+Ed then
				KILLTEXTS:SET_TEXT(enemy,"Q+E KILL")
			elseif (Wd and Ed) and HP <= Wd+Ed then
				KILLTEXTS:SET_TEXT(enemy,"W+E KILL")
			elseif (Qd and Wd and Ed and Rd) and HP <= Qd+Wd+Ed then
				KILLTEXTS:SET_TEXT(enemy,"Q+W+E KILL")
			elseif (Qd and Wd ) and HP <= Qd+Wd+Qd then
				KILLTEXTS:SET_TEXT(enemy,"2Q+W KILL")
			elseif (Qd and Wd and Ed) and HP <= Qd+Qd+Wd+Ed then
				KILLTEXTS:SET_TEXT(enemy,"2Q+W+E KILL")
			elseif (Qd and Wd and Ed and Rd) and HP <= Qd+Wd+Ed+Rd then
				KILLTEXTS:SET_TEXT(enemy,"Q+W+E+R KILL")
			elseif (Qd and Wd and Ed and Rd) and HP <= Qd+Wd+Ed+Rd+Qd then
				KILLTEXTS:SET_TEXT(enemy,"2Q+W+E+R KILL")
			else
				local totaldmg = (Qd and Qd or 0)+(Wd and Wd or 0)+(Ed and Ed or 0)+(Rd and Rd or 0)
				local remain=HP-totaldmg
				KILLTEXTS:SET_TEXT(enemy,string.format("%d",remain))
			end
		end
	end
end

function OnBugsplat()
	UpdateWeb(false, ScriptName, id, HWID)
end

function OnUnload()
	UpdateWeb(false, ScriptName, id, HWID)
end

function Gameover()
	if GetGame().isOver then
		UpdateWeb(false, ScriptName, id, HWID)
		startUp = false;
	end
end
