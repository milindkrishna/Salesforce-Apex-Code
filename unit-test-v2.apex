// main class

public class TestTaskCountry {
    
    public static String getCountry(String country)
    {
        if(String.isBlank(country) || country.length()>2) {
            return null;
        }
        
        String priority;
        
        if(country == 'US') {
            priority='high';
        }
        else {
            priority='low';
        }
        
        system.debug('priority is '+priority);
        return priority;
        
    }
}


// testing class test

@isTest
public class TaskCountryTest {
    
    @isTest static void testCountry1()
    {
        String priority = TestTaskCountry.getCountry('US');
        system.assertEquals('high',priority);
    }
    
    @isTest static void testCountry2()
    {
        String priority = TestTaskCountry.getCountry('IN');
        system.assertEquals('low',priority);
    }
    
    @isTest static void testCountry3()
    {
        String priority = TestTaskCountry.getCountry('INDIA');
        system.assertEquals(null,priority);
    }

}