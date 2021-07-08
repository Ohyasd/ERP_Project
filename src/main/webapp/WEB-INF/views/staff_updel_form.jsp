<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	     var num = document.getElementById("num").value;
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
		        url: "memberupdate",
		        data : {
		        	num : num,
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
<c:forEach items="${list}" var="list">
<table border="1" >
<thead>
  <tr>
    <th colspan="6">사원 정보 수정</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>이름</td>
     <input type="hidden" name="num" id="num" value="${list.staff_no}"></input>
    <th><input type="text" name="name" id="name" value="${list.staff_name}"></input></th>
    <td>주민번호</td>
     <th>
    <input type="text" name="jumin1" id="jumin1" value="${list.jumin_no1}"></input>-
    <input type="password" name="jumin2" id="jumin2" value="${list.jumin_no2}"></input>
    </th>
    <td>부서</td>
    <th>
    <select name="department" id="department">
     <option value="${list.department_code}">${list.department_name}</option>
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
    <c:if test="${list.school_name eq '고졸'}">
    <input type="checkbox"  name="school" value="1" id="school" checked="checked">고졸</input>
    <input type="checkbox"  name="school" value="2" id="school">전문대졸</input>
    <input type="checkbox"  name="school" value="3" id="school">일반대졸</input>
    </c:if>
     <c:if test="${list.school_name eq '전문대졸'}">
    <input type="checkbox"  name="school" value="1" id="school" >고졸</input>
    <input type="checkbox"  name="school" value="2" id="school"checked="checked">전문대졸</input>
    <input type="checkbox"  name="school" value="3" id="school">일반대졸</input>
    </c:if>
    
     <c:if test="${list.school_name eq '일반대졸'}">
    <input type="checkbox"  name="school" value="1" id="school">고졸</input>
    <input type="checkbox"  name="school" value="2" id="school">전문대졸</input>
    <input type="checkbox"  name="school" value="3" id="school" checked="checked">일반대졸</input>
    </c:if>
    
    
    
    
    </td>
    <td>기술</td>
    <td colspan="3">
    <c:if test="${list.skill_name eq 'Java'}">
    <input type="checkbox" name="tech" value="1" id="tech" checked="checked">Java</input>
    <input type="checkbox" name="tech" value="2" id="tech">JSP</input>
    <input type="checkbox" name="tech" value="3" id="tech">ASP</input>
    <input type="checkbox" name="tech" value="4" id="tech">PHP</input>
    <input type="checkbox" name="tech" value="5" id="tech">Delphi</input>
     </c:if>
     <c:if test="${list.skill_name eq 'JSP'}">
    <input type="checkbox" name="tech" value="1" id="tech" >Java</input>
    <input type="checkbox" name="tech" value="2" id="tech"checked="checked">JSP</input>
    <input type="checkbox" name="tech" value="3" id="tech">ASP</input>
    <input type="checkbox" name="tech" value="4" id="tech">PHP</input>
    <input type="checkbox" name="tech" value="5" id="tech">Delphi</input>
     </c:if>
     <c:if test="${list.skill_name eq 'ASP'}">
    <input type="checkbox" name="tech" value="1" id="tech">Java</input>
    <input type="checkbox" name="tech" value="2" id="tech">JSP</input>
    <input type="checkbox" name="tech" value="3" id="tech"checked="checked">ASP</input>
    <input type="checkbox" name="tech" value="4" id="tech">PHP</input>
    <input type="checkbox" name="tech" value="5" id="tech">Delphi</input>
     </c:if>
     <c:if test="${list.skill_name eq 'PHP'}">
    <input type="checkbox" name="tech" value="1" id="tech">Java</input>
    <input type="checkbox" name="tech" value="2" id="tech">JSP</input>
    <input type="checkbox" name="tech" value="3" id="tech">ASP</input>
    <input type="checkbox" name="tech" value="4" id="tech" checked="checked">PHP</input>
    <input type="checkbox" name="tech" value="5" id="tech">Delphi</input>
     </c:if>
     <c:if test="${list.skill_name eq 'Delphi'}">
    <input type="checkbox" name="tech" value="1" id="tech" >Java</input>
    <input type="checkbox" name="tech" value="2" id="tech">JSP</input>
    <input type="checkbox" name="tech" value="3" id="tech">ASP</input>
    <input type="checkbox" name="tech" value="4" id="tech">PHP</input>
    <input type="checkbox" name="tech" value="5" id="tech" checked="checked">Delphi</input>
     </c:if>
      
      
    </td>
  </tr>
  <tr>
    <td>졸업일</td>
    <th colspan="5">
    <input type="date" name="date" id="date" value="${list.graduate_day}"></input>
    </th>
  </tr>
</tbody> 
</table>
  </c:forEach>
<div class="buttonaaa" style="margin-top:10px;">
<button id="enter" onclick="submit()" >수정</button>
 <button id="reset" type="reset" >삭제</button>
 
</div>

</body>
</html>