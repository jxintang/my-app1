var router = require('koa-router')();

router.get('/weixin/shares',async(ctx, next) => {
   //TODO
   ctx.body={todo: '从服务端获取data[wx-config]'};
});

export default router;