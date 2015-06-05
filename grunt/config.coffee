###
This file/module contains all configuration for the build process.
###

module.exports = (grunt) ->

  pkg: grunt.file.readJSON("./package.json")

  ###
  The banner is the comment that is placed at the top of our compiled
  source files. It is first processed as a Grunt template, where the `<%=`
  pairs are evaluated based on this very configuration object.
  ###
  meta:
    banner:
      "/**\n" +
      " * <%= pkg.name %> - v<%= pkg.version %> - <%= grunt.template.today(\"yyyy-mm-dd\") %>\n" +
      " * <%= pkg.homepage %>\n" + " *\n" +
      " * Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>\n" +
      " */\n"

  ###
  The `build_dir` folder is where our projects are compiled during
  development and the `compile_dir` folder is where our app resides once it's
  completely built.
  ###

  build_dir: "build/tmp"
  compile_dir: "build/dist"

  ###
  This is a collection of file patterns that refer to our app code (the
  stuff in `src/`). These file paths are used in the configuration of
  build tasks. `js` is all project javascript, less tests. `ctpl` contains
  our reusable components' (`src/common`) template HTML files, while
  `atpl` contains the same, but for our app's code. `html` is just our
  main HTML file, `less` is our main stylesheet, and `unit` contains our
  app's unit tests.
  ###

  app_files:
    js: [ "src/app/**/*.js", "!src/**/*.spec.js", "!src/assets/**/*.js" ]
    jsunit: [ "src/**/*.spec.js" ]
    coffee: [ "src/**/*.coffee", "!src/**/*.spec.coffee" ]
    coffeeunit: [ "src/**/*.spec.coffee" ]
    atpl: [ "src/app/**/*.tpl.html" ]
    ctpl: [ "src/common/**/*.tpl.html" ]
    html: [ "src/index.tpl.html" ]
    stylus: "src/assets/stylus/master.styl"
    stylus_watch: "src/**/*.styl"

  ###
  This is a collection of files used during testing only.
  ###

  test_files:
    js: [ "vendor/bower_components/angular-mocks/angular-mocks.js" ]


  ###
  This is the same as `app_files`, except it contains patterns that
  reference vendor code (`vendor/`) that we need to place into the build
  process somewhere. While the `app_files` property ensures all
  standardized files are collected for compilation, it is the user's job
  to ensure non-standardized (i.e. vendor-related) files are handled
  appropriately in `vendor_files.js`.

  The `vendor_files.js` property holds files to be automatically
  concatenated and minified with our project source files.

  The `vendor_files.css` property holds any CSS files to be automatically
  included in our app.

  The `vendor_files.assets` property holds any assets to be copied along
  with our app's assets. This structure is flattened, so it is not
  recommended that you use wildcards.
  ###

  vendor_files:
    js: [
      "vendor/bower_components/jquery/dist/jquery.js"
      "vendor/bower_components/angular/angular.js"
      "vendor/bower_components/angular-animate/angular-animate.js"
      "vendor/bower_components/angular-bootstrap/ui-bootstrap-tpls.min.js"
      "vendor/bower_components/angular-ui-router/release/angular-ui-router.js"
      "vendor/bower_components/angular-retina/dist/angular-retina.js"
      "vendor/bower_components/angular-ui-utils/modules/route/route.js"
      "vendor/bower_components/Wallpaper/jquery.fs.wallpaper.js"
    ]
    css: ["vendor/bower_components/Wallpaper/jquery.fs.wallpaper.css"]
    assets: []