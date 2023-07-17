BankAccount b1 = new bankaccount();//new instace of the class, object.
b1.accountNumber = '123465798';
//b1.balance = 2500;
b1.setBalance(2500);
b1.printDetails();


system.debug('===');

BankAccount b2 = new bankaccount();//new instace of the class, object.
b2.accountNumber = '9999888777';
//b1.balance = 2500;
b2.setBalance(8500);
b2.printDetails();

BankAccount b3 =  new BankAccount('44455566', 'Jane', 5500, 'BOA');
b3.setBalance(3000);
b3.deposit(5000);
b3.deposit(2000);
b3.deposit(-1000);
b3.printDetails();
