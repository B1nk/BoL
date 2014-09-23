
if myHero.charName ~= "Leblanc" then return end

HWID = Base64Encode(tostring(os.getenv("PROCESSOR_IDENTIFIER")..os.getenv("USERNAME")..os.getenv("COMPUTERNAME")..os.getenv("PROCESSOR_LEVEL")..os.getenv("PROCESSOR_REVISION")))

id = 250

ScriptName = "IncomparableYasuo"

assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQIDAAAAJQAAAAgAAIAfAIAAAQAAAAQKAAAAVXBkYXRlV2ViAAEAAAACAAAADAAAAAQAETUAAAAGAUAAQUEAAB2BAAFGgUAAh8FAAp0BgABdgQAAjAHBAgFCAQBBggEAnUEAAhsAAAAXwAOAjMHBAgECAgBAAgABgUICAMACgAEBgwIARsNCAEcDwwaAA4AAwUMDAAGEAwBdgwACgcMDABaCAwSdQYABF4ADgIzBwQIBAgQAQAIAAYFCAgDAAoABAYMCAEbDQgBHA8MGgAOAAMFDAwABhAMAXYMAAoHDAwAWggMEnUGAAYwBxQIBQgUAnQGBAQgAgokIwAGJCICBiIyBxQKdQQABHwCAABcAAAAECAAAAHJlcXVpcmUABAcAAABzb2NrZXQABAcAAABhc3NlcnQABAQAAAB0Y3AABAgAAABjb25uZWN0AAQQAAAAYm9sLXRyYWNrZXIuY29tAAMAAAAAAABUQAQFAAAAc2VuZAAEGAAAAEdFVCAvcmVzdC9uZXdwbGF5ZXI/aWQ9AAQHAAAAJmh3aWQ9AAQNAAAAJnNjcmlwdE5hbWU9AAQHAAAAc3RyaW5nAAQFAAAAZ3N1YgAEDQAAAFteMC05QS1aYS16XQAEAQAAAAAEJQAAACBIVFRQLzEuMA0KSG9zdDogYm9sLXRyYWNrZXIuY29tDQoNCgAEGwAAAEdFVCAvcmVzdC9kZWxldGVwbGF5ZXI/aWQ9AAQCAAAAcwAEBwAAAHN0YXR1cwAECAAAAHBhcnRpYWwABAgAAAByZWNlaXZlAAQDAAAAKmEABAYAAABjbG9zZQAAAAAAAQAAAAAAEAAAAEBvYmZ1c2NhdGVkLmx1YQA1AAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAMAAAADAAAAAwAAAAMAAAAEAAAABAAAAAUAAAAFAAAABQAAAAYAAAAGAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAgAAAAHAAAABQAAAAgAAAAJAAAACQAAAAkAAAAKAAAACgAAAAsAAAALAAAACwAAAAsAAAALAAAACwAAAAsAAAAMAAAACwAAAAkAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAGAAAAAgAAAGEAAAAAADUAAAACAAAAYgAAAAAANQAAAAIAAABjAAAAAAA1AAAAAgAAAGQAAAAAADUAAAADAAAAX2EAAwAAADUAAAADAAAAYWEABwAAADUAAAABAAAABQAAAF9FTlYAAQAAAAEAEAAAAEBvYmZ1c2NhdGVkLmx1YQADAAAADAAAAAIAAAAMAAAAAAAAAAEAAAAFAAAAX0VOVgA="), nil, "bt", _ENV))()

local AUTOUPDATE = false

local version = 1.1

local piece=myHero.name

function CanDoCombo(i)
        spells={_Q,_W,_E,_R,GetInventorySlotItem(3128),igniteSlot}
        if comboReq[i].a==1 and not(SpellReady(spells[1])) then return 0 end
        if comboReq[i].b==1 and not(SpellReady(spells[2])) then return 0 end
        if comboReq[i].c==1 and not(SpellReady(spells[3])) then return 0 end
        if comboReq[i].d==1 and not(SpellReady(spells[4])) then return 0 end
        if comboReq[i].e==1 and not(SpellReady(spells[5])) then return 0 end
        if comboReq[i].f==1 and not(SpellReady(spells[6])) then return 0 end
        return 1
end
 
function PacketCast(n)
        if n==1 then
        DelayAction(Packet("S_CAST", {spellId = _Q, fromX = myHero.x, fromY = myHero.z, toX = targetino.x, toY = targetino.z}):send(),100)
        elseif n==2 then
        DelayAction(Packet("S_CAST", {spellId = _R, fromX = myHero.x, fromY = myHero.z, toX = targetino.x, toY = targetino.z}):send(),100)
        end
end
 
function DmgCalculation(enemy)
                local pdamage = 0
                local qdamage = getDmg("Q",enemy,myHero) --Initial or mark
                local wdamage = getDmg("W",enemy,myHero)
                local edamage = getDmg("E",enemy,myHero) --Initial or Delayed
                local rdamage = getDmg("R",enemy,myHero) -- RQ (MAYBE BUGGED)
                local hitdamage = getDmg("AD",enemy,myHero)
                local dfgdamage = (GetInventorySlotItem(3128) and getDmg("DFG",enemy,myHero) or 0)
                local ignitedamage = (igniteSlot and getDmg("IGNITE",enemy,myHero) or 0)
                
if GetGame().isOver then
		UpdateWeb(false, ScriptName, id, HWID)
		startUp = false;
	end
end
