<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>收件箱</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {

        });
        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>

<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/email/list">收件箱</a></li>
</ul>
<form:form id="searchForm" modelAttribute="product" action="${ctx}/email/list" method="post"
           class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <label>发送人,主题 ：</label>
    <form:input path="name" htmlEscape="false" maxlength="60" class="input-search"/>
    <label>开始时间：</label>
    <input id="createDateStart" name="createDateStart" type="text" readonly="readonly" maxlength="20"
           class="input-small Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
    <label>结束时间：</label>
    <input id="createDateStart" name="createDateStart" type="text" readonly="readonly" maxlength="20"
           class="input-small Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
    &nbsp;&nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/>
</form:form>
<tags:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th>发送人</th>
        <th>主题</th>
        <th>时间</th>
        <th>操作</th>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="recMail">
        <tr>
            <td><a href="${ctx}/factory/product/form?id=${product.id}">${product.name}</a></td>
            <td>${recMail.remarks}</td>
            <td>${recMail.remarks}</td>
            <td>
                <a href="${ctx}/factory/product/form?id=${recMail.id}">修改</a>
                <a href="${ctx}/factory/product/delete?id=${recMail.id}"
                   onclick="return confirmx('确认要删除该产品吗？', this.href)">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>
