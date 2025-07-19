public class EmployeeClass {
    public String firstName;
    public String lastName;
    public Integer age;
    public Integer salary;
    public String phone;
    private String name='Aplha MK';
    
    public void display() {
        system.debug('First Name of the Employee is '+firstName);
        system.debug('Last Name of the Employee is '+lastName);
        system.debug('Age of the Employee is '+age);
        system.debug('Salary of the Employee is '+salary);
        system.debug('Phone of the Employee is '+phone);
        privateDisplay();
    }
    
    private void privateDisplay(){
        system.debug('This is the private Name of the Employee is : '+name);
    }
}

// to be executed outside 
/*
EmployeeClass obj1 = new EmployeeClass();
obj1.firstName = 'Milind';
obj1.lastName = 'Krishna';
obj1.age = 27;
obj1.salary=30000;
obj1.phone='6290638615';
obj1.display();
*/