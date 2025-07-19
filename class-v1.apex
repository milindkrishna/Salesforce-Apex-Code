public class CarExample {
	public string make;
    public string model;
    public integer avgSpeed;
    
    public void display() {
        system.debug('Make of the car is '+ make);
        system.debug('Model of the car is '+model);
        system.debug('Make of the car is '+avgSpeed);
    }
    
    // private can be accessed by another public function within same class
    private integer speedDisplay(){
        avgSpeed+=10;
        return avgSpeed;
    }
    
    public void newSpeed(){
        speedDisplay();
        system.debug('New private Speed of the car is : '+avgSpeed);
    }
}

// to be executed outside 
/*
CarExample obj1 = new CarExample();
obj1.make = 'Hybrid Series';
obj1.model = 'BMW';
obj1.avgSpeed = 216;
obj1.display();
obj1.newSpeed();

CarExample obj2 = new CarExample();
obj2.make = 'Royal Series';
obj2.model = 'Austin Martin';
obj2.avgSpeed = 300;
obj2.newSpeed();
*/