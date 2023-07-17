public class Loop_assignment {
    // print 1 to n
    public integer whileLoopMethod(integer n){
        integer i = 1;
        while (i<=n) {
            system.debug(i);
            i++;
            
        }
        return n;

    }

    public void printEven(){
        for (Integer i = 1; i <= 100; i++) {
            integer remainder = math.mod(i,2);
            if(remainder == 0){
                system.debug(i);
            }
        }

    }

    public integer printPower(integer n){
        integer result = 1;
        for (Integer i = 0; i < n; i++) {
            result*=n;
            system.debug(result);
            
        }
        return result;
    }
}