trigger ToDOTrigger on ToDo__c (after insert, after update, after delete) {
    if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            ToDoHandler.afterInsert(Trigger.newMap);
        }
        if (Trigger.isUpdate) {
            ToDoHandler.afterUpdate(Trigger.newMap, Trigger.oldMap);
        }
        if (Trigger.isDelete) {
            ToDoHandler.afterDelete(Trigger.oldMap);
        }
    }
}