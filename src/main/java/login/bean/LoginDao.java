package login.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao {
    public static final String role[] = {"i", "c", "t", "v", "b", "ch"};
    public static final String jspPageByRole[] = {"revdashboard.jsp", "dashBoardCustom.jsp", "dashBoardTax.jsp", "dashBoardVat.jsp", "revdashboard.jsp", "revdashboard.jsp"};
    static int roleType = -1;
    public LoginDao() {
    }
    public static int getRoleType(){return roleType;}
    public static void setRoleType(int a){roleType =a;}
    public static String validate(LoginBean bean) {
        String status = null;

        try {
            Connection con = ConnectionProvider.getCon();
            System.out.println("LoginDao...............");
            PreparedStatement ps = con.prepareStatement("select * from user_auth where userid=? and password=?");
            //System.out.println("UserName & Pass"+bean.getUserName()+"  "+  bean.getPassword());
            ps.setString(1, bean.getUserName());
            ps.setString(2, bean.getPassword());
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            rs.next();
//  [ID][LastName][FirstName][Age][Salary][Cell][Email]
            EmployeeData eData = new EmployeeData(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9), rs.getString(10),rs.getString(11));
            //message.add(ps);

            //logger.info(rs.getString(2));
            System.out.println(eData.getRoleType()+" "+eData.getUserName());//+" "+eData.getPassword());

            status = new String(eData.getRoleType());//rs.next();

            for(int i=0; i< role.length;i++) {
                if(role[i].equals(status)) setRoleType(i);
            }
        } catch (SQLException e) {
            System.err.format("Login Dao : SQL State: %s\n%s : %s", e.getSQLState(), e.getMessage(), e.getErrorCode());
            messageAlert.setLoginMsgID(1);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
