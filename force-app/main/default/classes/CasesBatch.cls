public class CasesBatch implements Database.Batchable<sobject> {

    public Database.QueryLocator start(Database.BatchableContext bc){
         system.debug('inside start method');
         return Database.getQueryLocator([select id, accountId from Case]);
    }
    //Execute method will execute on group of records
    public void execute(Database.BatchableContext bc, list<Case> someCases){
        //Id accId = [select id from account where name = 'Softinnovas' limit 1].Id;
        Account acc = [select id from account order by createddate desc limit 1];

        list<Case> updateCases = new list<Case>();
        for (Case eachCase : someCases) {
            if (eachCase.accountid == null) {
                eachCase.accountid = acc.id;
                updateCases.add(eachCase);
            }
        }
        update updateCases;
        system.debug(updateCases.size() + 'updated cases');
    }
    public void finish(Database.BatchableContext bc){
        system.debug('done. no more orphane cases.');
    }
}