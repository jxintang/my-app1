var router = require('koa-router')();

//运动城简介
router.get('/about-us/sport-city', async (ctx, next)=>{

    await ctx.view('about_us/sport');
});

//运动城地图
router.get('/about-us/sport-map', async (ctx, next)=>{

    await ctx.view('about_us/sport_map');
});

//联系我们
router.get('/about-us/concat-us', async (ctx, next)=>{

    await ctx.view('about_us/concat_us');
});

export default router;
