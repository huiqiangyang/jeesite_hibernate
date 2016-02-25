<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${title}</title>
    <meta name="decorator" content="default"/>
    <%@include file="/WEB-INF/views/include/echarts.jsp" %>
    <script type="text/javascript">
        $(function(){
            // 基于准备好的dom，初始化echarts图表
            var myChart = echarts.init(document.getElementById('echarts'));

            option = {
                title : {
                    text:'${title}'
                },
                tooltip : {
                    trigger: 'axis'
                },
                toolbox: {
                    show : true,
                    feature : {
                        mark : {show: true},
                        dataView : {show: true, readOnly: false},
                        magicType : {show: true, type: ['line', 'bar','tiled']},
                        restore : {show: true},
                        saveAsImage : {show: true}
                    }
                },
                calculable : true,
                xAxis : [
                    {
                        type : 'category',
                        boundaryGap : false,
                        data : ${xData}
                    }
                ],
                yAxis : [
                    {
                        type : 'value',
                        axisLabel : {
                            formatter: '{value}分'
                        }
                    }
                ],
                series : [
                    {
                        name:'成绩',
                        type:'line',
                        data:${yData}
                    }
                ]
            };

            // 为echarts对象加载数据
            myChart.setOption(option);
        });

    </script>
</head>
<body>

<shiro:hasPermission name="exam:student:view">
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctx}/exam/score/stu/scores">成绩曲线</a></li>
    </ul>
</shiro:hasPermission>
<tags:message content="${message}"/>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="echarts" style="height:400px"></div>

</body>
</html>