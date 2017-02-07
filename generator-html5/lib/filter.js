import path from 'path';
import views from 'koa-views';
import {dev, mode, is_h5} from './config';

import {request} from './view';

var _ = require('lodash');

import dateFilter from 'nunjucks-date-filter';

export default function(env) {

    env.addGlobal('moment', require('moment'));

    env.addFilter('json', function(str) {
        return env.filters.safe(JSON.stringify(str));
    });

    env.addFilter('money', function(num) {
        return env.filters.safe(num.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, '$1,'));
    });

    env.addFilter('money_int', function(num) {
        return env.filters.safe(num.toFixed(0).replace(/(\d)(?=(\d{3})+\.)/g, '$1,'));
    });

    env.addFilter('iscurrentpath', function(name, className0, className1) {
        let {url} = request,
            index = 0; // 查询问号的位置
        className1 = className1 || '';

        index = url.indexOf('?');

        url = index > -1
            ? url.substring(0, index)
            : url;

        if (url) {
            return (name == '/' && name == url) || (name != '/' && url.indexOf(name) == 0)
                ? className0
                : className1;
        } else {
            return '';
        }
    });

    //会员服务和关于我们左侧
    env.addFilter('leftbar_select', function(cur_url) {
        let {url} = request;
        let result = url.indexOf(cur_url) >= 0;
        return result
            ? "active"
            : ""

    });

    env.addFilter('clear', function(obj) {
        return "";
    });

    // 判断是否为某种类型
    // 支持string,array,object
    env.addFilter('isstring', function(obj, type) {
        return typeof obj == 'string';
    });

    // 判断是否为数组
    env.addFilter('isarray', function(obj) {
        return obj instanceof Array;
    });

    // 判断是否为null
    env.addFilter('isnull', function(obj) {
        return obj == null;
    });

    // 截取长度
    env.addFilter('formatstringwithdot', function(string, length) {
        if (string.length > length) {
            return string.substring(0, length) + '...';
        } else {
            return string;
        }
    });

    // 返回项目状态
    // has_repay,is_zhuanrang暂时没有两个字段
    env.addFilter('getinveststatus', function(string, init_principal, loan_finish, has_repay, is_zhuanrang) {

        if (init_principal == 0) {
            return '已转让';
        }

        if (loan_finish) {
            return '已还款';
        }

        if (has_repay) {
            return '还款日';
        }

        if (is_zhuanrang) {
            return '转让日';
        }

        return string;
    });

    env.addFilter('moneyformat', function(amount, str) {
        let unit = '元';

        if (amount >= 10E3) {
            amount /= 10E3;
            unit = '万';
        } else if (amount >= 10E7) {
            amount /= 10E7;
            unit = '亿';
        }

        amount = str == 'nodigital'
            ? amount.toString()
            : amount.toFixed(2);

        let number = env.filters.safe(amount.replace(/(\d)(?=(\d{3})+\.)/g, '$1,'));
        return number.toString() + unit;
    });

    // 排序反转
    env.addFilter('reversedirection', function(string, order_by, type) {
        if (order_by != type) {
            return 'desc';
        } else {
            return string && string == 'desc'
                ? 'asc'
                : 'desc';
        }
    });

    env.addFilter('date', dateFilter);

    // 添加url参数
    env.addFilter('assignurlparams', function(path, params) {
        let {query} = request,
            option = _.merge({}, query, params),
            queryString = '';

        for (var key in option) {
            queryString += '&' + key + '=' + option[key];
        }
        queryString = queryString.replace('&', '?');

        return path + queryString;
    });

    // 如果参数大于1万，则返回x万，否则返回原值
    env.addFilter('moneywan', function(string) {
        if (isNaN(string)) {
            return string;
        }
        let number = parseFloat(string);

        return number >= 10E3
            ? parseFloat(number / 10E3) + '万'
            : number.toString();

    });

    env.addFilter('displaywan', function(string) {
        if (isNaN(string)) {
            return string;
        }
        let number = parseFloat(string);

        let str = number >= 10E3
            ? `<span class='big-number'>${parseFloat(number / 10E3)}</span>` + `<span class='middle-number'>万</span>`
            : `<span class='big-number'>${number.toString()}</span><span class='middle-number'>元</span>`;

        return env.filters.safe(str);
    });

    // 显示rec rate
    env.addFilter('displayrate', function(rateStr, type) {
        let is_type2 = type === 2;
        console.log('is_type2', is_type2);
        let rateArr = rateStr.toString().split("+"),
            str = "";
        if (rateArr.length > 1) {
            let subRate = rateArr[0].split(".");
            str += `<span class='big-number'>${subRate[0]}</span>`;
            if (subRate.length > 1) {
                str += `<span class='middle-number'>.${subRate[1]} ${is_type2
                    ? ''
                    : '%'} +<span class='special-tag'>${rateArr[1]}%</span></span>`;
            } else {
                str += `<span class='middle-number'>${is_type2
                    ? ''
                    : '%'}+<span class='special-tag'>${rateArr[1]}%</span></span>`;
            }

        } else {
            let subRate = rateArr[0].split(".");
            str += `<span class='big-number'>${subRate[0]}</span>`;
            if (subRate.length > 1) {
                str += `<span class='middle-number'>.${subRate[1]}%</span>`;
            } else {
                str += `<span class='middle-number'>%</span>`;
            }
        }

        return env.filters.safe(str);
    });

    // 获取银行卡后4位
    env.addFilter('getcardtail', function(cardno) {
        return typeof(cardno) == 'string' && cardno.length > 4
            ? cardno.substr(cardno.length - 4, 4)
            : cardno;
    });

    env.addFilter('maskcardno', function(cardno) {
        return typeof(cardno) == 'string' && cardno.substr(0, 4) + '******' + cardno.substr(cardno.length - 4, 4);
    });

    //身份证加密
    env.addFilter('maskidcard', function(idcard) {
        return typeof(idcard) == 'string' && idcard.substr(0, 2) + '**************' + idcard.substr(idcard.length - 2, 2);
    });

    // 加密手机号
    env.addFilter('maskphone', function(phone) {
        return typeof(phone) == 'string' && phone.length == 11
            ? (phone.substr(0, 2) + '******' + phone.slice(-1))
            : phone;
    });

    env.addFilter("handleExperienceDetail", function(str) {
        if (!str || !str.trim())
            return '';
        let ary = JSON.parse(str);
        ary = ary.map(function(item, index, list) {
            return item.value
        });
        return env.filters.safe(ary.join(''));
    });

    env.addFilter('strToJSONObj', function(str) {
        return JSON.parse(str);
    });

    env.addFilter('join', function(str, sep1, sep2) {
        var coll = str.split(sep1);
        coll = _.filter(coll, function(ele) {
            return ele != ''
        }) || [];
        return coll.join(sep2);
    })

    env.addFilter('parseInt', function(num) {
        return parseInt(num);
    })

    env.addFilter('parseFloat', function(num) {
        return parseFloat(num);
    })

    env.addFilter('last4', function(str) {
        var len = str && str.length || 0;
        if (len > 4) {
            return str.slice(len - 4);
        } else {
            return str;
        }
    });

    env.addFilter('format_login_url', function(uri) {
        let redirectUrl = encodeURIComponent(uri);
        return `/login?t=${redirectUrl}`;
    });

    //去除html标签
    env.addFilter('deleteHtml', function(content) {
        return content.replace(/<\/?[^<>]*>/g, "").replace(/&nbsp;/g, "");
    });

};
