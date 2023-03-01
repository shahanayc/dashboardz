package login.bean;

public class messageAlert {
    private static int registrationMsgID;
    private static String[] registrationErrorMsg = { "","UserID already exists! Please try different one"};
    private static int loginMsgID;
    private static int dateRangeErrorID;
    private static String[] loginErrorMsg = { "","Invalid UserId or Password! Please try again."};

    private static String[] dateRangeErrorMsg = { "","Start Date should be previous date of End Date. Please select date again."};

    public static void messageAlert(){
        registrationMsgID =0;
        loginMsgID = 0;
        dateRangeErrorID =0;
    }

    public static void setRegistrationMsgID(int id){
        registrationMsgID = id;
    }
    public static int getRegistrationMsgID(){
        return registrationMsgID;
    }
    public static void setLoginMsgID(int id){
        loginMsgID = id;
    }

    public static void setDateRangeErrorID(int id){
        dateRangeErrorID = id;
    }
    public static int getLoginMsgID(){
        return loginMsgID;
    }

    public static int getDateRangeErrorID(){
        return dateRangeErrorID;
    }
    public static String getRegistrationErrorMsg(){
        return registrationErrorMsg[registrationMsgID];
    }
    public static String getLoginErrorMsg(){
        return loginErrorMsg[loginMsgID];
    }

    public static String getDateRangeErrorMsg(){
        return dateRangeErrorMsg[loginMsgID];
    }
}
