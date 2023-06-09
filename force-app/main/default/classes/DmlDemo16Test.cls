@isTest
public class DmlDemo16Test {
    @isTest
   private static void testDml1() {
        //call method
        DmlDemo16.dmlInsert1(); 
            //IT does not create any record in org.
                //it creates record in its own testing world.
        //validate by checking if record is created.
        list<account> acc = [select id, name from account];
        Assert.areEqual('Salesforce', acc[0].Name);
        Assert.areEqual(1, acc.size());
   }
    
   @isTest
   public static void testDML2() {
      // call method
      DmlDemo16.dmlInsert2();

      //assert
      List<department__c> listdep = [SELECT Name__c,Short_Code__c from department__c];
      // 1 record.
      Assert.areEqual(1, Listdep.size());
      Assert.areEqual('Human Resource', Listdep[0].name__c);
      Assert.areNotEqual('IT', listDep[0].Name__c); //it will pass the test only if expected is not equal to acctual.
   }
   @isTest
   public static void testDML3() {
       //we don't have any records so first prepare data
       //1. prepare date
       Account a = new Account(name = 'test acc');
       insert a;
       // 2.call method
       DmlDemo16.dmlUpdate2();
       //3 assert
       //verify what we are doing in out method
       //verify that account name is 'salesforce INc'
         // how?
         //soql
        Account acc = [select id, name from account order by CreatedDate desc limit 1];
        Assert.areEqual('Salesforce Inc.', acc.Name);
   }
@isTest
   private static void testDML4() {
       //prepare data

       //create new instance
       Department__c d = new Department__c();
       //set fields
       d.Name__c = 'Human Resource';
       d.Short_Code__c = 'HR';

       //insert statement
       insert d;

       //call method 
       DmlDemo16.employeeDepartment();
       //assert
         // what to assert?
         // the employee record is crerated.
           // soql employee object
           employee__c emp = [select id, first_name__c, last_name__c, department__c from Employee__c where department__c = :d.id];
           Assert.areEqual('Don', emp.First_Name__c);

   }
}