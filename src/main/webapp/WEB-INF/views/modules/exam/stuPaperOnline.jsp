<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>在线考试-${paper.name}</title>
    <meta name="decorator" content="default"/>
    <%@include file="/WEB-INF/views/include/dialog.jsp" %>
    <style type="text/css">
        .sort {
            color: #0663A2;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        $(function () {

            $("#submit").on("click", function () {
                var result = $("#submitForm").serialize().split("&");
                var mess = "你确定要交卷吗？";
                if ($("#submitForm").serialize().indexOf("null") != -1) {
                    mess = "你有未完成题目,确定要提交吗？";
                }
                var href = "${ctx}/exam/score/addScore?result=" + result + "&paper.id=${paper.id}";
                return confirmx(mess, href);
            });

            startTime();

        });

        var h = parseInt(${paper.time/60});
        var m = ${paper.time}% 60;
        var s = 0;
        function startTime()
        {

            $("#time").empty();
            $("#time").append(checkTime(h)+":"+checkTime(m)+":"+checkTime(s));
            if(s-- == 0){
                s = 59;
                if(m-- == 0){
                    m = 59;
                    h--;
                }
            }
            //考试时间结束
            if(h==0&&m==0&&s==0){
                var result = $("#submitForm").serialize().split("&");
                var mess = "考试时间到了!";
                var href = "${ctx}/exam/score/addScore?result=" + result + "&paper.id=${paper.id}";
                error(mess,href);
            }
            setTimeout('startTime()',1000)
        }

        function checkTime(time){
            if(time<10){
                return '0'+time;
            }
            return time;
        }

    </script>
</head>
<body>

<ul class="nav nav-tabs">
    <shiro:hasPermission name="exam:student:view">
        <li><a href="${ctx}/exam/paper/stu/list">试卷列表</a></li>
    </shiro:hasPermission>
    <shiro:hasPermission name="exam:student:edit">
        <li class="active"><a href="${ctx}/exam/paper/stu/online?id=${paper.id}">在线考试中...</a></li>
    </shiro:hasPermission>
</ul>

<tags:message content="${message}"/>
<div class="alert alert-info span4 offset10 navbar-fixed-top" style="margin-top: 47px">
    <span class="help-inline" style="color: red">${fns:getDictValue("exam_intro","exam_intro" ,"考试说明：" )}</span>
    <table class="table">
        <c:forEach items="${paper.examineList}" varStatus="status">
            <c:if test="${status.index % 10 == 0}">
                <tr>
            </c:if>
            <td><a href="#${status.index}">${status.index+1}</a></td>
            <c:if test="${status.index % 10 == 9}">
                </tr>
            </c:if>
        </c:forEach>
        </tr>
    </table>
    <a class="btn" href="javascript:void(0)" id="submit">交卷</a>
    <a class="btn btn-success" href="#${paper.name}">返回顶部</a>
    <label class="help-inline">距离考试结束&nbsp;<font color="red" id="time"></font></label>
</div>
<form id="submitForm">
    <div class="well span10" id="${paper.name}">
        <h3 class="offset3">${paper.name}</h3>
        <c:forEach items="${paper.examineList}" var="examine" varStatus="status">

            <c:if test="${same != status.current.classify}"><h5>${examine.classifyDictLabel}</h5></c:if>
            <c:if test="${empty same or same!=status.current.classify}">
                <c:set var="same" value="${status.current.classify}"/>
            </c:if>

            <p>
            <blockquote><strong id="${status.index}">${status.index+1}、${examine.title}</strong><br/>
                <c:if test="${not empty examine.imageSrc}">
                    <img src="${examine.imageSrc}" style="width: 200px;margin-left: 2%"
                         alt="${fns:abbr(examine.title,15)}"/>
                </c:if>
                <c:choose>
                    <c:when test="${examine.classifyDictLabel eq '选择题'}">
                        <div class="controls" style="margin-left: 2%">
                            <select name="${examine.id}" class="span2">
                                <option value="null">选择正确选项</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                            </select>
                        </div>
                        <br/>
                    </c:when>
                    <c:when test="${examine.classifyDictLabel eq '判断题'}">
                        <div class="controls" style="margin-left: 2%">
                            <select name="${examine.id}" class="span2">
                                <option value="null">判断正误</option>
                                <option value="1">正确</option>
                                <option value="0">错误</option>
                            </select>
                        </div>
                        <br/>
                    </c:when>
                    <c:when test="${examine.classifyDictLabel eq '简答题'}">
                        <textarea name="${examine.id}" class="span8" rows="5" placeholder="答："></textarea>
                    </c:when>
                    <c:otherwise>
                        <textarea name="${examine.id}" class="span8" rows="5" placeholder="答："></textarea>
                    </c:otherwise>
                </c:choose>
            </blockquote>
            </p>
            <c:if test="${status.last}">
                <c:remove var="same"/>
            </c:if>
        </c:forEach>
    </div>
</form>
</body>
</html>