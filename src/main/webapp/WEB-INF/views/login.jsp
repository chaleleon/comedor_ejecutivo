<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="static/css/login.css" type="text/css" rel="stylesheet" />
          <link rel="stylesheet" href="static/AdminLTE-3.0.1/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="static/AdminLTE-3.0.1/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="static/AdminLTE-3.0.1/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        <title>Login Form</title>
    </head>
  
     <body style="background-image: url('static/images/comedor_ejecutivo.png'); background-repeat: no-repeat;background-size: 1680px 1050px;" class="hold-transition login-page"> 
      <div class="login-box">

  <div class="login-logo">
   
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
        
          <c:url value="/login" var="loginUrl"/>

                <form action="${loginUrl}" method="post">

                    <c:if test="${param.error != null}">
                        <p class="error">Usuario y/o password incorrectos, intentalo nuevamente.</p>
                    </c:if>

                    <c:if test="${param.logout != null}">
                        <p class="logout">La sesión ha sido cerrada correctamente.</p>
                    </c:if>
      <p class="login-box-msg"><b>Sistema de Auto Gestión del Comedor Ejecutivo</b> SIGLAS_DE_EMPRESA</p>

   
        <div class="input-group mb-3">
         
           <input type="text" class="form-control" placeholder="Usuario" id="username" name="username"/>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          
          <input type="password"  class="form-control" placeholder="Password" id="password" name="password"/>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
         
          <!-- /.col -->
          <div class="col-5">
            <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      
    
    </div>
    <!-- /.login-card-body -->
   
  </div>
   
</div>
<!-- /.login-box -->
           
                

  
<!-- jQuery -->
<script src="static/AdminLTE-3.0.1/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="static/AdminLTE-3.0.1/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="static/AdminLTE-3.0.1/dist/js/adminlte.min.js"></script>
    </body>
</html>
