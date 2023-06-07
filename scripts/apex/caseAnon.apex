List<Case> listCase = new list<Case>();
for (Integer i = 0; i < 205; i++) {
    Case c =new Case(Subject = 'There is a bug ' + i, Origin = 'Web', Status = 'New', Description = 'Resolve it');
    listCase.add(c);
}
insert listCase;

//CaseTriggerHandler.countRecords = 200;
//system.debug(CaseTriggerHandler.countRecords);

//CaseTriggerHandler.countRecords += 5;
//system.debug(CaseTriggerHandler.countRecords);