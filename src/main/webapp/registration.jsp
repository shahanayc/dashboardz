<%--
  Created by IntelliJ IDEA.
  User: Sedna
  Date: 2/2/2023
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/main.css" rel="stylesheet" crossorigin="anonymous">
    <title>National Board of Revenue</title>
  </head>
</head>
<body>
<a href="userform.jsp">registration</a>|
<a href="login.jsp">login</a>|
<a href="logout.jsp">logout</a>|
<a href="revdashboard.jsp">Dashboard</a>


<section class="vh-880" style="background-color: #393f81;">
<%--<section class="vh-100 gradient-custom">--%>
  <div class="container py-5 h-400">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 ">Registration Form</h3>
<%--            <form>--%>
            <form id="registerForm" name="registerForm" method="post" action="registrationProcess.jsp">

              <div class="row">
                <div class="col-md-4 mb-4">

                  <div class="form-outline">
                    <input type="text" id="firstName" name="firstName" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName">First Name</label>
                  </div>

                </div>
                <div class="col-md-4 mb-4">

                  <div class="form-outline">
                    <input type="text" id="middleName" name="middleName" class="form-control form-control-lg" />
                    <label class="form-label" for="middleName">Middle Name</label>
                  </div>

                </div>
                <div class="col-md-4 mb-4">

                  <div class="form-outline">
                    <input type="text" id="lastName" name="lastName" class="form-control form-control-lg" />
                    <label class="form-label" for="lastName">Last Name</label>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="mobile" name="mobile" class="form-control form-control-lg" />
                    <label class="form-label" for="mobile">Mobile No</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="nid" name="nid" class="form-control form-control-lg" />
                    <label class="form-label" for="nid">NID</label>
                  </div>
                </div>
              </div>

<%--                <div class="col-md-6 mb-4">--%>

<%--                  <h6 class="mb-2 pb-1">Gender: </h6>--%>

<%--                  <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"--%>
<%--                           value="option1" checked />--%>
<%--                    <label class="form-check-label" for="femaleGender">Female</label>--%>
<%--                  </div>--%>

<%--                  <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"--%>
<%--                           value="option2" />--%>
<%--                    <label class="form-check-label" for="maleGender">Male</label>--%>
<%--                  </div>--%>

<%--                  <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"--%>
<%--                           value="option3" />--%>
<%--                    <label class="form-check-label" for="otherGender">Other</label>--%>
<%--                  </div>--%>

<%--                </div>--%>

              <div class="row">
                <div class="row">
                  <div class="col-12">
                    <label class="form-label select-label">Choose Position</label>
                    <select id="position" name="position" class="select form-control-lg">
                      <option value="" >Choose Position</option>
                      <option value="1">Chairman</option>
                      <option value="2">Member</option>
                      <option value="3">First Secratary</option>
                      <option value="4">Second Secratary</option>
                      <option value="5">Systems Manager</option>
                      <option value="6">Senior System Analyst</option>
                      <option value="7">System Analyst</option>
                      <option value="8">Programmer</option>
                      <option value="9">Assistant Programmer</option>
                    </select>
                  </div>
                </div>
              </div>
              <p></p>
              <div class="row">
                <div class="col-12">
                  <label class="form-label select-label">Choose Wing</label>
                  <select id="wing" name="wing" class="select form-control-lg">
                    <option value="" >Choose Wing</option>
                    <option value="i">ICT</option>
                    <option value="v">VAT</option>
                    <option value="t">TAX</option>
                    <option value="c">CUSTOMS</option>
                    <option value="b">BOARD Admin</option>
                  </select>
                </div>
              </div>
              <p></p>
              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="text" id="userName" name="userName" class="form-control form-control-lg" />
                    <label class="form-label" for="userName">User ID</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="password" id="password" name="password" class="form-control form-control-lg" />
                    <label class="form-label" for="password">Password</label>

                  </div>

                </div>
              </div>

              <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="send" />
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
