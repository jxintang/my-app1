<div class="other-module">
	<ul class="module-list clearfix">
		<li class="item">
			<h3 class="title"><i class="line pleft"></i>图集<i class="line pright"></i></h3>
			<div class="content ">
				<img src="{{ publicDir }}/images/home_new/module_picture.jpg" />
				<p class="btn-container">
					<a class="cat-detail" href="/pictures/index">查看详情</a>
				</p>
			</div>
		</li>
		<li class="item item-map marL32">
			<h3 class="title"><i class="line pleft"></i>运动城地图<i class="line pright"></i></h3>
			<div class="content">
			<img src="{{ publicDir }}/images/about_us/sport_map.png" />
				<p class="btn-container">
					<a href="/about-us/sport-map" class="cat-detail">查看详情</a>
				</p>
			</div>
		</li>
		<li class="item">
			<h3 class="title"><i class="line pleft"></i>媒体报道<i class="line pright"></i></h3>
			<div class="content broadcast">
				{% if reportsData %}
					{%for item in reportsData.list%}
					<p class="broadcast-item clearfix">
						<a class="text" href="/article/detail/{{item.id}}">
							{{ item.article_title | formatstringwithdot(19)}}   {% if loop.index == 1 %} <i class="icon-new"></i>{%endif%}
						</a>
						<span class="date">{{moment(item.source_public_time).format("YYYY-MM-DD")}}</span>
					</p>
					{%endfor%}
					<a class="more" href='/article/list/{{reportsId}}'>
						<div class="more-span">
							<span>更多 </span><i class="icon-more"></i>
						</div>
						<div class="more-span-m">
							<span>查看更多> </span>
						</div>
					</a>
				{% else %}
					<div>暂无媒体报道</div>
				{% endif %}
			</div>
		</li>
		<li class="item item-map marL32">
			<h3 class="title"><i class="line pleft"></i>网站公告<i class="line pright"></i></h3>
			<div class="content broadcast">
			{% if announcementData %}
				{%for item in announcementData.list%}
				<p class="broadcast-item clearfix">
					<a class="text" href="/article/detail/{{item.id}}">
						{{ item.article_title | formatstringwithdot(19)}} {% if loop.index == 1 %} <i class="icon-new"></i>{%endif%}
					</a>
					<span class="date">{{moment(item.source_public_time).format("YYYY-MM-DD")}}</span>
				</p>
				{%endfor%}
				<a class="more" href='/article/list/{{announcementId}}'>
					<div class="more-span">
						<span>更多 </span><i class="icon-more"></i>
					</div>
					<div class="more-span-m">
						<span>查看更多> </span>
					</div>
				</a>
			{% else %}
				<div>暂无公告</div>
			{% endif %}
			</div>
		</li>
	</ul>
</div>