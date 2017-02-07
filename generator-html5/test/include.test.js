var expect = require('chai').expect;

describe('include 测试', function() {
    it('数组测试', function() {
        expect([1,2,3]).to.include(2);
    });

    it('字符串测试', function() {
        expect('foobar').to.contain('foo');
    });
});
