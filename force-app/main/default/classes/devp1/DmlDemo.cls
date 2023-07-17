public class DmlDemo {
    public static void dmlInsert1() {
        //create new account record

        //1. create new instance of account(sObject)
        account acc = new account();

        //2. set field names
        acc.Name = 'Salesforce';

        //3. insert statement
        insert acc; //will CREATE  record in ORG.
        system.debug(acc);
    }

    //create new record for department custom object
    public static void dmlInsert2() {
        //create new instance.
        Department__c d = new Department__c();

        //set fields
        d.Name__c = 'Human Resource';
        d.Short_Code__c = 'HR';

        //insert statement
        insert d;
    }

    public static void dmlUpdate1() {
        account acc = new account();
        acc.name = 'Softinnovas';
        system.debug('before insert DML: ' + acc);
        insert acc;
        system.debug('after dml : ' + acc);

        //ID is mandatory if we want to update record
        acc.name = 'Softinnovas Inc.';
        update acc;//update statement.
    }

    public static void dmlUpdate2(){
        //soql
        account acc = [select id, name from account order by CreatedDate desc limit 1];

        //update
        acc.name = 'Salesforce Inc';
        update acc;
    }

    public static void dmlUpdate3(){
        Employee__c emp = [select id, country__c, first_name__c from employee__c where country__c = 'USA' limit 1];

        //update country field 
        emp.country__c = 'Canada';
        emp.first_name__c = 'Alp';
        emp.Last_name__c = 'Arslan';// yes we can update
        update emp;
    }

    //to establish relation between two records, we MUST provide parent record ID in child field name.
    public static void dmlInsert4() {
        //req:create contact record for latest created account record

        account acc = [select id, name from account order by createddate desc limit 1];

        string accountname = acc.name;
        id accountid = acc.id;

        //create contact
        contact c = new contact();
        c.LastName = 'Biden';
        c.accountid = accountid;//acc.id
        insert c;
    }
}