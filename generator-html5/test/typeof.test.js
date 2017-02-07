var expect = require('chai').expect;

describe('typeof 测试', function() {
    it('字符串测试', function() {
        expect('test').to.be.a('string');
    });

    it('对象测试', function() {
        expect([1,2]).to.be.an('object');

    });
});
