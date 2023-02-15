package login.bean;

public class messageAlert {
    private static int registrationMsgID;
    private static String registrationErrorMsg;

    private static int loginMsgID;
    private static String loginErrorMsg;

    public static void messageAlert(){
        registrationMsgID =0;
        registrationErrorMsg = null;
        loginMsgID = 0;
        loginErrorMsg = null;
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
    public static int getLoginMsgID(){
        return loginMsgID;
    }
    public static void setRegistrationErrorMsg(String str){
        registrationErrorMsg = str;
    }
    public static String getRegistrationErrorMsg(){
        return registrationErrorMsg;
    }
    public static void setLoginErrorMsg(String str){
        loginErrorMsg = str;
    }
    public static String getLoginErrorMsg(){
        return loginErrorMsg;
    }
}
