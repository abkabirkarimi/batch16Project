public class StudentMarksheet {
    string firstName;
    string lastName;
    integer mathematics;
    integer english;
    integer chemistry;
    static string schoolName;

    Public StudentMarksheet(){
        schoolName = 'Salesforce Public School';
    } 

    public void setfirstName(string firstname){
        this.firstName = firstname;
    }
    public void getfirstName(){
        return firstName;
    }
    public void setlastName(string lastname){
        this.lastName = lastname;
    }
    public void getlastName(){
        return lastName;
    }

    public void setMarks(integrer mathematics,integer english,integer chemistry ){
        this.mathematics = mathematics;
        this.english = english;
        this.chemistry = chemistry;
    }

    public void showMarksheet(){
        system.debug('school name is ' + schoolName);
        system.debug('first name is ' + firstName);
        system.debug('last name is ' + lastName);
        system.debug('mark at mathematics is ' + mathematics);
        system.debug('mark at english is ' + english);
        system.debug('mark at chemistry is ' + chemistry);
        
        integrer sumOfMarks = mathematics + english + chemistry;
         if(sumOfMarks>=120){
            system.debug('youare passed');
         }else if(sumOfMarks<120){
            system.debug('you need to study more');
         }
    }
}