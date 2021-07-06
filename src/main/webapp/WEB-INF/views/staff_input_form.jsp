<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$('#enter').click(function() {

var tech2="";		

$("input[id=tech]:checked").each(function() {

	tech2 += $(this).val();

});

System.out.println("기술들========="+tech2);

$.ajax({

	url:'insert',

    type:'post',

    data:{'tech2':tech2},

    success:function(data){

    }

});
});
/* $(document.ready(function(){
	$("#enter").click(function(){
		if($("#name").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		
		if($("#jumun1").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		
		if($("#jumin2").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		
		if($("#school").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		
		if($("#department").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		if($("#date").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
		
		if($("#tech").val().length==0){
			alert("이름을 입력하세요");
			$("#name").focus();
			return false;
		}
	})
})); */
</script>
<body>
<form action="insert" method="post">
<table border="1" >
<thead>
  <tr>
    <th colspan="6">사원 정보 등록</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>이름</td>
    <th><input type="text" name="name" id="name"></input></th>
    <td>주민번호</td>
     <th>
    <input type="text" name="jumin1" id="jumin1"></input>
    <input type="password" name="jumin2" id="jumin2"></input>
    </th>
    <td>부서</td>
    <th>
    <select name="department" id="department">
     <option value="none" hidden></option>
     <option value="1">컨설팅사업부</option>
     <option value="2">하이테크사업부</option> 
     <option value="3">SI사업부</option>
     <option value="4">반도체사업부</option>
     <option value="5">기업부설연구소</option>
     <option value="6">전략기획팀</option>
     <option value="7">경영지원팀</option>
    </select>
    </th>
  </tr>
  <tr>
    <td>학력</td>
    <td>
    <input type="checkbox"  name="school" value="1" id="school">고졸</input>
    <input type="checkbox"  name="school" value="2" id="school">전문대졸</input>
    <input type="checkbox"  name="school" value="3" id="school">일반대졸</input>
    </td>
    <td>기술</td>
    <td colspan="3">
    
    <input type="checkbox" name="tech" value="1" id="tech">Java</input>
    <input type="checkbox" name="tech" value="2" id="tech">JSP</input>
    <input type="checkbox" name="tech" value="3" id="tech">ASP</input>
    <input type="checkbox" name="tech" value="4" id="tech">PHP</input>
    <input type="checkbox" name="tech" value="5" id="tech">Delphi</input>
    </td>
  </tr>
  <tr>
    <td>졸업일</td>
    <th colspan="5">
    <input type="date" name="date" id="date"></input>
    </th>
  </tr>
</tbody> 
</table>
<div class="buttonaaa" style="margin-top:10px;">

<button id="enter">등록</button>

 <button id="reset" type="reset" >초기화</button>
</div>
</form>
</body>
</html>