// - ONE Test class per class or trigger.
// - naming: append 'Test' after class name or trigger name
// - to create test class, annotate our class with @isTest

@isTest
public class Calculator16Test {
    // we write test method to test each unit
       // we can write multiple TEST methods also to TEST ONE method
    // we will different different test method to TEST each mothod

    // some rules for test method
       // static.
       // public or private anything
       // test method cannot accept any parameter
       // write @isTest to make a method a TEST  METHOD
       // it must return VOID
    
    @isTest
    private static void testMethod1(){
        Calculator16 c = new Calculator16();
        c.add(5.5, 4.5);
    }


    @isTest
    public static void testAddMethod(){
        Calculator16 c = new Calculator16();
        integer sum = c.add(5, 5);
        //5,5--> output shoub be 10
           // sum -> 10
        // assertion 

        //old assertion
        system.assertEquals(10, sum);

        // New Assertion
        Assert.areEqual(10, sum);

        Assert.isTrue(10 == sum);// this will pass, because 10 == sum is True
        Assert.isFalse(11 == sum);// this will pass, because 10 == sum is False
    }
    @isTest
    public static void testAddMethod2(){
        Calculator16 c = new Calculator16();
        //calling method with parameter is allowed in test methods.
        integer sum = c.add(5, 10, 10);
        // New Assertion 
        Assert.areEqual(25, sum);
        
        
    }

    @isTest
    public static void testLeapYrChMethod(){
        Calculator16 c = new Calculator16();
        Boolean b = c.leapYearCheck(date.today());
        Assert.isFalse(b);

        boolean b2 = c.leapYearCheck(date.newInstance(2020, 1, 15));
        Assert.isTrue(b2);
    }
}