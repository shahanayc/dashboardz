<%@ page import = "java.io.*,java.util.*" %>
<%@ page import="api.eTINCountApi"%>
<%@ page import="api.eReturnCountPaymenttApi"%>
<%@ page import="api.globals" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="login.bean.messageAlert" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/main.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #D4E6F1 ;">
    <div class="container-fluid">
        <img src="img/logo.png" alt="nbr logo" class="logo">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <h2 style="margin-left: 12%;">
            Welcome to Revenue Dashboard
        </h2>
        <div class="collapse navbar-collapse text-right flex-grow-1" id="navbarText">

            <ul class="navbar-nav  ms-auto flex-nowrap">
                <a href="logout.jsp">logout</a>

<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#">Tax</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#">VAT</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#">Customs</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#">Summary</a>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</nav>

<%--<label for="birthday">Test:</label>--%>
<%--<input type="date" id="birthday" name="birthday">--%>
<%--<input type="submit">--%>



<%--<div>--%>
<%--    &nbsp;<div class="content">--%>
<%--    <div class="container text-left">--%>
        <div class="row justify-content-center">
            <div class="col-lg-7">
<%--                <form action="#" class="row">--%>
                    <form class="row" id="DateSearchFormObj" name="DateSearchFormObj" method="post" action="dateWiseReportProcess.jsp">
                        <p class="text-danger">
                            <% if(messageAlert.getDateRangeErrorID()>0){
                                out.print(messageAlert.getDateRangeErrorMsg());
                                messageAlert.setDateRangeErrorID(0);} %>
                        </p>
                        <div class="col-auto">
                        <div class="form-group">
                            <label for="date_from">From</label>
                            <input type="date" class="form-control" name ="date_from" id="date_from" placeholder="Start Date" class="disableFuturedate"
                                   value="<% if(api.globals.isStEndDateSet())
                          {   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                              out.print(formatter.format(globals.StartDateGlobal)); }
                              else out.print(""); %>" >
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="form-group">
                            <label for="date_to">To</label>
                            <input type="date" class="form-control" name ="date_to" id="date_to" placeholder="End Date" class="disableFuturedate"
                                   value="<% if(api.globals.isStEndDateSet())
                          {   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                              out.print(formatter.format(globals.EndDateGlobal)); }
                              else out.print(""); %>">
                        </div>
                    </div>

                    <div class="col-auto">
                        <div class="form-group">
                            <p></p>
                        <button class="btn btn-outline-success" type="submit" style="line-height: 2.1">Search</button>
                        </div>
                    </div>
                </form>
                <p></p>
            </div>
        </div>
<%--    </div>--%>
<%--</div>--%>


