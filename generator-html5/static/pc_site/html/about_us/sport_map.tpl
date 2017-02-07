{% extends "about_us/layout.tpl" %}

{% block title%}运动城地图 – 您身边的生态运动公园 – 李小双运动城{% endblock %}
{% block pagecss %}
	{% css "about_us/sport_map"%}
{% endblock %}

{% block aboutus%}
	<div class="sport-map-section padd40">
		<h2 class="aboutus-title">关于我们—运动城地图</h2>
		<div class="sport-map-wrapper">
			
			<div class="map-container" id="mapContainer">
				<!-- <img src="/static/pc_site/images/about_us/sport_map.png" /> -->
				
			</div>
			<div class="bottom-box" href="/static/pc_site/images/about_us/sport_map.png" >查看大图</div>
		</div>
	</div>

{% endblock %}

{% block js %}
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2&ak=bQo7Cv4Wodw7Re7j7LD694ZoECKgX0Gu"></script>
	{% js "about_us/sport_map"%}
{% endblock %}