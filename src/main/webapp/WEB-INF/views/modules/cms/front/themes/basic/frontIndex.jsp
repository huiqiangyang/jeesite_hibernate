<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="JeeSite ${site.description}"/>
    <meta name="keywords" content="JeeSite ${site.keywords}"/>
</head>
<body>

<div id="myCarousel" class="carousel slide" style="padding-bottom:35px;margin:10px 0;">
    <ol class="carousel-indicators">
        <c:forEach items="${fnc:getIndexArticleList(5)}" var="article" varStatus="status">
            <c:if test="${status.first}">
                <li data-target="#myCarousel" data-slide-to="${status.index}" class="active"></li>
            </c:if>
            <c:if test="${!status.first}">
                <li data-target="#myCarousel" data-slide-to="${status.index}"></li>
            </c:if>
        </c:forEach>
    </ol>

    <!--carousel items-->
    <div class="carousel-inner">
        <c:forEach items="${fnc:getIndexArticleList(5)}" var="article" varStatus="status">
            <c:choose>
                <c:when test="${status.first}">
                    <div class="active item">
                        <img src="${pageContext.request.contextPath}${article.image}" style="width: 940px;height: 350px"
                             class="img-rounded" alt="${article.title}"/>

                        <div class="carousel-caption">
                            <h3>${article.title}</h3>

                            <p>${fns:rabbr(article.description,200)}</p>

                            <p><a href="${article.url}" class="btn btn-primary btn-mid">&nbsp;&nbsp;&nbsp;查看详情 &raquo;&nbsp;&nbsp;&nbsp;</a>
                            </p>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}${article.image}" style="width: 940px;height: 350px"
                             class="img-rounded" alt="${article.title}"/>

                        <div class="carousel-caption">
                            <h3>${article.title}</h3>

                            <p>${fns:rabbr(article.description,200)}</p>

                            <p><a href="${article.url}" class="btn btn-primary btn-mid">&nbsp;&nbsp;&nbsp;查看详情 &raquo;&nbsp;&nbsp;&nbsp;</a>
                            </p>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </c:forEach>

    </div>
    <!--Carousel nav-->
    <a href="#myCarousel" class="carousel-control left" data-slide="prev">&lsaquo;</a>
    <a href="#myCarousel" class="carousel-control right" data-slide="next">&rsaquo;</a>
</div>

<div class="row">
    <div class="span4">
        <h4>
            <small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>
            组织机构
        </h4>
        <ul><c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">
            <li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a
                    href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
        </c:forEach></ul>
    </div>
    <div class="span4">
        <h4>
            <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>
            质量监督
        </h4>
        <ul><c:forEach items="${fnc:getArticleList(site.id, 6, 8, '')}" var="article">
            <li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a
                    href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
        </c:forEach></ul>
    </div>
    <div class="span4">
        <h4>
            <small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>
            政策法规
        </h4>
        <ul><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">
            <li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a
                    href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
        </c:forEach></ul>
    </div>
</div>
</body>
</html>