public class Employee2 {
    public string name;
    public decimal salary;
    public static decimal minSalary = 5000;

    public Boolean isSalaryAboveMin(){
        boolean check = (salary > minSalary);
        return check;
    }

}