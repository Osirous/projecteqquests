function event_combat(e)
	if e.joined then
		eq.set_timer("banish",math.random(15,30) * 1000);
	else
		eq.stop_timer("banish");
	end
end

function event_timer(e)
	if e.timer == "banish" then
		local cur_target = e.self:GetHateTop():CastToClient();

		eq.stop_timer(e.timer);
		eq.set_timer("banish",math.random(15,30) * 1000);

		if cur_target.valid and not cur_target:IsPet() then
			cur_target:MovePC(206,-248,-241,3.13,384);
		end
	end
end
