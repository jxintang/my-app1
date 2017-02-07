// var add = require('./add.js');
// var expect = require('chai').expect;
// var fetch = require('isomorphic-fetch');
//
// describe('加法函数的测试', function() {
//     it('1 加 1 应该等于 2', function() {
//         expect(add(1, 1)).to.be.equal(2);
//     });
//
//     it('1 加 1 应该等于 3', function() {
//         expect(add(1, 1)).to.be.equal(3);
//     });
//
//     it('1 加 1 应该等于 5', function() {
//         expect(add(1, 1)).to.be.equal(5);
//     });
//
// });
//
// describe('布尔值测试', function() {
//     it('everything is ok', function() {
//         expect('everthing').to.be.ok;
//     });
//
//     it('false is false', function() {
//         expect(false).to.not.be.ok;
//     });
// });
//
// describe('typeof 测试', function() {
//     it('字符串测试', function() {
//         expect('test').to.be.a('string');
//     });
//
//     it('对象测试', function() {
//         expect({ foo: 'bar' }).to.be.an('object');
//
//     });
// });
//
// describe('include 测试', function() {
//     it('数组测试', function() {
//         expect([1,2,3]).to.include(2);
//     });
//
//     it('字符串测试', function() {
//         expect('foobar').to.contain('foo');
//     });
// });
//
// describe('empty 测试', function() {
//     it('空数组测试', function() {
//         expect([]).to.be.empty;
//     });
//
//     it('空字符串测试', function() {
//         expect('').to.be.empty;
//     });
//
//     it('空对象测试', function() {
//         expect({}).to.be.empty;
//     });
// });

// describe('异步请求测试', function() {
//     it('异步请求应该返回一个对象', function() {
//         return fetch('https://api.github.com').then(function(res) {
//             return res.json();
//         }).then(function(json) {
//             expect(json).to.be.an('object');
//         });
//     });
// });
