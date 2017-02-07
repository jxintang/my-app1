var expect = require('chai').expect;

describe('empty 测试', function() {
    it('空数组测试', function() {
        expect([]).to.be.empty;
    });

    it('空字符串测试', function() {
        expect('').to.be.empty;
    });

    it('空对象测试', function() {
        expect({}).to.be.empty;
    });
});
