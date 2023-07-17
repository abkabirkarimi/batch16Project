public with sharing class GetUserWrapper {
    public Integer total;
    public Integer skip;
    public list<UserWrapper> users;

    public class UserWrapper{
        public String username;
        public String firstName;
        public String lastName;
        public String maidenName;
        public Integer age;
        public String gender;
        public String email;
        public String phone;
        public String birthDate;
        public String password;
    }
}