-- by Drogerin##


--340416

local metal = false;
local wood = false;
local fire = false;
local earth = false;
local water = false;

local wave1 = false;
local wave2 = false;

local metal = false;
local content = false;
local doubt = false;
local deceit = false;




function event_spawn(e)
	eq.set_timer("check",1000);
end


function event_timer(e)
	if e.timer=="check" then
		local num_players=0;
		local now_clients = eq.get_entity_list():GetClientList();
		for client in now_clients.entries do
			if (client.valid and e.self:CalculateDistance(client:GetX(), client:GetY(), client:GetZ()) <=10) then	
				num_players=num_players+1;
				eq.debug("num_players: " .. num_players);
				if num_players == 1 then
					eq.stop_timer("check");
					eq.set_timer("move", 3000);
					e.self:Say("Welcome to the Storm Reach Dojo. I am pleased that you have taken up our humble challenge. As soon as you are ready, bring at least six of your fellows into the dojo and we shall begin. Be aware that this is a contest to the death. Do not enter the dojo unless you are prepared to pay that price.");
				end
			end
		end	
	elseif e.timer == "move" then
		eq.stop_timer("move");
		eq.set_timer("spawn",25000);
		e.self:MoveTo(-92.45,-332.24,254.64,6.0,true);
	elseif e.timer == "spawn" then
		eq.stop_timer("spawn");
		eq.spawn2(340431,0,0,-97.17,-245.97,250.46,127.8);
	elseif e.timer == "wave_1" then
		eq.signal(340426,2);
		eq.signal(340427,2);
		eq.signal(340428,2);
		eq.signal(340430,2);
		eq.signal(340429,2);
		eq.stop_timer("wave_1");
	elseif e.timer == "wave_2" then
		eq.signal(340422,2);
		eq.signal(340423,2);
		eq.signal(340424,2);
		eq.signal(340425,2);
		eq.stop_timer("wave_2");
	end
end

function Spawn_Elements()
	eq.unique_spawn(340426,12,0,0.00,-222.00,248.89,380.0);
	eq.unique_spawn(340427,13,0,0.00,-214.00,248.89,380.0);
	eq.unique_spawn(340428,14,0,0.00,-206.00,248.89,380.0);
	eq.unique_spawn(340430,15,0,0.00,-190.00,248.89,380.0);
	eq.unique_spawn(340429,16,0,0.00,-198.00,249.41,380.0);
end

function Spawn_Emotions()
	eq.unique_spawn(340425,22,0,-190.00,-198.00,248.90,128.0);
	eq.unique_spawn(340424,23,0,-190.00,-206.00,248.90,128.0);
	eq.unique_spawn(340423,24,0,-190.00,-214.00,248.90,128.0);
	eq.unique_spawn(340422,25,0,-190.00,-222.00,248.90,128.0);
end

function Depop_Elements()
	local mob_list= {340426,340427,340428,340429,340430}
	for _,mob in pairs(mob_list) do
		eq.depop_all(mob);
	end
end

function Signal_Elements()
	local mob_list = {340426,340427,340428,340429,340430}
	for _mob in pairs(mob_list) do
		eq.signal(mob,1);
	end
end


function event_signal(e)
	if e.signal==1 then
		e.self:Say("Good, you have decided to meet the challenge. I will not bore you with unworthy tales of our training methods or our meager accomplishments, certainly your own deeds far outshine our own. We are but meager servants to the Strom Mistress, Yar`Lir, and are of little consequence. We have been asked to test you and, certainly, ourselves in a battle to the death. The residents of this place are away at tasks beyond those such as we, and for a short while we have this room to ourselves. We must finish our contest before they return, and so there is little time for pleasantries.");
		e.self:Say("A winner will be declared if they are the only combatants alive in this room. Your first challenge will be to defeat the Disciples of The Five Elements. Certainly they will be easily defeated by such mighty beings, but it is within their hearts to try. Your battle will begin in one minute. Prepare yourselves.");
		Depop_Elements();
		Spawn_Elements();
		Signal_Elements();
		eq.set_timer("wave_1", 60 * 1000);
	elseif (e.signal == 340426) then
		metal = true;
	elseif (e.signal == 340427) then
		wood = true;
	elseif (e.signal == 340428) then
		water = true;
	elseif (e.signal == 340430) then
		fire = true;
	elseif (e.signal == 340429) then
		earth = true;
	elseif (e.signal == 340425) then
		rage = true;
	elseif (e.signal == 340422) then
		content = true;
	elseif (e.signal == 340424) then
		deceit = true;
	elseif (e.signal == 340423) then
		doubt = true;
	end
		if (metal and earth and wood and water and fire and not wave1) then
			e.self:Say("Congratulations! You have defeated the Disciples of the Five Elements. You have proven yourself to face the Four Emotions. They have mastered their emotions and from them they gain strength. Each has become a conduit for the emotions of our kind, a paradigm, if you will. Certainly you shall defeat them, for you are the champions of your people and they are slaves. We shall begin again in two minutes. Rest and consult with each other if you need.");
			eq.depop(340425);
			eq.signal(340425,1);
			eq.depop(340424);
			eq.signal(340424,1);
			eq.depop(340423);
			eq.signal(340423,1);
			eq.depop(340422);
			eq.signal(340422,1);
			eq.set_timer("wave_2", 120 * 1000);
			wave1 = true;
		elseif (rage and content and deceit and doubt and not wave2) then
			e.self:Say("Well Done. It is rare that an opponent is able to defeat the goblin Emotions. Your next test will be greater, I fear. You must face our three Animals. These are grandmasters of our arts and have never suffered defeat against opponents outside of these grand islands of the sky. You look weary. You shall have three minutes to prepare for the next contest.");
			wave2= true;
		end
end
