@isTest
public with sharing class RestCalloutsTest {
    @TestSetup
     private static void makeData(){
        //create a product record
        Ecommerce_Product__c prod = new Ecommerce_Product__c();
        prod.Name ='Iphone 14 pro';
        prod.Brand__c = 'Apple';
        prod.Category__c = 'smartphone';
        prod.Description__c = 'Iphone 14 pro';
        prod.Discount_Percentage__c = 4.50;
        prod.Price__c = 1500;
        prod.Rating__c = 4.5;
        prod.Stock__c = 1000;
        prod.Thumbnail__c = 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTCu0bkCHO0hVtz8aUHvO2PaFQI1Sy6QtqAN7BI4jtk9av001xWEBIqL71p7MfoVOjnQ4XmEpdxvlXRlt8VfzkCr64fp4u_';
        insert prod;
        //Create ToDo record
        // ToDo__c todo = new ToDo__c(Name = 'Test ToDo', Completed__c = False, User_ID__c = 12);
        // insert todo;
       
    }
    @isTest
    private static void getAnimalsTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getAnimals();
        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void getProductsTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getProducts();
        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void getAirlinesTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        
        HttpResponse response = RestCallouts.getAirlines(1);
        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void postProductsTest(){
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        Ecommerce_Product__c prod = [SELECT id FROM Ecommerce_Product__c LIMIT 1];
        HttpResponse response = RestCallouts.postProducts(prod.Id);
        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void postToDoTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        ToDo__c todo = new ToDo__c();
        todo.Name = 'Test Todo';
        todo.Completed__c = false;
        todo.ToDo_Id__c = 151;
        todo.User_ID__c = 12;
        insert todo;
        //3. Perform asserts
        Test.stopTest();
        ToDo__c todo1 = [SELECT ToDo_Id__c FROM ToDo__c LIMIT 1];
        Assert.areEqual(151, todo1.ToDo_Id__c);
    }

    @isTest
    private static void getUserdsTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getUserds();
        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void updateToDoTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        ToDo__c todo = new ToDo__c(Name = 'Test todo', ToDo_Id__c = 1, User_ID__c = 151, Completed__c = True);
        insert todo;
        ToDo__c uptodo = [SELECT Name, ToDo_Id__c, User_ID__c, Completed__c FROM ToDo__c LIMIT 1];
        uptodo.Completed__c = False;
        update uptodo;
        //HttpResponse response = RestCallouts.updateToDo(todo.ToDo_Id__c);
        //3. Perform asserts
        ToDo__c td = [SELECT Completed__c, Name, ToDo_Id__c, User_ID__c FROM ToDo__c LIMIT 1];
        Assert.isTrue(td.Completed__c == False);
        // Assert.areEqual(200, response.getStatusCode());
        // Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }


}