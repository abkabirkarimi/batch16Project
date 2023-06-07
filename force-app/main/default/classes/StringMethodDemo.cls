public class StringMethodDemo {
    public void stringMethod1(){
        string sd = 'learning methods in apex language.';


        // 3 things to kepp in mind 
        //1. method name 
        //2. parameters
        //3. return type

        //find the lenght of above string 
        integer lengthOfStr = sd.length();
        system.debug('Lenght of string is ' + lengthOfStr);

        // check if string contains apex
        Boolean checkApex = sd.contains('apex');// case sensitive
        system.debug('string contains apex? ' + checkApex);

        string temp = 'apex';
        Boolean checkApex2 = sd.contains(temp);// yes
        system.debug('string contains Apex ' + checkApex2);
        Boolean checkApex3 = sd.contains('Apex');
        system.debug('string contains Apex ' + checkApex3);// false

        //containsIgnoreCase
        boolean checkApex4 = sd.containsIgnoreCase('ApEX');
        system.debug('string containIgnoreCase ApEX ' + checkApex4);//true

        string sdUP = sd.toUpperCase();
        system.debug(sdUP);
        system.debug('original string: ' + sd);

    }
    public void stringMethod2(){
        //trim
        string username = '   Abdul K  ';
        system.debug('original lenght ==> ' + username.length());
        string usernameTrim = username.trim();
        system.debug(usernameTrim);
        system.debug('after trim length ==> ' + usernameTrim.length());
    }
    
    public void stringMethod3(){
        string username = 'Abdul K';
        string username2 = 'abdul';

        //check if username and username2 are equal or not
        //we will use equals method -> case sensitive

        boolean check = username.equals(username2);
        system.debug('username and username2 are equal? ' + check);

        string username3 = 'Abdul K';
        boolean check2 = username.equals(username3);
        system.debug('username and username3 are equal? ' + check2);

        boolean check3 = username.equalsIgnoreCase(username3);
        system.debug('username and username3 are equalIgnoreCase? ' + check3);
    }

    public void stringMethod4(){

        string s = 'Salesforce';
        // length -> 10
        // index -> start the count like computer, start fro 0
        //s -> 0
        //a => 1
        //l -> 2
        //3 => 3
        integer indexOfo = s.indexOf('o');
        system.debug(indexOfo);

        integer indexOfS = s.indexOf('S');//->0

        integer indexOfe = s.indexOf('e');//->3

        integer indexOfz = s.indexOf('z');//->-1

        string str = 'My name is Bond. James Bond';
        integer indexOfBond = str.indexOf('Bond');
        system.debug('index of Bond ' + indexOfBond);

        integer indexOFbond2 = str.indexOf('bond');
        system.debug('index of bond ' + indexOfbond2);

    }

    public void stringMethod5(){
        string s1 = 'Welcome to Softinnovas bootcamp. Ready to learn?';

        string s2 = s1.remove('to');
        system.debug('s2 is ' + s2);
        system.debug('s1 is ' + s1);

        string s3 = s1.removeEnd('earn');// it will remove the substring FROM END if it exists 
        system.debug('s3 is ' + s3);
    }
}