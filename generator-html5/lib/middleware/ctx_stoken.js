const sessionid = 'sessionid';
const acctid = 'acctid';

// var {
//     uc: {
//         proto: {
//             UcService
//         }
//     }
// } = require('../grpc').default;

export default function stoken(ctx, mode) {
    if (mode !== 'api') {
        Object.defineProperty(ctx, 'stoken', {
            get: () => {
                return ctx.cookies.get(sessionid, {
                    signed: true,
                    httpOnly: true
                });
            },
            set: (value) => {
                ctx.cookies.set(sessionid, value, {
                    signed: true,
                    httpOnly: true
                });
            }
        });
        Object.defineProperty(ctx, 'acctid', {
            get: () => {
                return ctx.cookies.get(acctid, {
                    signed: true,
                    httpOnly: true
                });
            },
            set: (value) => {
                ctx.cookies.set(acctid, value, {
                    signed: true,
                    httpOnly: true
                });
            }
        });



    } else {
        Object.defineProperty(ctx, 'stoken', {
            get: () => {
                return ctx.request.body.stoken;
            }
        });
    }

    var session;
    ctx.sess = async(session0) => {
        if (session0) {
            session = session0;
            let {
                stoken
            } = session;
            ctx.stoken = stoken;
            //不能if,会造成ctx.acctid不实时
            // if (account && account.acctid) {
            // ctx.acctid = (account && account.acctid) || null;
            // }
        }
        if (!session) {
            var {
                stoken
            } = ctx;
            if (stoken) {
                // let {
                //     account_id
                // } = await AccountService.getAccountId({
                //         stoken
                //     }),
                //     account = {};
                // if (account_id) {
                //     account = {...account_id
                //     };
                // }
                // var result = await UcService.session({
                //     stoken
                // });
                // if (!result.error) {
                //     session = {};
                // } else {
                    session = {};
                // }
            }
        }
        if(session && session.user && session.user.has_password){
            session.user.password = session.user.has_password;
        }
        return session;
    }
}
