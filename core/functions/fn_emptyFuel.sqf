/*
      Created by Mokomoko
      Date: 04.08.2014
      Related Forum Post: http://www.altisliferpg.com/topic/4812-tutorial-how-to-increase-the-fuel-usage/
*/

private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption","_speed"];

while{true} do 
{
	_vehicleToFuel = (vehicle player);
	_speed = speed _vehicleToFuel ;
	if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && !(_vehicleToFuel isKindOf "Air") && (_vehicleToFuel != player) ) then
	{
		_velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
		
		switch(true) do
			{	
				case (_speed >= 0 and _speed < 5): 		_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;
				case (_speed >= 5 and _speed < 15): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0002;
				case (_speed >= 15 and _speed < 30): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0003;
				case (_speed >= 30 and _speed < 55): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0004;
				case (_speed >= 55 and _speed < 70): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0005;
				case (_speed >= 70 and _speed < 85): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0006;
				case (_speed >= 85 and _speed < 100): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0007;
				case (_speed >= 100 and _speed < 115): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0008;
				case (_speed >= 115 and _speed < 130): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0009;
				case (_speed >= 130 and _speed < 145): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0010;
				case (_speed >= 145 and _speed < 160): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0011;
				case (_speed >= 160 and _speed < 350): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0012;
				case (_speed >= 350 and _speed < 400): 	_fuelConsumption = _velocityOfVehicle/100000 + 0.0013;
			};
	};
	sleep 2;
};