<%--</div>--%>
<div class="container overflow-hidden">

    <div class="row gy-5">
        <div class="col-6 gapReducer ">
            <div class="p-3 border bg-light vatbg">
                <img src="img/circle.svg" class="card-img-absolute" alt="circle">
                <h4>Value Added Tax (VAT)
                    <div class="btn-group float-right mt-2" role="group">
                        <a class="btn btn-secondary btn-md" href="#">
                            <i class="fa fa-plus" aria-hidden="true"></i> L1</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L2</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L3</a>
                    </div>
                </h4>
                <p>BIN Registration up-to-date          :
                    <%
                        //int etinCount = com.example.demo3.apiConEtinCount.getETinCountTillDate();
                        out.print(api.iVASBINCountApi.getBinCountTillToday() +" ");
                    %>
                </p>
                <p>BIN Registration Done in Above Period:
                    <%  api.iVASByDateRangeApi.setIvasRegistrationFY();
                        out.print(api.iVASByDateRangeApi.getIvasRegInRange());   %>
                </p>
                <p>Return Submitted last month          :
                    <% out.print(api.iVASByDateRangeApi.getReturnCountLastMon() +" "); %>
                </p>
                <p>Revenue Collected up-to-date        :
                    <% out.print(api.iVASBINCountApi.getIvasCollectionMon()+" Crore BDT"); %> </p>
                <p>Cumulative Revenue Collected This FY :
                    <% out.print(api.iVASByDateRangeApi.getIvasCollectionFY()+" Crore BDT"); %> </p>
                <p> IBAS++ Collections                  :
                    <% out.print(api.iVASBINCountApi.getIvasIBASCollection()+" BDT"); %></p>
            </div>
        </div>
        <div class="col-6 gapReducer">
            <div class="p-3 border bg-light taxbg justify-content-between">
                <img src="img/circle.svg" class="card-img-absolute" alt="circle">
                <h4>Income Tax

                    <div class="btn-group float-right mt-2" role="group">
                        <a class="btn btn-secondary btn-md" href="#">
                            <i class="fa fa-plus" aria-hidden="true"></i> L1</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L2</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L3</a>
                    </div>
                </h4>
                <p>e-TIN  Registration up-to-date          :
                <%
                    eTINCountApi eTInObj = new eTINCountApi();
                    int etinCount = eTInObj.getETinCountTillDate();
                    out.print(etinCount);
                %>
                </p>
                <p>e-TIN  Registration Done in above period:
                    <%
                        out.print(eTINCountApi.getTinReturnCount());

                    %></p>
                <p>Total Return Submitted in above period  :
                    <%  eReturnCountPaymenttApi eRetObj = new eReturnCountPaymenttApi();
                        int eRetTotal = eRetObj.getERetTotalSubmission();
                        out.print(eRetTotal);
                    %></p>
                <p>Total Revenue Collection in above period:
                    <% float eRetTotalPay = eRetObj.getERetTotalPayment();
                        out.print(eRetTotalPay);
                    %></p>
                <p>Cumulative Revenue Collected This FY    :
                    <% DecimalFormat decfor = new DecimalFormat("0.00");
                        double amount = eTINCountApi.getTinCollectionFY()/1000000000;
                        out.print(decfor.format(amount)+" BDT"); %></p>
                <p> IBAS++ Collections                     :
                    <% out.print(eTINCountApi.getTinIBASCollection() + " BDT"); %></p>
            </div>
        </div>
        <div class="col-6 gapReducer">
            <div class="p-3 border bg-light cusbg">
                <img src="img/circle.svg" class="card-img-absolute" alt="circle">
                <h4>Customs
                    <div class="btn-group float-right mt-2" role="group">
                        <a class="btn btn-secondary btn-md" href="#">
                            <i class="fa fa-plus" aria-hidden="true"></i> L1</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L2</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L3</a>
                    </div>
                </h4>
                <p>Total Revenue Collection in above period:</p>
                <p>Cumulative Revenue Collected This FY    :</p>
                <p> IBAS++ Collections                     :   </p>
            </div>
        </div>
        <div class="col-6 gapReducer">
            <div class="p-3 border bg-light summarybg">
                <img src="img/circle.svg" class="card-img-absolute" alt="circle">
                <h4>Summary
                    <div class="btn-group float-right mt-2" role="group">
                        <a class="btn btn-secondary btn-md" href="#">
                            <i class="fa fa-plus" aria-hidden="true"></i> L1</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L2</a>
                        <a class="btn btn-md btn-secondary" href="#">
                            <i class="fa fa-flag" aria-hidden="true"></i> L3</a>
                    </div>
                </h4>
                <div class="row">
                    <div class="col">
                        <p>Total Collection Target : 100 Crore</p>
                        <p>Total Revenue Collection:
                            <% out.print(api.iVASByDateRangeApi.getSummaryCollection()+ " Crore BDT"); %>
                        </p>
                        <p>IBAS++ Collection       :
                            <% out.print(api.iVASByDateRangeApi.getSummaryIBAS_Collection()+ " BDT"); %>
                        </p>
<%--                    </div>--%>
<%--                    <div class="col">--%>
<%--                        <p>Difference  :</p>--%>
<%--                        <p> Achievement: by $</p>--%>
<%--                        <p>Achievement : by %</p>--%>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>
    $(function () {
        $("#date_from").datepicker();
    });
</script>
</html>