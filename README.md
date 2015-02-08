#Patrick Gold Portfolio

[![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)

## Quickstart

To get up and running as quickly as possible:

#### Have [Node.js](http://nodejs.org/)    
> NPM will come with node.js

#### Have [Grunt](http://gruntjs.com/)  
`npm install -g grunt-cli`

#### Optional [Bower](http://bower.io/)  
`npm install -g bower`
> A local copy of Bower is included in this system. If you dont like Bower, then don't worry about Bower. Just update `grunt/config.coffee.vendor_files` to point to any libs you'd like to include

#### **Install required Node modules**:  
`npm install`  
> This will install all node modules, bower modules, run grunt and auto open the build in your default browser. Hot and ready to update when things change. See `package.json` for more.


##Deployment

#### Compile with grunt
`grunt compile`

#### Move files to HTTP server
 The final files are compiled into the `build/dist` folder. This project does not provide an opinion or means of deploying these dist files, but all you need is an http server to serve static files.


##Credits
The grunt task loading has been borrowed heavily from [Bolt](https://github.com/argyleink/Bolt) with some changes here and there to better support angular.

The angular architecture and grunt build system is inspired by [NGBP](https://github.com/ngbp/ngbp)