public class Bike {
    private string bikeNumber;
    public string name;
    public string price;

    public void details(){
        // local variable
        date todayDate = date.today();
        system.debug('bike number is ' + bikeNumber);
        system.debug('bike name is ' + name);
        system.debug('bike price ' + price);
    }
}