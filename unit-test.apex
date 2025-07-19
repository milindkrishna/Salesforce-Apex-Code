// main class always start with Test :

public class TestTempConv 
{

    public static Decimal FarentoCel(Decimal fh)
    {
        Decimal cs = (fh-32)*5/9;
        system.debug('temp in celsius is '+cs.setScale(2));
        return cs.setScale(2);
    }
}

// Testing class always end with Test :

@isTest
public class TestTempConvTest {

    @isTest static void testTemp()
    {
        Decimal celsius = TestTempConv.FarentoCel(70);
        system.assertEquals(21.11, celsius);
    }
}