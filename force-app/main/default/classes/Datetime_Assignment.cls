public class Datetime_Assignment {
    public void diffofDate(){
        date varTomorrowDate = date.newInstance(2023, 4, 6);
        date varTodayDate = date.newInstance(2023, 4, 5);
        integer dayDiff = varTodayDate.daysBetween(varTomorrowDate);
        system.debug(dayDiff);
    }

    public void timeeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2023, 4, 6, 7, 0, 0);
        Datetime var10DaysDateTime = Datetime.newInstance(2023, 4, 16, 9, 0, 0);

        Datetime  varDatetimeLong = Datetime.newInstance(12339874361L);
        system.debug(varDatetimeLong);

        Datetime newDateTime = varTomorrowDatetime.addDays(7);
        system.debug(newDateTime);

        Datetime newDate2 = var10DaysDateTime.addDays(10);
        system.debug(newDate2);

    }
}