<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${title}</title>
    <meta name="decorator" content="default"/>
    <%@include file="/WEB-INF/views/include/echarts.jsp" %>
    <script type="text/javascript">
        $(function () {
            // 基于准备好的dom，初始化echarts图表
            var myChart = echarts.init(document.getElementById('echarts'));

            option = {
                title: {
                    text: '${title}',
                    x: 'right',
                    y: 'bottom'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: ${legendData}
                },
                toolbox: {
                    show: true,
                    feature: {
                        mark: {show: true},
                        dataView: {show: true, readOnly: false},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                calculable: false,
                series: (function () {
                    var series = [];
                    for (var i = 0; i < 30; i++) {
                        series.push({
                            name: '成绩分布',
                            type: 'pie',
                            itemStyle: {normal: {
                                label: {show: i > 28},
                                labelLine: {show: i > 28, length: 20}
                            }},
                            radius: [i * 4 + 40, i * 4 + 43],
                            data: ${data}
                        })
                    }
                    series[0].markPoint = {
                        symbol: 'emptyCircle',
                        symbolSize: series[0].radius[0],
                        effect: {show: true, scaleSize: 12, color: 'rgba(250,225,50,0.8)', shadowBlur: 10, period: 30},
                        data: [
                            {x: '50%', y: '50%'}
                        ]
                    };
                    return series;
                })()
            };
            setTimeout(function () {
                var _ZR = myChart.getZrender();
                _ZR.refresh();
            }, 2000);

            // 为echarts对象加载数据
            myChart.setOption(option);
        });

    </script>
</head>
<body>

<shiro:hasPermission name="exam:teacher:view">
    <ul class="nav nav-tabs">
        <li class="active"><a href="${ctx}/exam/score/teacher/scores">成绩统计</a></li>
        <li><a href="${ctx}/exam/score/teacher/scoreList">成绩查询</a></li>
    </ul>
</shiro:hasPermission>
<tags:message content="${message}"/>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="echarts" style="height:490px;width: 95%"></div>

</body>
</html>