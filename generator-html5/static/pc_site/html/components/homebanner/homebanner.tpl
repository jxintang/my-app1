<div class="main-banner" id="main-banner-id">
    <div class="banner-bg">
        <ul class="banner-bg-img">
            {%if data.banner %}
                {%for item in data.banner%}
                    <li class="zr_slide_b" data-title="{{item.name}}" style="background-image: url('{{item.resource_url}}') ">
                        {%if item.refer_url %}
                            {%if is_borrower and item.company_disable%}
                            <a href="javascript:void(0);" class="companyDisabledBanner"></a>
                            {%else%}
                            <a href="{{item.refer_url}}" target="_blank"></a>
                            {%endif%}
                        {%endif%}
                    </li>
                {%endfor%}
            {%endif%}
           <!--  <li class="zr_slide_b flowplayer_dialog" style="background: url('{{ publicDir }}/images/home_new/banner_test.png') center center no-repeat;">
                    <a href="javascript:void(0);" class="companyDisabledBanner"></a>
            </li>
            <li class="zr_slide_b flowplayer_dialog" style="background: url('{{ publicDir }}/images/home_new/banner_test.png') center center no-repeat;">
                    <a href="javascript:void(0);" class="companyDisabledBanner"></a>
            </li>
            <li class="zr_slide_b flowplayer_dialog" style="background: url('{{ publicDir }}/images/home_new/banner_test.png') center center no-repeat;">
                    <a href="javascript:void(0);" class="companyDisabledBanner"></a>
            </li> -->
        </ul>

        <div class="banner-arrow-bg">
            <div class="banner-arrow banner-arrow-left-bg">
                <div class="banner-arrow-ele banner-arrow-left pub-btn zrSliderPrev"><span></span></div>
            </div>
            <div class="banner-arrow banner-arrow-right-bg">
                <div class="banner-arrow-ele banner-arrow-right pub-btn zrSliderNext"><span></span></div>
            </div>
        </div>
        <div class="banner-text">{{data.banner[0].name}}</div>
        <div class="bottom-bg"></div>
    </div>
    <div class="banner-bg-slide"></div>
</div>

<div class="clearfix"></div>
