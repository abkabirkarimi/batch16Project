public class String_Assignment {
    public void AssignmentMethod(){
        string LocalString = 'Thanks for the session on the string';

        Integer lengthOfLs = LocalString.length();
        system.debug('length is ' + lengthOfLs);

        string uppCaseLs = LocalString.toUpperCase();
        system.debug(uppCaseLs);

        Boolean conSessLs = LocalString.contains('session');
        system.debug('The Local String contains session? ' + conSessLs);

        Boolean conSessLs1 = LocalString.contains('sessions');
        system.debug('The Local String contains sessions? ' + conSessLs1);

        Boolean conSessLs2 = LocalString.contains('SESSION');
        system.debug('The Local String contains SESSION? ' + conSessLs2);

        Integer InumOfFor = LocalString.IndexOf('for');
        system.debug(InumOfFor);

        Integer InumOfAn = LocalString.IndexOf('an');
        system.debug(InumOfAn);

        string remThe = LocalString.Remove('the');
        system.debug(remThe);

    }

}