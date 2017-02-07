<div class="project-wrapper search-and-help">
    <div class="pub-bg-white pub_padding10 advance-search left">
        {% for list in data.list%}
            <dl>
                <dt>{{ list.title }}</dt>
                <dd {%if list.className %}class="{{list.className}}"{%endif%}>
                    {% for item in list.list %}
                        {% if loop.first %}
                            {% if data.query[list.type] == 'undefined' %}
                                <a href="{{item.url}}" class="all actived">{{item.name}}</a>
                            {% else %}
                                <a href="{{item.url}}" class="all">{{item.name}}</a>
                            {% endif %}
                        {% else %}
                            {% if data.query[list.type] == item.value %}
                                <a href="{{item.url}}" class="actived">{{item.name}}</a>
                            {% else %}
                                <a href="{{item.url}}">{{item.name}}</a>
                            {% endif %}
                        {% endif %}
                    {% endfor %}
                </dd>
                <div class="clear"></div>
            </dl>
        {% endfor %}
    </div>
    <div class="pub-bg-white pub_padding10 invest-help list_two right">
        <!-- 获取常见问题列表 TODO -->
    </div>

</div>