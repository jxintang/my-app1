<div id="Zr_Navbar" class="zr-nav-bar secondary_nav_h5">
    <div class="logo">
        <a href="javascript:history.back();">
          <img src="{{ publicDir }}/images/member_service/arrow_left.png" />
        </a>
    </div>
    <div class="secondary_nav_title">{{navData.title}}</div>
    <div class="nav_all_image" ></div>
    <div class="main-menu-group">
        <div class="main-menu  {{'/' | iscurrentpath('current-page')}}">
            <a href="/" class="main-menu-item">首页</a>
        </div>
        <div class="main-menu {{'/about-us' | iscurrentpath('current-page')}}">
            <a href="/about-us/sport-city" class="main-menu-item">关于我们</a>
            <div class="dropdown-list none flashIn-1s">
                <div class="paddT5">
                    <a href="/about-us/sport-city">运动城简介</a>
                    <a href="/about-us/sport-map">运动城地图</a>
                    <a href="/about-us/concat-us">联系我们</a>
                </div>
                
            </div>
        </div>
        <div class="main-menu {{'/account' | iscurrentpath('current-page')}}">
            <a href="/account" class="main-menu-item">运动场馆</a>
        </div>
        <div class="main-menu {{'/pictures' | iscurrentpath('current-page')}}">
            <a href="/pictures/index" class="main-menu-item">图集</a>
        </div>
        <div class="main-menu {{'/member-service' | iscurrentpath('current-page')}}">
            <a href="/member-service/yearcard" class="main-menu-item">会员服务</a>
            <div class="dropdown-list none flashIn-1s">
                <div class="paddT5">
                    <a href="/member-service/yearcard" >年卡服务</a>
                    <a href="/member-service/traffic" >交通指南</a>
                    <a href="/member-service/coupon-activity" >优惠活动</a>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>