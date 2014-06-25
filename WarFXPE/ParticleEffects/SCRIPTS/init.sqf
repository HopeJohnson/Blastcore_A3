_v=_this select 0;
if(isNil "WarFXPE") then
{
	WarFXPE_Effects_PreInit=true;
	
	WarFXPE_EH_Fired=compile preprocessFileLineNumbers "warfxpe\ParticleEffects\SCRIPTS\fired_event.sqf";
	AA_Missile_Smoke=compile preprocessFileLineNumbers "WarFXPE\ParticleEffects\SCRIPTS\missiles\AAMissile.sqf";
	AT_Missile_Smoke=compile preprocessFileLineNumbers "WarFXPE\ParticleEffects\SCRIPTS\missiles\ATMissile.sqf";
	AT_Rocket_Smoke=compile preprocessFileLineNumbers "WarFXPE\ParticleEffects\SCRIPTS\missiles\ATRocket.sqf";
	MLRS_Missile_Smoke=compile preprocessFileLineNumbers "WarFXPE\ParticleEffects\SCRIPTS\missiles\MLRSMissile.sqf";
	
	};


