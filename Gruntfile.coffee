module.exports = (grunt) ->

  # track the time it takes to run tasks
  require("time-grunt")(grunt)
  # while watching, only load the dependencies needed to take the grunt action
  require("jit-grunt")(grunt)

  # loads file paths and other build configurations
  buildConfig = require("./grunt/config.coffee")(grunt)

  # load your tasks, allows them to be in separate files for cleanliness
  tasks = require("load-grunt-configs")(grunt, config: src: "grunt/tasks/*.coffee")

  # Merge all tasks and build config together and then init
  grunt.initConfig grunt.util._.extend(tasks, buildConfig)


  grunt.registerTask "default", [
    "serve"
  ]

  ###
    Run the build process and starts a connect and proxy BrowserSync server then
    initiates the watch task for automatic live reloading.
  ###
  grunt.registerTask "serve", [
    "build"
    "notify:appstarted"
    "connect"
    "browserSync"
    "watch"
  ]

  ###
    Clean build directories, (re)build everything, and copy it to the
    build/tmp folder for serving locally
  ###
  grunt.registerTask "build", [
    "clean"
    "html2js"
    "jshint"
    "concurrent:build"
    "copy"
    "concat:build_css"
    "injectFilePaths:build"
  ]

  ###
    Run the build process, then compile everything by concatenating
    & uglifying scripts and copying it to the build/dist folder
  ###
  grunt.registerTask "compile", [
    "build"
    "stylus:compile"
    "copy:compile_assets"
    "ngAnnotate"
    "concat:compile_js"
    "uglify"
    "injectFilePaths:compile"
  ]


  # A utility function to get all app JavaScript sources.
  filterForJS = (files) ->
    files.filter (file) ->
      file.match /\.js$/


  # A utility function to get all app CSS sources.
  filterForCSS = (files) ->
    files.filter (file) ->
      file.match /\.css$/

  ###
  The index.html template includes the stylesheet and javascript sources
  based on dynamic names calculated in this Gruntfile. This task assembles
  the list into variables for the template to use and then runs the
  compilation.
  ###
  grunt.registerMultiTask "injectFilePaths", "Process index.html template", ->
    dirRE = new RegExp("^(" + grunt.config("build_dir") + "|" + grunt.config("compile_dir") + ")/", "g")

    jsFiles = filterForJS(@filesSrc).map((file) ->
      file.replace dirRE, ""
    )

    cssFiles = filterForCSS(@filesSrc).map((file) ->
      file.replace dirRE, ""
    )

    grunt.file.copy "src/index.tpl.html", @data.dir + "/index.html",
      process: (contents, path) ->
        grunt.template.process contents,
          data:
            scripts: jsFiles
            styles: cssFiles
            version: grunt.config("pkg.version")


