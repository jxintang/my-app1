{% html %}
    {% head %}
        <title>{% block title %}李小双运动城 – 您身边的生态运动公园{% endblock %}</title>
        <meta charset="utf-8">
        <meta name="keywords" content="{% block keywords%}李小双运动城、足球、 篮球、乒乓球、羽毛球、网球、游泳、壁球、桌球、攀岩、拳击、跆拳道、健身房、专业赛事级标准的场馆设施{% endblock %}" />
        <meta name="description" content="{% block description%}李小双运动城由奥运冠军李小双先生创办，项目总用地面积190亩， 总建筑面积31115平米，总投资3.2亿元。为仙桃面积最大、项目最全的全民健身运动基地。{% endblock %}"/>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="format-detection" content="telephone=no,address=no,email=no">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
        <meta name="handheldFriendly" content="true">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link href="{{ publicDir }}/images/favicon32.ico" mce_href="/public/images/favicon32.ico" rel="bookmark" type="image/x-icon" />
        <link href="{{ publicDir }}/images/favicon32.ico" mce_href="/public/images/favicon32.ico" rel="icon" type="image/x-icon" />
        <link href="{{ publicDir }}/images/favicon32.ico" mce_href="/public/images/favicon32.ico" rel="shortcut icon" type="image/x-icon" />

        {% css "base" %}
        {% css "component/layout" %}
        {% css "generated/icons" %}
        {% css "generated/uicons" %}
        {% block css %}{% endblock %}
    {% endhead %}
    {% body %}
        <div class="nav-wrapper" >
            {# require $id="top_nav" #}
            {# require $id="nav" data={account_type:""} #}

        </div>

        {% block content %}{% endblock %}

        {# require $id="footer" data={
            company: "李小双（湖北）体育文化产业有限公司",
            record: "鄂ICP备16017770号-1 ",
            tel: "400-613-1816",
            serverTime: "工作日  8:30-19:00",
            notServerTime: "非工作日 8:30-17:00"
        } #}

        {% js "jquery.min" %}
        {% js "base" %}
        {% block js %}{% endblock %}

        {% if dev == false %}
            <!-- 百度统计新代码，支持异步加载 -->
            {#
            {% block analytics %}
                {% include "parts/analytics.html"%}
            {% endblock %}
            #}
        {% endif %}

    {% endbody %}
{% endhtml %}
