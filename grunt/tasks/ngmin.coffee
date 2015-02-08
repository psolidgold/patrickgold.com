module.exports =

  ###
  `ng-min` annotates the sources before minifying. That is, it allows us
  to code without the array syntax.
  ###
  compile:
    files: [
      src: [ "<%= app_files.js %>" ]
      cwd: "<%= build_dir %>"
      dest: "<%= build_dir %>"
      expand: true
    ]