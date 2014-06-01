private ["_u", "_sh","_i","_no","_int"];
_u = _this select 0;
_sh = nearestobject [_u, _this select 4];
_i=1;
_no=3+random 2;

_vel = velocity _u;
_dir = direction _sh;
_speed1= -2;
_speed2 = -2;
_speed3 = -1; 
_u setVelocity [(_vel select 0)+(sin _dir*_speed1),(_vel select 1)+ (cos _dir*_speed2),(_vel select 2)+(_speed3)];


//Flash
_i=1;
_no=1+random 4;
while {_i<_no}
do
	{
	drop [["WarFXPE\ParticleEffects\Universal\smoke_01", 1, 0, 1],
	"", "Billboard", 1, 0.05,
	[0,5,0], 
	[-5 + random 10, (_i*30) -5 + random 10, -5 + random 10],
	1 + random 10, 1, 0.80, 0.1, 
	[6,8],
	[[1,1,0.15,-3],[1,1,0.15,0]],
	[2,0.7,0.5],0.1,0.1,"","",_sh,random 360];
	_i=_i+1;
};

//Flash2
_i=1;
_no=1+random 4;
while {_i<_no}
do
	{
	drop [["\ca\Data\ParticleEffects\Universal\Universal", 16, 2, 64],
	"", "Billboard", 1, 0.05,
	[0,5,0], 
	[-5 + random 10, (_i*30) -5 + random 10, -5 + random 10],
	1 + random 10, 1, 0.80, 0.1, 
	[6,8],
	[[1,1,1,-3],[1,1,1,0]],
	[10.5],0.1,0.1,"","",_sh,random 360];
	_i=_i+1;
};

//Flash3
_i=1;
_no=1+random 4;
while {_i<_no}
do
	{
	drop [["\ca\Data\ParticleEffects\Universal\Universal", 16, 2, 64],
	"", "Billboard", 1, 0.05,
	[0,7,0], 
	[-5 + random 10, (_i*30) -5 + random 10, -5 + random 10],
	1 + random 10, 1, 0.80, 0.1, 
	[4,6],
	[[1,1,1,-3],[1,1,1,0]],
	[10.5],0.1,0.1,"","",_sh,random 360];
	_i=_i+1;
};
		
//Smoke
_i=1;
_no=4+random 4;
while {_i<_no}
do
	{
	drop [["WarFXPE\ParticleEffects\Universal\smoke_02", 1, 0, 1],
	"", "Billboard", 15, 4,
	[-0.5 + random 1, 2 + random 10, -0.5 + random 1],
	[3+random 12, 40+random 12, 3+random 12],
	15, 11.2, 7.9, 1, 
	[6,10],
	[[0.9,0.9,0.9,0.1],[1,1,1,0]],
	[2,0.7,0.5],0.2,0.2,"","",_sh,random 360];
	_i=_i+0.5;
};

//GroundDust
_i=1;
_no=20;
while {_i<_no}
do
	{
	drop [["WarFXPE\ParticleEffects\Universal\smoke_02", 1, 0, 1],
	"", "Billboard", 1, 8,
	[-15+random 30,-15+random 30,-2],
	[0,0,0],
	3, 10.1, 7.9, 0.2, 
	[1,4,8],
	[[0.8,0.7,0.6,0.02],[0.8,0.7,0.6,0]],
	[2,0.7,0.5],0.1,0.1,"","",_u, random 360];
	_i=_i+0.08;
};










