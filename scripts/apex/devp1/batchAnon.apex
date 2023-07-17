AccountsBatch ab = new AccountsBatch();
Id batchId = Database.executeBatch(ab, 30);

CasesBatch cb = new CasesBatch();
Database.executebatch(cb, 50);