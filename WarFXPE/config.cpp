class CfgPatches
{
	class WarFXPE
	{
		units[]={};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"A3_Data_F"
		};
	};
};
class Extended_PreInit_EventHandlers
{
	WarFXPE_Effects_PreInit="[] execVM ""WarFXPE\ParticleEffects\SCRIPTS\init.sqf"";";
};
class Extended_Fired_EventHandlers
{
	class All
	{
		class WarFXPE
		{
			clientFired="_this spawn WarFXPE_EH_Fired;";
		};
	};
};
class CfgCloudletShapes
{
	cloudletUniversal="\A3\data_f\ParticleEffects\Universal\Universal.p3d";
	Afterburner="WarFXPE\ParticleEffects\Universal\Afterburner.p3d";
	Explosion_01="WarFXPE\ParticleEffects\Universal\Explosion_01.p3d";
	Explosion_02="WarFXPE\ParticleEffects\Universal\Explosion_02.p3d";
	Explosion_03="WarFXPE\ParticleEffects\Universal\Explosion_03.p3d";
	Explosion_04="WarFXPE\ParticleEffects\Universal\Explosion_04.p3d";
	Explosion_05="WarFXPE\ParticleEffects\Universal\Explosion_05.p3d";
	Explosion_07="WarFXPE\ParticleEffects\Universal\Explosion_07.p3d";
	Explosion_08="WarFXPE\ParticleEffects\Universal\Explosion_08.p3d";
	Explosion_09="WarFXPE\ParticleEffects\Universal\Explosion_09.p3d";
	Explosion_10="WarFXPE\ParticleEffects\Universal\Explosion_10.p3d";
	Explosion_11="WarFXPE\ParticleEffects\Universal\Explosion_11.p3d";
	Explosion_12="WarFXPE\ParticleEffects\Universal\Explosion_12.p3d";
	Explosion_13="WarFXPE\ParticleEffects\Universal\Explosion_13.p3d";
	Explosion_14="WarFXPE\ParticleEffects\Universal\Explosion_14.p3d";
	Explosion_15="WarFXPE\ParticleEffects\Universal\Explosion_15.p3d";
	TankMuzzle="WarFXPE\ParticleEffects\Universal\TankMuzzle.p3d";
	LargeFire_01="WarFXPE\ParticleEffects\Universal\LargeFire_01.p3d";
	Smoke="WarFXPE\ParticleEffects\Universal\Smoke.p3d";
	Smoke_01="WarFXPE\ParticleEffects\Universal\Smoke_01.p3d";
	Smoke_02="WarFXPE\ParticleEffects\Universal\Smoke_02.p3d";
	Smoke_03="WarFXPE\ParticleEffects\Universal\Smoke_03.p3d";
	RocketSparks="WarFXPE\ParticleEffects\Universal\rocketSparks.p3d";
	Dirt="WarFXPE\ParticleEffects\Universal\Dirt.p3d";
	Dirt_big="WarFXPE\ParticleEffects\Universal\Dirt_big.p3d";
	Flare="WarFXPE\ParticleEffects\Universal\Flare.p3d";
};
class PreloadTextures
{
	class CfgCloudletShapes
	{
		Explosion_01="@*";
		Explosion_02="@*";
		Explosion_03="@*";
		Explosion_04="@*";
		Explosion_05="@*";
		Explosion_07="@*";
		Explosion_08="@*";
		Explosion_09="@*";
		Explosion_10="@*";
		Explosion_11="@*";
		Explosion_12="@*";
		Explosion_13="@*";
		Explosion_14="@*";
		Explosion_15="@*";
		Fireball_03="@*";
		LargeFire_01="@*";
		Smoke="@*";
		Smoke_01="@*";
		Smoke_02="@*";
		Smoke_03="@*";
		rocketSparks="@*";
		Dirt="@*";
		Dirt_Big="@*";
	};
};
