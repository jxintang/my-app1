<div class="home-card home-media">
    <div class="title pl30">
        媒体报道
        {%if data.list.length > 5 %}
        <a href="#" class="more-project">更多></a>
        {%endif%}
    </div>
    <ul class="content">
        {% for item in data.list %}
            {%if loop.index0 < 5%} {#始终最多显示5条数据#}
            <li>
                <a href="#" title="{{item.title}}">
                    <span class="source"><<{{item.source}}>></span>
                    <span class="title-right">{{item.title}}</span>
                    <span class="date-right">{{moment(item.publish_date).format("YYYY-MM-DD")}}</span>
                </a>
            </li>
            {%endif%}
        {%endfor%}

        {%if data.list.length == 0 %}
            <li class="no-data">暂无媒体报道</li>
        {%endif%}
    </ul>
</div>
