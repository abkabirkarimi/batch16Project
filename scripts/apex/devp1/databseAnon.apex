List<account> listAcc = new list<account>{
            new account(name = 'May', phone = '7775556666', Industry = 'Energy'),// good guy
            new account(name = 'June'),// good guy
            new account(name = 'Sunday', Industry = 'Energy'),// good guy
            new account() //bad guy
        };
        //insert listAcc; // how many records  will insert ? Nothing
            // list, allOrNothing
        //Database.insert(listAcc, true);

        list<Database.SaveResult> allResults = Database.insert(listAcc, false);//this will insert good ones, and NOT INSERT bad ones - NOT through error

        for (Database.SaveResult res : allResults) {
            if (res.isSuccess()) {
                system.debug('record inserted successfuly. Record id is ' + res.getId());
            }else {
                system.debug('NOT success. ERROR is ; ' +res.getErrors());
            }
        }

        List<database.SaveResult> r2 = database.update(l2, false);
        list<database.DeleteResult> r3 = database.delete(lids, false);
        list<database.UndeleteResult> r4 = database.undelete(lids, false);

