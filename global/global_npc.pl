# Global pop flagging on kill by Osirous
use v5.10;

sub EVENT_KILLED_MERIT {

	given($npc->GetNPCTypeID()) {
		
		when (205091) {
			quest::setglobal("pop_pod_grimmus_planar_projection", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (206074) { # Manaetic Behemoth in Plane of Innovation
			quest::setglobal("pop_poi_behometh_flag", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}

		when (221008) { # Terris_Thule in Plane of Nightmare b
			quest::setglobal("pop_ponb_terris", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}

		when (200055) { # Bertoxxulous in Crypt of Decay
			quest::setglobal("pop_cod_bertox", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (207001) { # Saryrn in Plane of Torment
			quest::setglobal("pop_pot_saryrn", 1, 5, "F");
			$client->Message(12,"The Planar Projection seems to flicker in and out of existence. It seems to be impressed and grateful for the death of Saryrn.");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (208074) { # Aerin`Dar in Plane of Valor
			quest::setglobal("pop_pov_aerin_dar", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}

		when (209026) { # Agnarr_the_Storm_Lord in Bastion of Thunder
			quest::setglobal("pop_bot_agnarr", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
			$client->Message(4,"Very good mortal... visit Karana upstairs.");
		}
		
		when (220006) { # Lord_Mithaniel_Marr in Halls of Honor B
			quest::setglobal("pop_hohb_marr", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (214083) { # Vallon Zek in Plane of Tactics
			quest::setglobal("pop_tactics_vallon", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (214026) { # Tallon Zek in Plane of Tactics
			quest::setglobal("pop_tactics_tallon", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (214113) { # Rallos Zek in Plane of Tactics
			quest::setglobal("pop_tactics_ralloz", 1, 5, "F");
			quest::emote("Maelin Starpyre's thoughts enter into your own. 'The singed parchment of Rallos lies in his dead hand. Bring it back to me I will translate them using the Cipher of Druzzil.'");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (212014) { # Jiva in Solusek Ro Tower
			quest::setglobal("pop_sol_ro_jiva", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (212061) { # The Protector of Dresolik in Solusek Ro Tower
			quest::setglobal("pop_sol_ro_dresolik", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (212023) { # Arlyxir in Solusek Ro Tower
			quest::setglobal("pop_sol_ro_arlyxir", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (212026) { # Rizlona in Solusek Ro Tower
			quest::setglobal("pop_sol_ro_rizlona", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		when (212055) { # Xuzl in Solusek Ro Tower
			quest::setglobal("pop_sol_ro_xuzl", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}

		when (212025) { # Solusek_Ro in Solusek Ro Tower
			quest::setglobal("pop_sol_ro_solusk", 1, 5, "F");
			$client->Message(4,"You receive a character flag!");
		}
		
		default{
		
		}
	}
}
