public class SetDemo2 {
    public static void setToUpperCase(){
        // set of string
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('LISBON');
        // it prints in alphabetic order.
        system.debug('cities se ' + cities);

        //convert each elements to uppercase and add in new set
        set<string> citiesUP = new Set<String>();

        //for each loop on CITIES SET
        for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citiesUP.add(temp);
            citiesUP.add(eachCity.toUpperCase());
        }
        system.debug('uppercase cities ==> ' +citiesUP);
    }

    public static void setInteger2(){
        Set<Integer> setInt = new Set<Integer>{1,4,5,6,7,8,9,10};
        //print 
            //6
            //9
            //10
        for (integer i : setInt) {
            system.debug(i + 5);
        }
    }
}