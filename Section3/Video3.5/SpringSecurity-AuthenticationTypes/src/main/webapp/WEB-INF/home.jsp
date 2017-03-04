<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Security-AuthenticationTypes</title>
</head>
<body>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
		Welcome : ${pageContext.request.userPrincipal.name} |	
		<div style="display: inline-block;">
		<c:url value="/logout" var="logOutUrl"/>
    	<form:form name="form" action="${logOutUrl}" method="post">
            <input type="submit" value="log Out" />
    	</form:form>
		</div>		
 		</h2>
		<p>Your Session id is: "${pageContext.request.session.id}"</p>
	</c:if>

</body>
</html>