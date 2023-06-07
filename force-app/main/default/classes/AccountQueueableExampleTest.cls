@isTest
public class AccountQueueableExampleTest {
    @isTest
    private static void testQueueable1() {
        //1.prepare date
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 500; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            accounts.add(acc);
        }
        insert accounts;

        Test.startTest();
        AccountQueueableExample aq = new AccountQueueableExample();
        aq.listAcc = accounts;
        //enqueue the queueable
        system.enqueueJob(aq);
        Test.stopTest();

        //assert
        List<Account> listAcc = [select id, name from account where name like '%--SI%'];
        assert.areEqual(500, listAcc.size());
    }
}