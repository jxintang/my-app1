{% extends "about_us/layout.tpl" %}
{% block title%}联系我们 – 您身边的生态运动公园 – 李小双运动城{% endblock %}
{% block pagecss %}
	{% css "about_us/concat_us"%}
{% endblock %}

{% block aboutus%}
<div class="concat-us-section padd40">
	<h2 class="aboutus-title">关于我们—联系我们</h2>
	<div class="concat-us-wapper">
		<img class="kefu-logo" src="{{publicDir}}/images/about_us/kefu_logo.png" />
		<h3 class="kefu-title">客服电话</h3>
		<p class="kefu-tel">0728 - 8236555</p>
	</div>
	<div class="sport-city-info">
		<ul class="info-list clearfix">
			<li class="info-item lw left clearfix">
				<div class="icon left">
					<img src="{{publicDir}}/images/about_us/icon-address.png" />
				</div>
				<div class="paddL10 left">
					<h4>地址：</h4>
					<p>湖北省仙桃市干河区小寺垸路特1号</p>
				</div>
				
			</li>
			<li class="info-item left clearfix">
				<div class="icon left">
					<img src="{{publicDir}}/images/about_us/icon-tel.png" />
				</div>
				<div class="paddL10 left">
					<h4>电话：</h4>
					<p>0719-8236888</p>
				</div>
				
			</li>
			<li class="info-item lw left clearfix">
				<div class="icon left">
					<img src="{{publicDir}}/images/about_us/icon-cz.png" />
				</div>
				<div class="paddL10 left">
					<h4>传真：</h4>
					<p>0719-8236888</p>
				</div>
			</li>
			<li class="info-item left clearfix">
				<div class="icon left">
					<img src="{{publicDir}}/images/about_us/icon-time.png" />
				</div>
				<div class="paddL10 left">
					<h4>营业时间：</h4>
					<p>8 : 00-22 : 00</p>
				</div>
			</li>
			<!-- <li class="left">
				<i class="icon-tel"></i>
			</li> -->

		</ul>
	</div>
</div>

{% endblock %}

{% block js %}
{% endblock %}