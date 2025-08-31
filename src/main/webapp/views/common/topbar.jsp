<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<div class="col-sm-6">
    <ul class="list-inline right-topbar pull-right">
        <c:choose>
            <c:when test="${sessionScope.account == null}">
                <li><a href="${pageContext.request.contextPath}/views/login.jsp">Đăng nhập</a> | 
                    <a href="${pageContext.request.contextPath}/views/register.jsp">Đăng ký</a></li>
            </c:when>
            <c:otherwise>
                <li>Xin chào, ${sessionScope.account.fullName} | 
                    <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
