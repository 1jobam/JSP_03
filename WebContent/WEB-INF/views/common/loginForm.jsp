<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
<title>로그인페이지</title>
</head>
<body>
<%-- 	<form id="fm" action="login.do" method="post">
		아이디 : <input type="text" name="id" value="${id}"/><br/>
		패스워드 : <input type="password" name="pwd"/><br/>
		<input type="submit" value="로그인" onclick="login();"/>
	</form> --%>
	
	
	<div class="col-md-12">
         <!-- jquery validation -->
         <div class="card card-primary">
           <div class="card-header">
             <h3 class="card-title">Exam JSP_03 <small>로그인</small></h3>
           </div>
           <!-- /.card-header -->
           <!-- form start -->
           <form role="form" id="quickForm" novalidate="novalidate" action="login.do" method="post">
             <div class="card-body">
               <div class="form-group">
                 <label for="exampleInputEmail1">아이디</label>
                 <input type="text" name="id" class="form-control" id="exampleInputEmail1" placeholder="아이디">
               </div>
               <div class="form-group">
                 <label for="exampleInputPassword1">패스워드</label>
                 <input type="password" name="pwd" class="form-control" id="exampleInputPassword1" placeholder="패스워드">
               </div>
             </div>
             <!-- /.card-body -->
             <div class="card-footer">
               <a href="#" class="btn btn-primary" onclick="login();">로그인</a>
               <a href="#" class="btn btn-danger" onclick="winclose();">종료</a>
             </div>
           </form>
         </div>
         <!-- /.card -->
     </div>

	
</body>

<!-- jQuery -->
<script src="<%= request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%= request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%= request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>

<script>

	if("${param.id}" != ""){
		alert("아이디 혹은 패스워드가 일치하지 않습니다");
	}
	
	function login(){
		var idchk = quickForm.id.value;
		var pwdchk = quickForm.pwd.value;
		
		if(!idchk){
			alert("아이디를 입력하세요");
		}else if(!pwdchk){
			alert("비밀번호를 입력하세요");
		}else{
			quickForm.submit();
		}
	}
	
	function winclose(){
		window.open('about:blank','_self').self.close();
	}

</script>

</html>