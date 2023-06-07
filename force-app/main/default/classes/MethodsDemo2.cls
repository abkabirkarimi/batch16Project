public class MethodsDemo2 {
   // retun type + parameterized methods
   public string returnMessage(string name){
    system.debug('code reached inside method');
    string returnStr = ' Hi ' + name + ', nice to meet you';
    return returnStr;
   }

   public Integer returnMessage2(string name){
      string printStr = 'hi ' + name + ', nice to meet you.';
      system.debug(printStr);
      integer l = printStr.length();
      return l;
      
   }

   public boolean nameContainsA(string str){
      boolean checkA = str.containsIgnoreCase('a');
      return checkA;
   }
}