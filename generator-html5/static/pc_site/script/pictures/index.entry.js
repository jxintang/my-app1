import 'fancybox';
function test () {
    if (true){
        console.log(abc+def);
    }
}

//视频播放
var flowplayerInit = {
onloadEnd: false,
    loding: false,
    page: 0,
    init: function() {
        this.playVideo("https://dn-zrcaifu-video.qbox.me/%E3%80%90%E6%9D%8E%E5%B0%8F%E5%8F%8C%E8%BF%90%E5%8A%A8%E5%9F%8E%E3%80%91%E5%88%9D%E6%9C%9F%E5%AE%A3%E4%BC%A0%E7%9F%AD%E7%89%87.mp4");
        this.scrollLoad();
        this.loding = true;
        this.getPictures();

        $(".view_img").fancybox({
            wrapCSS: 'fancybox-custom',
            closeClick: true,
            openEffect: 'elastic',
            padding: 5,
            overlayShow: false,
            helpers: {
                title: {
                    type: 'inside'
                },
                overlay: {
                    showEarly: false
                }

            },
            afterLoad: function() {}
        });

    },
    playVideo: function(url) {
        this.video = flowplayer("video_player", "/static/pc_site/script/library/swf/flowplayer-3.2.18.swf", {
            clip: {
                url: url,
                autoPlay: false,
                autoBuffering: true,
                onFinish: function() {
                    this.play()
                }
            }
        })
    },
    getPictures: function() {
        var _this = this;
        this.page += 1;
        $.ajax({
            type: "post",
            dataType: "html",
            url: "/pictures/getPicture",
            data: {
                page: this.page
            }
        }).done(function(result) {
            if (result) {
                var $result = $(result);
                $("#pictures").append($result);

                YunJ.Base.loadingImage($result.find("[img-src]"), function() {
                    $(".atlasSection").removeClass("bg-img");
                    _this.loding = false;
                }, "once");
            } else {
                _this.onloadEnd = true;
            }
        }).error(function(e) {
            console.warn(e);
        })

    },
    scrollLoad: function() {
        var top,
            height,
            footerHeight = $(".footer-wrapper").height();
        var _this = this;
        $(window).on("scroll", function() {
            top = _this.getWin("scrollTop") + _this.getWin("clientHeight");
            height = _this.getWin("scrollHeight");
            if (height - top <= 10 && !_this.onloadEnd && !_this.loding) {
                _this.loding = true;
                _this.getPictures();
            }
        })
    },
    getWin: function(attr) {
        return document.documentElement[attr] || document.body[attr]
    }

}
flowplayerInit.init();
