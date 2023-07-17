public with sharing class ToDoHandler {
    public static void afterInsert(Map<Id,ToDo__c> newToDos) {
        for (Id toDoId : newToDos.keySet()) {
            RestCallouts.postTodo(toDoId);
        }
    }

    public static void afterUpdate(Map<Id,ToDo__c> newToDos, Map<Id, ToDo__c> oldToDos) {
        for (Id toDoId : newToDos.keySet()) {
            ToDo__c nToDo = newToDos.get(toDoId);
            ToDo__c oToDo = oldToDos.get(toDoId);
            if (nToDo.Name != oToDo.Name || nToDo.Completed__c != oToDo.Completed__c || nToDo.User_ID__c != oToDo.User_ID__c) {
                    RestCallouts.updateToDo(toDoId);
            }
        }
    }

    public static void afterDelete(Map<Id,ToDo__c> oldToDos) {
        for (Id toDoId : oldToDos.keySet()) {
            Integer tdId = Integer.valueOf(oldToDos.get(toDoId).ToDo_Id__c);
            RestCallouts.deleteToDo(tdId);
        }
    }
}



// public static void afterDelete(Map<Id,ToDo__c> oldToDos) {
//     for(Id toDoId : oldToDos.keySet()) {
//         Integer tdId = Integer.valueOf(oldToDos.get(toDoId).ToDo_Id__c);
//         RestCallouts.deleteToDo(tdId);
//     }
// }