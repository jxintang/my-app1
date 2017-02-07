{% extends "base.tpl" %}

{% block title%}运动城简介 – 您身边的生态运动公园 – 李小双运动城{% endblock %}
{% block keywords%}运动城地图、运动城简介、联系我们、湖北仙桃最大生态运动园、覆盖所有运动项目、生态、智慧、专业{% endblock %}
{% block description%}李小双运动城由奥运冠军李小双先生创办，项目总用地面积190亩， 
总建筑面积31115平米，总投资3.2亿元。为仙桃面积最大、项目 最全的全民健身运动基地。运动城以生态、智慧、专业为主基调，由武汉理工大学承接设计，
满足从儿童到老人不同年龄段人群的运动需求。运动城涵盖足球、 篮球、乒乓球、羽毛球、网球、游泳、壁球、桌球、攀岩、拳击、跆拳道、健身房等项目，
均采用专业赛事级标准的场馆设施。其中室 内篮球馆为湖北省首家充气膜体育馆。{% endblock %}

{% block css %}
    {% css "about_us/layout" %}
    {% css "generated/aboutusicons" %}
    {% block pagecss %}{% endblock %}
{% endblock %}


{% block content %}
<div class="about-us-secition clearfix">
	<div class="leftbar auto-row">
		<ul>
			<li class="item {{'sport-city'|leftbar_select}}">
				<a href="/about-us/sport-city" >
					<i class="icon-logo{{'-hover' if 'sport-city'|leftbar_select else ''}}"></i>
					<p class="nav-name">运动城简介</p>
				</a>
			</li>
			<li class="item {{'sport-map'|leftbar_select}}">
				<a href="/about-us/sport-map" >
					<i class="icon-map{{'-hover' if 'sport-map'|leftbar_select else ''}}"></i>
					<p class="nav-name">运动城地图</p>
				</a>
			</li>
			<li class="item {{'concat-us'|leftbar_select}}">
				<a href="/about-us/concat-us" >
					<i class="icon-concatus{{'-hover' if 'concat-us'|leftbar_select else ''}}"></i>
					<p class="nav-name">联系我们</p>
				</a>
			</li>
		</ul>
	</div>
	<div id="aboutUsContent" class="about-us-content auto-row">
		{% block aboutus%}{% endblock %}
	</div>
</div>
{% endblock %}

{% block js %}
{% endblock %}