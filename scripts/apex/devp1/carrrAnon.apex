Carrr bm = new Carrr();
bm.details();

Carrr bm2 = new Carrr(2020);
bm2.details();

Carrr bm3 = new Carrr('ABC1003','BMW X3',
'Black',2021,40000);
//bm3.details();

Carrr ford = new Carrr('ABC1002','Ford mustang',
'Red',2012,30000);
//ford.details();

carrr tesla = new carrr('ABC10003', 'Tesla model Y', 'silver',2020, 64000);

carrr tesla = new carrr('ABC10003', 'Tesla Model x', 'silver', 2020, 65000);
string teslaName = tesla.name;//this is private
string teslaColor = tesla.color;
system.debug(teslaName + ' color is ' + teslaColor);

