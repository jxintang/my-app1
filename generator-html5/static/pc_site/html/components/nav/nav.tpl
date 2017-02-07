<div id="Zr_Navbar" class="zr-nav-bar">
    <div class="logo">
        <a href="/">
          <img src="{{ publicDir }}/images/common/nav/lxs_logo.png">

        </a>
        <div class="logo-text">
            <span class="l">|</span><span>您身边的生态运动公园</span>
        </div>
    </div>
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
        <div class="main-menu {{'/sport-venues' | iscurrentpath('current-page')}}">
            <a href="/sport-venues/basketball" class="main-menu-item">运动场馆</a>
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
                    <!-- <a href="/member-service/coupon-activity" >优惠活动</a> -->
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
   <!--  <div class="right_nav">
        <h2 class="right_title">官方微信</h2>
        <div class="nav_right_erm">
            <img src="{{publicDir}}/images/common/nav/nav_right_erm.png" />
            <p class="text">
                扫二维码关注微信<br/>手机预订更方便
            </p>
        </div>
        <div class="feedback" style="display: none;">
            <i class="icon-feedback"></i>
             <p class="text">
             意见反馈
            </p>
        </div>
        <div class="go-top-container" id="goTop">
            <i class="icon-go-top icon" ></i>
        </div>
        
    </div> -->
</div>
