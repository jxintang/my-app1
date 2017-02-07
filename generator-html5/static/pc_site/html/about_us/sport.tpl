{% extends "about_us/layout.tpl" %}

{% block title%}运动城简介 – 您身边的生态运动公园 – 李小双运动城{% endblock %}
{% block pagecss %}
	{% css "about_us/sport"%}
{% endblock %}

{% block aboutus%}
<div class="sport-section padd40">
	<h2 class="aboutus-title">关于我们一运动城简介</h2>
	<div class="sport-info">
		<h3 class="info-title">湖北仙桃最大生态运动园-李小双运动城</h3>
		<p class="content paddT">
		    李小双运动城由奥运冠军李小双先生创办，项目总用地面积190亩，总建筑面积31115平米，总投资3.2亿元。为仙桃面积最大、项目最全的全民健身运动基地。
		</p>
		<p class="content">
			运动城以生态、智慧、专业为主基调，由武汉理工大学承接设计，满足从儿童到老人不同年龄段人群的运动需求。运动城涵盖足球、篮球、乒乓球、羽毛球、网球、游泳、壁球、桌球、攀岩、拳击、跆拳道、健身房等项目，均采用专业赛事级标准的场馆设施。其中室内篮球馆为湖北省首家充气膜体育馆。
		</p>
	</div>
	<div class="content-type">
		<div class="title-img">
			<img src="/static/pc_site/images/about_us/ecology_title.png" />
		</div>
		<h3 class="title">
		生态运动
		<p class="en">Ecology</p>
		</h3>
		<div class="type-text">
			<div class="bg-img" img-src="/static/pc_site/images/about_us/ecology_sport.png">
			</div>
			<div class="text">
				李小双运动城背靠风景优美的电排河及襄河公园。园区内绿化覆盖率高达43%，种有百年银杏、百年广玉兰等近20种珍贵树种，建有晓园、香樟园、森林餐厅、日月潭等多个特色游园，以及免费为市民开放的专业悦动跑道，打造仙桃人身边的天然氧吧。
			</div>
		</div>
	</div>

	<div class="content-type">
		<div class="title-img">
			<img src="/static/pc_site/images/about_us/wisdom_title.png" />
		</div>
		<h3 class="title">智慧运动<p class="en">Intellectual</p></h3>
		<div class="type-text">
			<div class=" bg-img" img-src="/static/pc_site/images/about_us/wisdom_sport.png">
			</div>
			<div class="text ">
				李小双运动城内采用全国领先的会员管理系统及智能设备。其中作为湖北省首家的充气膜篮球馆，可自动过滤pm2.5、净化空气及保持恒温。全馆wifi覆盖，结合领先互联网技术，可线上订场、线上约战,并可通过具有付费功能的运动手环管理查看自己的运动数据及会员数据，为您打造更贴心更便捷的服务。
			</div>
		</div>
	</div>

	<div class="content-type">
		<div class="title-img">
			<img src="/static/pc_site/images/about_us/all_title.png" />
		</div>
		<h3 class="title">全民运动<p class="en">National</p></h3>
		<div class="type-text">
			<div class=" bg-img" img-src="/static/pc_site/images/about_us/all_sport.png">
			</div>
			<div class="text ">
		        李小双运动城力求推进全民健身事业。儿童馆、林间跑道、13不同类型的场馆设计，满足不同年龄段人群的多样性运动需求。此外，运动城周边还配备运动用品街、美食街、超市、水吧、学校及五星级酒店。
			</div>
		</div>
	</div>

	<div class="content-type">
		<div class="title-img">
			<img src="/static/pc_site/images/about_us/specialty_title.png" />
		</div>
		<h3 class="title">专业运动<p class="en">Specialty</p></h3>
		<div class="type-text">
			<div class=" bg-img" img-src="/static/pc_site/images/about_us/specialty_sport.png">
			</div>
			<div class="text ">
				李小双运动城拥有一流的管理团队、教练团队及策划团队，可提供专业的运动康复服务、人才培训服务，以及专业的赛事与文化活动的策划及举办。
			</div>
		</div>
	</div>
</div>
{% endblock %}

{% block js %}
<script type="text/javascript">
	YunJ.Base.loadingImage();
</script>
{% endblock %}