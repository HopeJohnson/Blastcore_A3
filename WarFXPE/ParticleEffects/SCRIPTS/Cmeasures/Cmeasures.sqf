_u = _this select 0;
_aircraft = nearestobject [_u, _this select 4];

_flare1 = "#particlesource" createVehicle [0,0,0];
_flare1 setParticleCircle [0, [0, 0, 0]];
_flare1 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0, random 360];
_flare1 setParticleParams
 
 [["WarFXPE\ParticleEffects\Flare\Flare", 1, 0, 1],
"",
"Billboard",
1,
6, 
[0,0,0],

[0,0,0],

0, 10.15, 7.9, 1, [0.5,1], [[1, 1, 1, 0.2],[1, 1, 1, 0]], [1], 0, 0, "", "", ""];

_flare1 setdropinterval 0.002;

_flare2 = "#particlesource" createVehicle [0,0,0];
_flare2 setParticleCircle [0, [0, 0, 0]];
_flare2 setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0, random 360];
_flare2 setParticleParams
 
[["WarFXPE\ParticleEffects\Flare\Flare", 1, 0, 1],
"",
"Billboard",
1,
6, 
[0,0,0],

[(velocity _flare2 select 0) - ((vectordir _aircraft) select 0)*-120,
(velocity  _flare2 select 1) - ((vectordir _aircraft) select 1)*0,
(velocity  _flare2 select 2) - ((vectordir _aircraft) select 2)*0],

0, 10.15, 7.9, 1, [0.5,1], [[1, 1, 1, 0.2],[1, 1, 1, 0]], [1], 0, 0, "", "", ""];

_flare2 setdropinterval 0.002;


_smoke1 = "#particlesource" createVehicle [0,0,0];
_smoke1 setParticleCircle [0, [0, 0, 0]];
_smoke1 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0.5], 0, 0, [0, 0, 0, 0], 0, 0, random 360];
_smoke2 setParticleParams
 
[["warfxPE\ParticleEffects\Universal\smoke_02", 1, 0, 1],
"",
"Billboard",
1,
6, 
[0,0,0],
[0,0,0],
0, 10.15, 7.9, 1.5, [0.5,1], [[1, 1, 1, 0.2],[1, 1, 1, 0]], [1], 0, 0, "", "", _flare1];

_smoke1 setdropinterval 0.002;

_smoke2 = "#particlesource" createVehicle [0,0,0];
_smoke2 setParticleCircle [0, [0, 0, 0]];
_smoke2 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0.5], 0, 0, [0, 0, 0, 0], 0, 0, random 360];
_smoke2 setParticleParams
 
[["warfxPE\ParticleEffects\Universal\smoke_02", 1, 0, 1],
"",
"Billboard",
1,
6, 
[0,0,0],
[0,0,0],
0, 10.15, 7.9, 1.5, [0.5,1], [[1, 1, 1, 0.2],[1, 1, 1, 0]], [1], 0, 0, "", "", _flare2];

_smoke2 setdropinterval 0.002;

_light2 = "#lightpoint" createVehicle [(getpos _flare2 select 0),(getpos _flare2 select 1),(getpos _flare2 select 2)];
_light2 lightAttachObject [_flare2, [0, 0, 0]];
_light2 setlightcolor [20,20,10];
_light2 setlightambient [0.2,0.2,0.1];
_light2 setlightbrightness 40000;
_light2 setLightIntensity 40000;
_light2 setLightUseFlare true;
_light2 setLightFlareSize 40;
_light2 setLightFlareMaxDistance 4000;

_light2 = "#lightpoint" createVehicle [(getpos _flare1 select 0),(getpos _flare1 select 1),(getpos _flare1 select 2)];
_light2 lightAttachObject [_flare1, [0, 0, 0]];
_light2 setlightcolor [20,20,10];
_light2 setlightambient [0.2,0.2,0.1];
_light2 setlightbrightness 40000;
_light2 setLightIntensity 40000;
_light2 setLightUseFlare true;
_light2 setLightFlareSize 40;
_light2 setLightFlareMaxDistance 4000;

sleep 3;
deletevehicle _flare1;
deletevehicle _flare2;
deletevehicle _smoke1;
deletevehicle _smoke2;
deletevehicle _light1;
deletevehicle _light2;
