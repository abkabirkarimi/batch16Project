public class PrimitiveDatatypeDemo2 {
    //1. new DATE
    public void printNewDate(){
        system.debug('create new Date instance');

        //datatype
        date  newDate = date.newInstance(1992,6,3);
        system.debug('newDate is ' + newDate);

        date  newDate2 = date.newInstance(2023,1,15);
        system.debug('newDate2 is ' + newDate2);

        date todayDate = date.Today();
        //today'S 
            // escape character ->\ -> it will ignore next character
        system.debug('today\'s date is ' + todayDate);
    }
    

    public void printNewTime(){
        time myTime1 = time.newInstance(10,15,20,500);
        system.debug('myTime1 ' + myTime1);

        time myTime2 = time.newInstance(25, 10, 30, 100);
        system.debug('myTime2 ==> ' + myTime2);
    }


    public void printNewDateTime(){
        //method name is 'newInstance'
            //different parameters
        date  newDate = date.newInstance(1992,6,3); 
        time myTime1 = time.newInstance(10,15,20,500);
        //1. create new DATETIME using Date and Time
        Datetime dt1 = datetime.newInstance(newDate,myTime1);
        system.debug(dt1);

        //2. create new DATETIME using year , month, day
        datetime dt2 = Datetime.newInstance(2020, 5, 12);
        //newInstance > creates new datetime midnight as per user's timezone
        system.debug('dt2 is ' + dt2);// while printing it prints as per GMT

        //3. create new DATETIME using year, month, day , hour, minute, second
        datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);// will create as per user timezone
        system.debug('dt3 ' + dt3);//print as per gmt
        //6.current datetime
        datetime dt6 = Datetime.now();
        system.debug('current datetime : ' + dt6);// which time zone it PRINTS ? GMT.

        //4. new datetime using long variable 
        datetime dt4 = datetime.newInstance(0);
        system.debug('dt4 is ' + dt4);// which datetime it will print ?

        long longTime = 91989987657764l;
        datetime dt44 = datetime.newInstance(longTime);
        system.debug('dt44 is ' + dt44);

        //5. create new datetime as GMT
        datetime dt5 = datetime.newInstanceGmt(2023, 4, 1, 10, 15, 30);
        system.debug('dt5 is ' + dt5);


    }
}