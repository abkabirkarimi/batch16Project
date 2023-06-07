public class MethodsDemo {
    //return type is mandatory.
   public void welcomeMessage(){
    system.debug('Hi ther, welcome to the world');
   }
   // print dynamic message
   // parameter -> string datatype
   public void samplePrintMessage(string m){    

    system.debug(m); 
   }

   public void newMessage(string name){
    system.debug('Hi ' + name +', welcome to the world of apex, buddy');
   }
}