var router = require('koa-router')();

var ttt = require('ttt');

router.get('/', async (ctx, next)=>{
    await ctx.view('home/index',{reportsData:null,announcementData:null});
});

export default router;
