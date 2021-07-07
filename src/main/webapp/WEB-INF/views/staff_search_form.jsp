<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.List"%>
<%@ page import="com.dto.MemberDTO" %>

<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#memberinsert").click(function(){ //리뷰쓰기 팝업창구현
		 var url= "insertpage";
				var name = "popup insert"
				var option = "width = 900, height=300, top=100,left=200";
				window.open(url, name, option);
			})
			
			/* $("#updatebutton").click(function(){ //사원 정보/수정 팝업창구현
				var num = document.getElementById("staff_no").innerText;
				var name=document.getElementById("staff_name").innerText;
				var gendar=document.getElementById("gendar").innerText;
				var department=document.getElementById("department").innerText;
				var graduate=document.getElementById("graduate").innerText;
			 
		        var url= "updatepage?num="+num;
				var name = "popup update"
				var option = "width = 900, height=300, top=100,left=200";
				window.open(url, name, option);
			}); */
		
			
		
	});
	function updateclick(num){
		//var num = document.getElementById("staff_no").innerText;
		//var num=$("#staff_no").html();
	 
        var url= "updatepage?num="+num;
		var name = "popup update"
		var option = "width = 900, height=300, top=100,left=200";
		window.open(url, name, option);
	}
	
	
			</script>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="select" method="post">
<table border="1" >
<thead>
  <tr>
    <th colspan="6">사원 정보 검색</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>이름</td>
    <th><input type="text" name="name"></input></th>
    <td>성별</td>
     <th>
    <input type="checkbox" name="sex" value="남">남</input>
    <input type="checkbox" name="sex" value="여">여</input>
    </th>
    <td>부서</td>
    <th>
    <select name="department">
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
    <input type="checkbox"  name="school" value="1">고졸</input>
    <input type="checkbox"  name="school" value="2">전문대졸</input>
    <input type="checkbox"  name="school" value="3">일반대졸</input>
    </td>
    <td>기술</td>
    <td colspan="3">
    
    <input type="checkbox" name="tech" value="1">Java</input>
    <input type="checkbox" name="tech" value="2">JSP</input>
    <input type="checkbox" name="tech" value="3">ASP</input>
    <input type="checkbox" name="tech" value="4">PHP</input>
    <input type="checkbox" name="tech" value="5">Delphi</input>
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
<button id="select" type="submit" style="margin-left: 140px; width: 200px;">검색</button>
 <input type="button" value="전부검색" id="allselect" style="width: 120px; margin-left: 50px;"  onClick="location.href='selectall'"></input> 
 <button id="reset" type="reset" >초기화</button>
</div>
</form>
<button id="memberinsert">등록</button>


          
 
<!-- 사원정보 뿌려주기 시작 -->

<table border="1" style="margin-top: 30px; height: auto; width: 617px; text-align: center;">

<thead>
  <tr>
    <th>번호</th>
    <th>이름</th>
    <th>성별</th>
    <th>부서</th>
    <th>졸업일</th>
    <th> </th>
  </tr>
</thead>

<c:forEach items="${list}" var="list">
<tbody>

  <tr>

    <td id="staff_no">${list.staff_no}</td>
    <td >${list.staff_name}</td>
    <td >${list.gendar}</td>
    <td >${list.department_name}</td>
    <td >${list.graduate_day}</td>
    <td><button onclick="updateclick(${list.staff_no})">수정/삭제</button></td>


  </tr>
    </c:forEach>

</tbody>
</table>


</body>
</html>