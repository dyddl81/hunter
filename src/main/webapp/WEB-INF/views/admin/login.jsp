<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"			uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles"		uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="ko">
 <head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,user-scalable=no"/>
  <meta name="format-detection" content="telephone=no" />
  <meta name="title" content="Wbiz 여성기업 종압정보 포털" />
  <meta name="subject" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <title>관리자 로그인</title>
        <link href="/assets/css/admin_styles.css" rel="stylesheet" />
    </head>
    <body class="bg-secondary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form name="form" id="form" action="<c:url value="/admin/loginproc"/>" method='POST'>
                                        	<sec:csrfInput/>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="admin_id" name="admin_id" type="text" placeholder="아이디" />
                                                <label for="userId">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="admin_pw" name="admin_pw" type="password" placeholder="비밀번호" onkeyup="enterkey();"/>
                                                <label for="password">비밀번호</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="save_id" name="save_id" value="Y" type="checkbox" onclick="saveId();"/>
                                                <label class="form-check-label" for="save_id" >아이디 저장</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="btn btn-primary" href="javascript:void(0);" onclick="login();">로그인</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
        <script src="/assets/js/jquery-3.5.1.min.js"></script>
        <script src="/assets/js/jquery.cookie.js"></script>
		<script>
		     
		    /**
		     * 로그인 메세지
		     */
		    let sysMsg = '${sysMsg}';
		    if(sysMsg != '') {
		        alert(sysMsg);
		    }
		    
		    /**
		     * 로그인
		     */
			function login(){
		        let frm = document.form;
		        if(frm.admin_id.value == ''){
		        	alert('아이디를 입력하세요!');
		        	frm.admin_id.focus();
		        	return;
		        }
		        if(frm.admin_pw.value == ''){
		        	alert('비밀번호를 입력하세요!');
		        	frm.admin_pw.focus();        	
		        	return;
		        }
		        frm.submit();
			}    
		    
		    /**
		     * 엔터키
		     */
			function enterkey() {
		        if (window.event.keyCode == 13) {
		             // 엔터키가 눌렸을 때 실행할 내용
		        	login();
		        }
			}
		
		    /**
		     * 아이디 저장
		     */
			function saveId(){
				if($("input:checkbox[name='save_id']").is(":checked")){
					$.cookie("save_id", 'Y', { expires: 365, path: '/'});
					$.cookie("admin_id", $("#admin_id").val(), { expires: 365, path: '/'});
				}else{
					$.removeCookie("save_id", { path: '/' });
					$.removeCookie("admin_id", { path: '/' });
				}
			}
			
		    /**
		     * 아이디 저장 확인
		     */
			if($.cookie("save_id") == 'Y'){
				$("input:checkbox[name='save_id']").prop("checked", true);
				$("#admin_id").val($.cookie("admin_id"));
			}
			
		</script>
                
    </body>
</html>

