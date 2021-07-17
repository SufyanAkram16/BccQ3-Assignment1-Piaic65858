pragma solidity ^0.8.0;

// Step1 Create a first "ParentVehicle"


contract ParentVehicle {
    
    function start() public pure returns (string memory){
        string memory a = "The Vehicle has just Started";
        return a;
        
    }
    
     function accelerate() public pure returns (string memory){
        string memory a = "The Vehicle has just Accelerated";
        return a;
        
    }
    
    function stop() public pure returns (string memory){
        string memory a = "The Vehicle has just stopped";
        return a;
        
    }
    
    function service() public virtual returns (string memory){
        string memory a = "The Vehicle is being serviced";
        return a;
        
    }
    
}

//Step2 Create  Child contracts for a different type of vehicles, that inherits Vehicle



contract cars is ParentVehicle{
    function service() override public pure returns (string memory){
       return "The Car is being serviced";
       
    }
}


contract Truck is ParentVehicle{
    function service() override public pure returns (string memory){
      return "The Truck is being serviced";
      
    }
}


contract MotorCycle is ParentVehicle{
    function service() override public pure returns (string memory){
       return "The MotorCycle is being serviced";
    }
}

/*Step3 Now create smart contracts for “Alto Mehran, “ Hino, Yamaha, that may inherit
the relevant smart contract(s) as in step 2.*/


contract AltoMehran is cars{
    
}


contract Hino is Truck{
    
}


contract Yamaha is MotorCycle{
    
}

/*Step4 Create 3 Service Stations for each vehicle type, with the same
function “vehicleService that takes the address of the deployed
contracts of step 3, in the “Vehicle” variable to call the service
function*/



contract workshop is cars {
    function vehicleService(address add) public pure returns (string memory){
        workshop a = workshop(add);
        return a.service();
        
    }
}




