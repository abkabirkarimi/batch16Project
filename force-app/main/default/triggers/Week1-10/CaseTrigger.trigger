trigger CaseTrigger on Case (before insert) {
    system.debug('before insert case trigger');
    //number of records?
    //static variable value STAYS throughout te transaction
        //for first execution. CaseTriggerHandler.countRecords --> 200
        //for second execution. CaseTriggerHandler.countRecords--> 205
    CaseTriggerHandler.countRecords += Trigger.size;
    //Trigger.size == Triger.new.size();
    //Trigger.size == Triger.old.size();
    system.debug('Total number of records processed ' + CaseTriggerHandler.countRecords);

    CaseTriggerHandler.countTriggers++;
    system.debug('Total number of triggers processed ' + CaseTriggerHandler.countTriggers);
}