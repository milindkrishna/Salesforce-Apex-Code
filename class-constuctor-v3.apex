public class Student {
    
    String name;
    String schoolName;
    
     public Student(String n, String sc) {
        name=n;
        schoolName=sc;
    }
    
    public void displayDetails() {
        system.debug('Name of the student is '+name);
        system.debug('Name of the school is '+schoolName);
    }
    
   
}

// to be executed outside

Student obj = new Student('Milind', 'DMA');
obj.displayDetails();