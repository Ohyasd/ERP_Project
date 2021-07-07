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
function submit() {
	 
	     
	     var name = document.getElementById("name").value;
	     var jumin1 =document.getElementById("jumin1").value;
	     var jumin2 =document.getElementById("jumin2").value;
	     var date=document.getElementById("date").value;
	     var department=$("#department").val();
	     var tech=$("input:checkbox[id='tech']:checked").val();
	     var school=$("input:checkbox[id='school']:checked").val();
	
	  if (name == ""){
	    alert("이름을 입력해주세요");
	    return false;
	  }if(jumin1==""){
		  alert("주민번호를 입력해주세요");
		  return false;
	  }if(jumin2==""){
		  alert("주민번호 뒷자리를 입력해주세요");
		  return false;
	  }if(department==""){
		  alert("부서를 선택해주세요");
		  return false;
	  }
	  if(school==""){
		  alert("학력을 선택해주세요");
		  return false;
	  }
	  if(tech==""){
		  alert("기술을 선택해주세요");
		  return false;
	  }if(date==""){
		  alert("졸업일을 선택해주세요");
		  return false;
	  }
	 
	  else{
		  $.ajax({
		        type: "post", 
		        url: "",
		        data : {
					name : name,
					jumin1 : jumin1,
					jumin2 : jumin2,
					date : date,
					department : department,
					tech : tech,
					school : school
				},
				error : function(error) {
					console.log("error");
				},
				success : function(data) {
					window.close();
					console.log("success");

				}
		    });
	  }
	  
	}
	
</script>
<body>

<table border="1" >
<thead>
  <tr>
    <th colspan="6">사원 정보 수정</th>
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
     <option value="" hidden></option>
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

<button id="enter" onclick="submit()" >수정</button>
 <button id="reset" type="reset" >삭제</button>
 
</div>

</body>
</html>