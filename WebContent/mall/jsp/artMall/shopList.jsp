<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="ui-tab-content" id="itemList">
	<c:if test="${not empty shopList }">
	<c:forEach var="shop" items="${shopList }">
	<a onClick=shopInfo(${shop.id})>
		<div class="baoliao_content">
		    <div class="bl_img"><img src="${shop.head_url }" /></div>
		    <div class="bl_right">
		        <div class="bl_title">
			        <c:if test="${shop.is_customized == 1 }">
			        <span class="bl_type">定制</span>
			        </c:if>
		        	${shop.name }
		        </div>
		        <div class="bl_note">${shop.introduction}</div>
		        <div class="bl_tag">
		            <div class="bl_price">艺术家:</div>
		            <div class="bl_price">${shop.artist.real_name }</div>
		            <div class="bl_time">${shop.time }</div>
		            <div class="bl_mall">${shop.category.name }</div>
		        </div>
		    </div>
		</div> 
	</a>
	</c:forEach>
	</c:if>

</div>
<div class="bl_more" id="moreBtn"><a onClick=loadMoreShop()>加载更多</a></div>
</body>
</html>