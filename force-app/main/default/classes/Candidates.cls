public class Candidates {
    public string name;
    public string gender;
    public static integer count = 0;
    public static string companyName;

    // constructor will be called automatically when
    //we create new instance
    public Candidates(){
        count++;
    }


     // non static method
    public void details(){
        //accesing non-static variables
        system.debug('name is ' +name);
        system.debug('gender is ' + gender);
         //accessing static variable
        system.debug('company name is ' + companyName);
        system.debug('---------');
        system.debug('--------');
        system.debug('count is ' + count);
        system.debug('-------');
        system.debug('******');
    }
}