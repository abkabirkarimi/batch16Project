list<account> listAcc = new list<account>();
for (Integer i = 0; i < 3; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;

list<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;


//account a = new Account();
//a.name = 'acc trigger 06';
//insert a;