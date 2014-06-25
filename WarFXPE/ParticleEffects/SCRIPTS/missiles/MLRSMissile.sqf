_projectile = nearestObject [_this select 0,_this select 4];


_smoke = "#particlesource" createVehicle [(getpos _projectile select 0),(getpos _projectile select 1),(getpos _projectile select 2)];
_smoke setParticleCircle [0, [0, 0, 0]];
_smoke setParticleRandom [0, [0, 0, 0], [10, 5, 10], 20, 0, [0, 0, 0, 0], 0, 0, random 360];

_smoke setParticleParams 

[["warfxPE\ParticleEffects\Universal\smoke_02", 1, 0, 1],
 "",
 "Billboard",
 1,
 12, 

 [0, 0, 0],

[(velocity _smoke select 0) - ((vectordir _projectile) select 0)*80,
(velocity  _smoke select 1) - ((vectordir _projectile) select 1)*80,
(velocity  _smoke select 2) - ((vectordir _projectile) select 2)*80],
0, 10.15, 7.9, 1.5, [3,4,5], [[1, 1, 1, 0.35],[1, 1, 1, 0]], [1], 0, 0, "", "", _projectile];

_smoke setdropinterval 0.003;


_fire = "#particlesource" createVehicle [(getpos _projectile select 0),(getpos _projectile select 1),(getpos _projectile select 2)];
_fire setParticleCircle [0, [0, 0, 0]];
_fire setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0, random 360];
_fire setParticleParams 

[["warfxPE\ParticleEffects\Universal\smoke_02", 1, 0, 1],
 "",
 "Billboard",
 1,
 0.15, 

[0,0,0],

[(velocity _fire select 0) - ((vectordir _projectile) select 0)*1,
(velocity  _fire select 1) - ((vectordir _projectile) select 1)*1,
(velocity  _fire select 2) - ((vectordir _projectile) select 2)*1],
0, 10.15, 7.9, 1.5, [2,3,2,1,0], [[1,1,0.6,-1],[1, 1, 0.6, -0]], [1], 0, 0, "", "", _projectile];

_fire setdropinterval 0.004;

_light= "#lightpoint" createVehicle [(getpos _projectile select 0),(getpos _projectile select 1),(getpos _projectile select 2)];
_light lightAttachObject [_projectile, [0, 0, 0]];
_light setlightcolor [255,150,50];
_light setlightambient [255,150,50];
_light setlightbrightness 1000;
_light setLightIntensity 1000;
_light setLightUseFlare true;
_light setLightFlareSize 10;
_light setLightFlareMaxDistance 4000;

sleep 2;
deletevehicle _smoke;
deletevehicle _fire;
deletevehicle _light;

waituntil {!alive _projectile};
deletevehicle _light;






