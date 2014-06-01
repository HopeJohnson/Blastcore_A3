_projectile = nearestObject [_this select 0,_this select 4];


_smoke = "#particlesource" createVehicle [(getpos _projectile select 0),(getpos _projectile select 1),(getpos _projectile select 2)];
_smoke setParticleCircle [0, [0, 0, 0]];
_smoke setParticleRandom [0, [0, 0, 0], [1, 1, 1], 0, 0, [0, 0, 0, 0], 0, 0, random 360];

_smoke setParticleParams 
[["warfxPE\ParticleEffects\Universal\smoke_01", 1, 0, 1],
 "",
 "Billboard",
 1,
 6, 

 [0, 0, 0],

[(velocity _smoke select 0) - ((vectordir _projectile) select 0)*50,
(velocity  _smoke select 1) - ((vectordir _projectile) select 1)*50,
(velocity  _smoke select 2) - ((vectordir _projectile) select 2)*50],
0, 10.15, 7.9, 1.5, [2,3], [[1, 1, 1, 0.0015],[1, 1, 1, 0]], [1], 0, 0, "", "", _projectile];

_smoke setdropinterval 0.002;



sleep 0.8;
deletevehicle _smoke;






