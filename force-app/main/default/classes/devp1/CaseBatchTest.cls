@isTest
public with sharing class CaseBatchTest {
    @isTest
    private static void CaseBatchTest() {
        Account acc = new Account();
        acc.Name = 'SoftInnovaas';
        acc.AccountNumber = '1234567';
        insert acc;

        List<Case> csList = new List<Case>();
        for (Integer i = 0; i < 955; i++) {
            Case cs = new Case();
            cs.Type = 'Other' ;
            cs.Status = 'New';
            cs.Origin = 'Web';
            csList.add(cs);
        }
        insert csList;
        for (Case eachCs : csList) {
            eachCs.AccountId = acc.Id;
        }
        update csList;


        Test.startTest();
        Database.executeBatch(new CasesBatch(),1000);
        Test.stopTest();
        
        List<Case> caseList = [SELECT AccountId, CaseNumber, Status FROM Case];
        for (Case eachCase : caseList) {
            Assert.areEqual('New', eachCase.Status);
        }

    }
}