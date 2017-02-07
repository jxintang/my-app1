var expect = require('chai').expect;

describe('布尔值测试', function() {
    it('everything is ok', function() {
        expect('everthing').to.be.ok;
    });

    it('false is false', function() {
        expect(false).to.not.be.ok;
    });
});
