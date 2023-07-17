public class SoqlDemo {
    public static void accountSOQL1(){
        list<account> listAcc = [select id, name, phone from account];
        system.debug('listAcc ' + listAcc);

        list<contact> lisCon = [select id, name, phone from contact];
        system.debug('listCon ' + lisCon);
    }

    public static void accountSOQLOneRecord(){
        account acc = [select Id, Phone, Name, CreatedDate from Account order by CreatedDate desc limit 1];
        system.debug('acc record ' + acc);

        string accountName = acc.name; // use dot operation to get any FIELDS value
        system.debug('name is ' + accountName);
        system.debug('phone is ' + acc.Phone);
        system.debug('id is ' + acc.Id);
    }

    public static void accountSOQL_3(){
        list<account> listAcc = [select Id, Phone,AccountNumber, Name, CreatedDate from Account order by CreatedDate desc];
        

        for (account eachAcc : listAcc) {
            system.debug('each account: ' + eachAcc);
            system.debug('acc name is ' + eachAcc.name);
            system.debug('acc phone is ' + eachAcc.Phone);
            system.debug('acc number is ' + eachAcc.AccountNumber);
            system.debug('--------');
        }
    }
}