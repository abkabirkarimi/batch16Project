public class PrimitiveDatatypeDemo {
    
    //public
    //return type--> void
    //method name-->print1
    public void print1(){
        string batchName = 'Batch 16';
        integer totalCandidates = 45;
        boolean isAdminCompleted = true;
        string batchDescription = batchName + ' has' + totalCandidates +
        ' candidates. Admin completed: ' + isAdminCompleted;
        system.debug(batchDescription);
        }

        public void print2(){
            Decimal d1 = 88987.888;
            system.debug('decimal d1 ==> ' + d1);
            long L1 = 987654321L;
            system.debug('long L1 ==> ' + L1);
            id accId = '0013x00002RZ1uQAAT';
            system.debug('acc id is ' + accId);
            double dd1 = 889.54;
            system.debug('double ==> ' + dd1);

            //we use object when we integrate sf with external sytem.
            object obj1 = 'anything';//string works
            object obj2 = 99; //integer works
            object obj3 = 8794.55;//decimal works
            object obj4 = l1;
            object obj5 = accid;
            object obj6 = dd1;
            system.debug(obj1);
            system.debug(obj2);
            system.debug(obj3);
            system.debug(obj4);
            system.debug(obj5);
            system.debug(obj6);
        }

}