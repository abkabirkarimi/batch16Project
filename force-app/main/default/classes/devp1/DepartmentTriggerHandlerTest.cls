@isTest
public with sharing class DepartmentTriggerHandlerTest {
    @isTest
    private static void testFuture1() {
        List<Department__c> listDep = new List<Department__c>{
            new Department__c(Name__c = 'Future'),
            new Department__c(Name__c = 'present'),
            new Department__c(Name__c = 'Past')
        };
        Test.startTest();
        insert listDep;
        Test.stopTest();

        //assert
        List<Employee__c> allEmp = [SELECT Id, First_Name__c FROM Employee__c];
        assert.areEqual(3, allEmp.size());
    }   
}