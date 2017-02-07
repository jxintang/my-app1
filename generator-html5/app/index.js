'use strict';
const path = require('path');
const Generator = require('yeoman-generator');
const askName = require('inquirer-npm-name');
const _ = require('lodash');
const extend = require('deep-extend');
const mkdirp = require('mkdirp');

const fs = require('fs');

const staticRoot = `static/pc_site`;

function makeGeneratorName(name) {
    name = _.kebabCase(name);
    name = name.indexOf('generator-') === 0
        ? name
        : 'generator-' + name;
    return name;
}

let isVip = true;
let originalPrice = 1000;
let BASE_DISCOUNT = 0.8;
let VIP_DISCOUNT = 0.79;

let finalPrice = originalPrice;
if (originalPrice > 199) {
    finalPrice = 199 + (originalPrice - 199) * 0.8;
}
if (isVip) {
    finalPrice *= 0.79
}

module.exports = class extends Generator {
    initializing() {
        this.props = {};
        this.router = '';
    }
    constructor(args, opts) {
        super(args, opts);

        // This makes `appname` a required argument.
        this.argument('argument', {
            type: String,
            required: true
        });

        // And you can then access it later; e.g.
        this.log(this.options.argument);
    }

    prompting() {
        // return askName({
        //   name: 'name',
        //   message: 'Your generator name',
        //   default: makeGeneratorName(path.basename(process.cwd())),
        //   filter: makeGeneratorName,
        //   validate: str => {
        //     return str.length > 'generator-'.length;
        //   }
        // }, this).then(props => {
        //   this.props.name = props.name;
        // });
        var prompt = [];

        // console.log(this.options.argument);
        if (this.options.argument == 'add-router') {
            prompt.push({type: 'input', name: 'router', message: 'Your router name', default: 'index'})
        }

        if (this.options.argument == 'remove-router') {
            prompt.push({type: 'input', name: 'router', message: 'Your router name', default: 'index'})
        }

        return this.prompt(prompt).then((answers) => {
            //   this.log('app name', answers.name);
            //   this.log('router name', answers.router);
            this.router = answers.router;
        });
    }

    default() {
        // if (path.basename(this.destinationPath()) !== this.props.name) {
        //   this.log(
        //     'Your generator must be inside a folder named ' + this.props.name + '\n' +
        //     'I\'ll automatically create this folder.'
        //   );
        //   mkdirp(this.props.name);
        //   this.destinationRoot(this.destinationPath(this.props.name));
        // }
        //
        // const readmeTpl = _.template(this.fs.read(this.templatePath('README.md')));
        //
        // this.composeWith(require.resolve('generator-node/generators/app'), {
        //   babel: false,
        //   boilerplate: false,
        //   name: this.props.name,
        //   projectRoot: 'generators',
        //   skipInstall: this.options.skipInstall,
        //   readme: readmeTpl({
        //     generatorName: this.props.name,
        //     yoName: this.props.name.replace('generator-', '')
        //   })
        // });
        //
        // this.composeWith(require.resolve('../subgenerator'), {
        //   arguments: ['app']
        // });
    }

    writing() {
        // const pkg = this.fs.readJSON(this.destinationPath('package.json'), {});
        // const generatorGeneratorPkg = require('../package.json');
        //
        // extend(pkg, {
        //   dependencies: {
        //     'yeoman-generator': generatorGeneratorPkg.dependencies['yeoman-generator'],
        //     chalk: generatorGeneratorPkg.dependencies.chalk,
        //     yosay: generatorGeneratorPkg.dependencies.yosay
        //   },
        //   devDependencies: {
        //     'yeoman-test': generatorGeneratorPkg.devDependencies['yeoman-test'],
        //     'yeoman-assert': generatorGeneratorPkg.devDependencies['yeoman-assert']
        //   }
        // });
        // pkg.keywords = pkg.keywords || [];
        // pkg.keywords.push('yeoman-generator');
        //
        // this.fs.writeJSON(this.destinationPath('package.json'), pkg);
    }
    writing() {
        this.log(this.options.argument);
        this.log(this.router);
        let {router} = this;
        let {argument} = this.options;

        if (argument == 'add-router' && this.router) {
            var name = this.router;
            this.fs.copyTpl(this.templatePath(`index.tpl`), this.destinationPath(`${staticRoot}/html/${name}/index.tpl`), {title: 'Templating with Yeoman'});

            this.fs.copyTpl(this.templatePath(`router/index.js`), this.destinationPath(`lib/route/${name}.js`));

            this.fs.write(`./test/${name}.test.js`, '');
            this.fs.write(`${staticRoot}/script/${name}/index.js`, '');
            this.fs.write(`${staticRoot}/style/${name}/index.scss`, '');

        } else {
            //     this.fs.copyTpl(
            //         this.templatePath('index0.html'),
            //         this.destinationPath('public/index0.html'),
            //         { title: 'Templating with Yeoman' }
            //   );
        }

        if (argument == 'remove-router' && this.router) {
            fs.unlink(`static/pc_site/html/${router}/index.tpl`, (err) => {
                if (err)
                    throw err;
                console.log(`successfully deleted ${router}/index.tpl`);
            });

            fs.unlink(`./router/${router}.js`, (err) => {
                if (err)
                    throw err;
                console.log(`successfully deleted ./router/${router}.js`);
            });

            fs.unlink(`./test/${router}.test.js`, (err) => {
                if (err)
                    throw err;
                console.log(`successfully deleted ${router}.test.js`);
            });
        }

    }
    paths() {
        //   this.log(this.destinationRoot());
    }
    install() {
        // this.installDependencies({bower: false});
    }
    installingLodash() {
        // this.npmInstall(['lodash'], { 'save-dev': true });
        // this.npmInstall(['mocha'], { 'save': true });
        // this.npmInstall(['chai'], { 'save': true });
    }
};
