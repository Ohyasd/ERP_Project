<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
.buttonaaa{
	
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<table border="1">
<thead>
  <tr>
    <th colspan="6">사원 정보 검색</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>이름</td>
    <th><input type="text"></input></th>
    <td>성별</td>
    <th>
    <input type="checkbox" name="man">남</input>
    <input type="checkbox" name="girl">여</input>
    </th>
    <td>부서</td>
    <th>
    <select>
    <option>컨설팅사업부</option>
    <option>하이테크사업부</option>
    <option>SI사업부</option>
    <option>반도체사업부</option>
    <option>기업부설연구소</option>
    <option>전략기획팀</option>
    <option>경영지원팀</option>
    </select>
    </th>
  </tr>
  <tr>
    <td>학력</td>
    <td>
    <input type="checkbox">고졸</input>
    <input type="checkbox">전문대졸</input>
    <input type="checkbox">일반대졸</input>
    </td>
    <td>기술</td>
    <td colspan="3">
    
    <input type="checkbox">Java</input>
    <input type="checkbox">JSP</input>
    <input type="checkbox">ASP</input>
    <input type="checkbox">PHP</input>
    <input type="checkbox">Delphi</input>
    </td>
  </tr>
  <tr>
    <td>졸업일</td>
    <th colspan="5">
    
    날짜선택
    </th>
  </tr>
</tbody>
</table>
<div class="buttonaaa" style="margin-top:10px;">
<button id="select" style="margin-left: 140px; width: 200px;">검색</button>
 <button id="allselect" style="width: 120px; margin-left: 50px;">전부검색</button> 
 <button id="reset" type="reset" >초기화</button>
  <button id="enter">등록</button>
</div>
</form>
</body>
</html>