trigger DepartmentTrigger on Department__c (before insert, after insert) {
    if (Trigger.isAfter && Trigger.isInsert) {
        DepartmentTriggerHandler.creatDefaultEmpFuture(Trigger.newMap.keySet());
    }
}