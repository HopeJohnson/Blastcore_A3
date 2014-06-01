_flare = _this select 6;

_li = "#lightpoint" createVehicle position _flare;

_li setLightUseFlare true;
_li setLightFlareSize 1;
_li setLightFlareMaxDistance 2500;

_li setLightBrightness 0.1;
_li setLightAmbient[0.8, 0.6, 0.2];
_li setLightColor[1, 0.5, 0.2];

_li lightAttachObject [_flare, [0,0,0]];

sleep 4.5;
deletevehicle _li;