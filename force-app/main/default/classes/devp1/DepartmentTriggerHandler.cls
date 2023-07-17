public with sharing class DepartmentTriggerHandler {
    
    @future
    public static void creatDefaultEmpFuture(set<Id> depIds) {
        List<Employee__c> newEmployees = new List<Employee__c>();
        for (Id eachId : depIds) {
            Employee__c e = new Employee__c(First_Name__c = 'Shapshik', Department__c = eachId);
            newEmployees.Add(e);
        }
        insert newEmployees;
    }
}