<%--
  Created by IntelliJ IDEA.
  User: Sedna
  Date: 2/28/2023
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="api.dateReportBean"%>
<%@page import="login.bean.LoginDao"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="api.globals" %>
<%@ page import="login.bean.messageAlert" %>
<jsp:useBean id="DateSearchFormObj" class="api.dateReportBean"/>
<jsp:setProperty property="*" name="DateSearchFormObj"/>

<%
    String showPage = "<jsp:include page=\"revdashboard.jsp\"></jsp:include>";
    if(LoginDao.getRoleType()>=0) {
        String rolePage = LoginDao.jspPageByRole[LoginDao.getRoleType()];
        int rt = LoginDao.getRoleType();
        //showPage = "<jsp:include page=\"" + LoginDao.jspPageByRole[rt] + "\"></jsp:include>";
        String status = LoginDao.role[LoginDao.getRoleType()];
        //out.print(showPage);
//        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
//        System.out.println("\nEnd Date::::::::     "+ formatter.format( DateSearchFormObj.getEndDate()));
%>

<%
    String stDt = request.getParameter("date_from");
    String endDt = request.getParameter("date_to");
//    out.print( request.getParameter("date_from") +"=> ");
//     out.print( request.getParameter("date_to") +"=> ");
    Date startDate =new SimpleDateFormat("yyyy-MM-dd").parse(stDt);
    Date endDate =new SimpleDateFormat("yyyy-MM-dd").parse(endDt);
//    out.print( date1 + "=> ");
    if(startDate.compareTo(endDate) < 0) {
        api.globals.setStartDateGlobal(startDate);
        api.globals.setEndDateGlobal(endDate);
        api.globals.setstEndDate(true);
    }
    else
    {
        api.globals.setstEndDate(false);
        messageAlert.setDateRangeErrorID(1);
    }
//    SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
//    out.print("=> another format: "+ formatter.format(startDate));
%>
<%--<jsp:include page="revdashboard.jsp"></jsp:include>--%>


<%
    String r1= "i";
    String r2= "c";
    String r3= "t";
    String r4= "v";
    String r5= "b";
    String r6= "ch";
//    out.println("revdashboard"+status);
    if(r1.equals(status) || r5.equals(status) || r6.equals(status)){
//    out.println("revdashboard");
%>

<jsp:include page="revdashboard.jsp"></jsp:include>
<%
} else if (r2.equals(status)) {
//    out.println("dashBoardCustom");
%>
<jsp:include page="dashBoardCustom.jsp"></jsp:include>
<%
} else if (r3.equals(status)) {
//    out.println("dashBoardTax");
%>
<jsp:include page="dashBoardTax.jsp"></jsp:include>
<%
}else if (r4.equals(status)) {
//        out.println("dashBoardVat");
%>
<jsp:include page="dashBoardVat.jsp"></jsp:include>
<%
    }
%>

<%
    }
%>

