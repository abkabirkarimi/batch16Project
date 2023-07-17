public class Employee {
   private string name;
   private decimal salary;
   
   public void details(){
    system.debug(name);
    system.debug(salary);
   }
   //set method
   public void setName(string name){
    this.name = name;
   }
   //get method
   public string getName(){
    return this.name;
   }

   //set method for salary variables
   public void setSalary(decimal salary){
    if (salary>=8000 && salary<=50000) {
        this.salary = salary;
    } else {
        this.salary = 0;
        system.debug('salary is not in valid range.Be in limits budy');
    }
   }

   public decimal getSalary(){
    return this.salary;
   }
}