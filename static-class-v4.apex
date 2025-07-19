public class StaticClass {
    
    public static integer num1;
    
    public void display(){
        system.debug('I am a non static method so create object to call me');
        system.debug('Static Variable num1 is '+num1);
    }
    
    public static void displayStatic(){
        system.debug('I am a static method and no need of object creation');
    }
}

// to be executed outside

StaticClass.num1=10;
StaticClass.displayStatic();
StaticClass obj = new StaticClass();
obj.display();