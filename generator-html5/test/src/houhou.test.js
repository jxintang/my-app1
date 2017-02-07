var assert = require('assert');
// var common = require('../../common.js');
// var Utils = common.require('util/utils.js');

module.exports = {
    'test Utils' : {
        testFormatElapsedTime : function() {
            assert.equal(1+1, 2);
        },
        'ttt': function() {
            assert.ok(1 == 1)
        },
        'mutiple': function() {
                assert.equal(3*3,9)
        },
     //    'Demo test Google' : function (browser) {
	    // // browser
     // //          .url('http://www.google.com')
     // //          .waitForElementVisible('body', 1000)
     // //          .setValue('input[type=text]', 'nightwatch')
     // //          .waitForElementVisible('button[name=btnG]', 1000)
     // //          .click('button[name=btnG]')
     // //          .pause(1000)
     // //          .assert.containsText('#main', 'Night Watch')
     // //          .end();
     //      }
    },
	'test Mutiple': {
            mutiple: function(browser) {
                // console.log(browser)
                browser
                 .url("http://www.google.com")
                 .waitForElementVisible('body', 1000)
                 .setValue('input[type=text]', 'nightwatch')
                 .waitForElementVisible('button[name=btnG]', 1000)
                 .click('button[name=btnG]')
                 .pause(1000)
                 .assert.containsText('#main', 'The Night Watch')
                 .end();
                assert.equal(3*3,9)
            }
    }
    
}
