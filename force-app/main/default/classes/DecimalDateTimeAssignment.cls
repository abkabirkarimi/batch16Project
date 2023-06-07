public class DecimalDateTimeAssignment {
    public void decimalAssignmentMethod(){
        decimal d1 = 30.45658525;

        decimal dc = d1.setScale(2);
        system.debug('dc is ' + dc);

        string str1 = d1.toPlainString();
        system.debug('str is --> ' + str1);

        decimal d2 = decimal.valueOf(str1);
        system.debug(d2);

        
    }

    public void dateTimeAssignment(){

        date myBirthday = date.newInstance(1991, 5, 03);
        system.debug('My borthday is ' + myBirthday);

        time nTime = time.newInstance(10, 20 , 40, 200);
        system.debug('time is ' + nTime);
    }
}