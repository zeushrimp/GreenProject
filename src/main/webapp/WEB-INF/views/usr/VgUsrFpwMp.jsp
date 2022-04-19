<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#modalpw {
  position:relative;
  width:100%;
  height:100%;
  z-index:1;
  display:none;
}

#modalpw h2 {
  margin:0;   
}

#modalpw button {
  display:inline-block;
  width:100px;
  margin-left:calc(100% - 100px - 10px);
}

#modalpw .modalpw_content {
  width:300px;
  margin:100px auto;
  padding:20px 10px;
  background:#fff;
  border:2px solid #666;
}

#modalpw .modalpw_layer {
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:rgba(0, 0, 0, 0.5);
  z-index:-1;
}   
</style>
<script>
    document.getElementById("modalpw_opne_btn").onclick = function() {
        document.getElementById("modalpw").style.display="block";
    }
   
    document.getElementById("modalpw_close_btn").onclick = function() {
        document.getElementById("modalpw").style.display="none";
    }   
</script>
<body>
<div id="root">
   
    <button type="button" id="modalpw_opne_btn">모달 창 열기</button>
       
</div>
<div id="modalpw">
   
    <div class="modalpw_content">
        <h2>비밀번호</h2>
       
        <p>비밀번호 찾기 모달</p>
       
        <button type="button" id="modalpw_close_btn">모달 창 닫기</button>
       
    </div>
   
    <div class="modalpw_layer"></div>
</div>

</body>
</html>