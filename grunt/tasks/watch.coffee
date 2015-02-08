module.exports =
  options:
    livereload: false
    spawn: false

  ###
  And for rapid development, we have a watch set up that checks to see if
  any of the files listed below change, and then to execute the listed
  tasks when they do. This just saves us from having to type "grunt" into
  the command-line every time we want to see what we're working on; we can
  instead just leave "grunt watch" running in a background terminal. Set it
  and forget it, as Ron Popeil used to tell us. But we don't need the same
  thing to happen for all the files.
  ###


  ###
  When the Gruntfile changes, we just want to lint it. In fact, when
  your Gruntfile changes, it will automatically be reloaded!
  ###
  gruntfile:
    files: "Gruntfile.js"
    tasks: [ "jshint:gruntfile" ]


  ###
  When our JavaScript source files change, we want to run lint them and
  run our unit tests.
  ###
  jssrc:
    files: [ "<%= app_files.js %>" ]
    tasks: [ "jshint:src", "copy:build_appjs" ]


  ###
  When our CoffeeScript source files change, we want to run lint them and
  run our unit tests.
  ###
  coffeesrc:
    files: [ "<%= app_files.coffee %>" ]
    tasks: [ "coffeelint:src", "coffee:source", "copy:build_appjs" ]


  ###
  When assets are changed, copy them. Note that this will *not* copy new
  files, so this is probably not very useful.
  ###
  assets:
    files: [ "src/assets/**/*" ]
    tasks: [ "copy:build_app_assets", "copy:build_vendor_assets" ]


  ###
  When index.tpl.html changes, we need to compile it.
  ###
  html:
    files: [ "<%= app_files.html %>" ]
    tasks: [ "injectFilePaths:build" ]


  ###
  When our templates change, we only rewrite the template cache.
  ###
  tpls:
    files: [ "<%= app_files.atpl %>", "<%= app_files.ctpl %>" ]
    tasks: [ "html2js" ]


  ###
  When the CSS files change, we need to compile and minify them.
  ###
  stylus:
    files: [ "src/**/*.stylus" ]
    tasks: [ "stylus:build" ]


  ###
  When a JavaScript unit test file changes, we only want to lint it and
  run the unit tests. We don't want to do any live reloading.
  ###
  jsunit:
    files: [ "<%= app_files.jsunit %>" ]
    tasks: [ "jshint:test" ]


  ###
  When a CoffeeScript unit test file changes, we only want to lint it and
  run the unit tests. We don't want to do any live reloading.
  ###
  coffeeunit:
    files: [ "<%= app_files.coffeeunit %>" ]
    tasks: [ "coffeelint:test" ]