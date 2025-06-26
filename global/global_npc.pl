# Global pop flagging on kill by Osirous
use v5.10;

sub EVENT_KILLED_MERIT {

	given($npc->GetNPCTypeID()) {
		# Grummus in Plane of Disease
		when (205091) {quest::setglobal("pop_pod_grimmus_planar_projection", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Manaetic Behemoth in Plane of Innovation
		when (206074) {quest::setglobal("pop_poi_behometh_flag", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Terris_Thule in Plane of Nightmare b
		when (221008) {quest::setglobal("pop_ponb_terris", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Bertoxxulous in Crypt of Decay
		when (200055) {quest::setglobal("pop_cod_bertox", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Saryrn in Plane of Torment
		when (207001) {quest::setglobal("pop_pot_saryrn", 1, 5, "F"); $client->Message(12,"The Planar Projection seems to flicker in and out of existence. It seems to be impressed and grateful for the death of Saryrn."); $client->Message(4,"You receive a character flag!");}
		# Aerin`Dar in Plane of Valor
		when (208074) {quest::setglobal("pop_pov_aerin_dar", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Agnarr_the_Storm_Lord in Bastion of Thunder
		when (209026) {quest::setglobal("pop_bot_agnarr", 1, 5, "F"); $client->Message(4,"You receive a character flag!"); $client->Message(4,"Very good mortal... visit Karana upstairs.");}
		# Lord_Mithaniel_Marr in Halls of Honor B
		when (220006) {quest::setglobal("pop_hohb_marr", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Vallon Zek in Plane of Tactics
		when (214083) {quest::setglobal("pop_tactics_vallon", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Tallon Zek in Plane of Tactics
		when (214026) {quest::setglobal("pop_tactics_tallon", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Rallos Zek in Plane of Tactics
		when (214113) {quest::setglobal("pop_tactics_ralloz", 1, 5, "F"); quest::emote("Maelin Starpyre's thoughts enter into your own. 'The singed parchment of Rallos lies in his dead hand. Bring it back to me I will translate them using the Cipher of Druzzil.'"); $client->Message(4,"You receive a character flag!");}
		# Jiva in Solusek Ro Tower
		when (212014) {quest::setglobal("pop_sol_ro_jiva", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# The Protector of Dresolik in Solusek Ro Tower
		when (212061) {quest::setglobal("pop_sol_ro_dresolik", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Arlyxir in Solusek Ro Tower
		when (212023) {quest::setglobal("pop_sol_ro_arlyxir", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Rizlona in Solusek Ro Tower
		when (212026) {quest::setglobal("pop_sol_ro_rizlona", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Xuzl in Solusek Ro Tower
		when (212055) {quest::setglobal("pop_sol_ro_xuzl", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
		# Solusek_Ro in Solusek Ro Tower
		when (212025) {quest::setglobal("pop_sol_ro_solusk", 1, 5, "F"); $client->Message(4,"You receive a character flag!");}
	}
}
