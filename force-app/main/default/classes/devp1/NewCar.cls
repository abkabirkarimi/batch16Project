public class NewCar {
    integer currentSpeed = 0;
    string carType;
    string carName;

    public void startCar(string carType, string carName){
        system.debug('car type is ' + carType +' ' + 'car name is ' + carName + ' ' + 'current speed is ' + currentSpeed);
    }

    public void acceleration(integer a){
        currentSpeed += a;
        system.debug('current speed after acceleration is ' + currentSpeed);
    }

    public void brake(integer b){
        currentSpeed -= b;
        system.debug('decelerated speed after brake is ' + currentSpeed );
    }

    public void stopCar(){
        currentSpeed = 0;
        system.debug('current speed after braking is ' + currentSpeed);
    }

    public void checkSpeed(){
        if(currentSpeed>0 && currentSpeed<=30){
            system.debug('City Mode');
        } else if(currentSpeed>30 && currentSpeed<=60){
            system.debug('Economy Mode');
        }else if(currentSpeed>60){
            system.debug('Sport MOde');
        }
    }


}