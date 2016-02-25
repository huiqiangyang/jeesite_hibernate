<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>试卷管理</title>
    <meta name="decorator" content="default"/>
    <%@include file="/WEB-INF/views/include/dialog.jsp" %>
    <style type="text/css">
        .sort {
            color: #0663A2;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            // 表格排序
            tableSort({callBack: page});
        });

        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").attr("action", "${ctx}/exam/paper").submit();
            return false;
        }
    </script>
</head>
<body>

<ul class="nav nav-tabs">
    <li class="active"><a href="${ctx}/exam/paper">试卷列表</a></li>
    <shiro:hasPermission name="exam:teacher:edit">
        <li><a href="${ctx}/exam/paper/form">试卷添加</a></li>
    </shiro:hasPermission>
</ul>

<form:form id="searchForm" modelAttribute="paper" action="${ctx}/exam/paper" method="post"
           class="breadcrumb form-search">
    <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
    <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
    <input id="orderBy" name="orderBy" type="hidden" value="${page.orderBy}"/>

    <div style="margin-top:8px;">
        <label>试卷名称：</label>
        <form:input path="name" htmlEscape="false" maxlength="20" cssClass="input-small"/>
        <label>创建开始：</label>
        <input id="createDateStart" name="createDateStart" type="text" readonly="readonly" maxlength="20"
               class="input-small Wdate" value="<fmt:formatDate value="${paper.createDateStart}" pattern="yyyy-MM-dd"/>"
               onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>

        <label>创建结束：</label>
        <input id="createDateEnd" name="createDateEnd" type="text" readonly="readonly" maxlength="20"
               class="input-small Wdate" value="<fmt:formatDate value="${paper.createDateEnd}" pattern="yyyy-MM-dd"/>"
               onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>　　
        &nbsp;<input id="btnSubmit" class="btn btn-primary" type="submit" value="查询" onclick="return page();"/>
    </div>
</form:form>

<tags:message content="${message}"/>
<table id="contentTable" class="table table-striped table-bordered table-condensed">
    <thead>
    <tr>
        <th class="sort name">试卷名称</th>
        <th>试卷说明</th>
        <th class="sort createBy">发布者</th>
        <th class="sort createDate">发布时间</th>
        <shiro:hasPermission name="exam:teacher:edit">
            <th>操作</th>
        </shiro:hasPermission>
    </tr>

    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="paper">
        <tr>
            <td><a href="javascript:"
                   onclick="$('#c_${paper.id}').toggle()">${fns:abbr(paper.name, 34)}</a></td>
            <td>${fns:abbr(paper.remarks, 60)}</td>
            <td>${paper.createBy.name}</td>
            <td><fmt:formatDate value="${paper.createDate}" type="both"/></td>
            <shiro:hasPermission name="exam:teacher:edit">
                <td>
                    <a href="${ctx}/exam/paper/form?id=${paper.id}">修改</a>
                    <a href="${ctx}/exam/paper/examAssign?id=${paper.id}">试题分配</a>
                    <c:choose>
                        <c:when test="${paper.delFlag==0}">
                            <a href="${ctx}/exam/paper/delete?id=${paper.id}"
                               onclick="return confirmx('确认要停用该试卷吗？', this.href)">停用</a>
                        </c:when>
                        <c:otherwise>
                            <a href="${ctx}/exam/paper/start?id=${paper.id}"
                               onclick="return confirmx('确认要启用该试卷吗？', this.href)">启用</a>
                        </c:otherwise>
                    </c:choose>
                    <a href="${ctx}/exam/paper/export?id=${paper.id}">导出</a>
                </td>
            </shiro:hasPermission>
        </tr>
        <tr id="c_${paper.id}" style="background:#fdfdfd;display:none;">
            <td colspan="6">
                <c:forEach items="${paper.examineList}" var="examine" varStatus="status">
                    <c:if test="${same != status.current.classify}"><h5>${examine.classifyDictLabel}</h5></c:if>
                    <c:if test="${empty same or same!=status.current.classify}">
                        <c:set var="same" value="${status.current.classify}"></c:set>
                    </c:if>

                    <p>
                    <blockquote><strong>${status.index+1}、${examine.title}</strong><br/>
                        <c:if test="${not empty examine.imageSrc}">
                            <img src="${examine.imageSrc}" style="width: 200px;margin-left: 5%"
                                 alt="${fns:abbr(examine.title,15)}"/>
                        </c:if></blockquote>
                    </p>
                    <c:if test="${status.last}">
                        <c:remove var="same"></c:remove>
                    </c:if>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pagination">${page}</div>
</body>
</html>