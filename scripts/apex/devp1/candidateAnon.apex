Candidates.companyName = 'Softinnovas';

Candidates c1 = new Candidates();

c1.name = 'Jerry';
c1.gender = 'Male';
c1.details();


Candidates c2 = new Candidates();

c2.name = 'George';
c2.gender = 'Male';
c2.details();

Candidates c3 = new Candidates();

c3.name = 'Elaine';
c3.gender = 'Female';
c3.details();


Candidates c4 = new Candidates();
c4.name = 'Sara';
c4.gender = 'female';
c4.details();

//we cannot access static member via instance
// system.debug('c3 company name is ' + c3.companyName);

system.debug('company name is ' + Candidates.companyName);

Candidates.companyName = 'Salesforce';
system.debug('after change company name is ' + Candidates.companyName);

c1.details();
c2.details();
c3.details();


//track number of candidates created in one execution