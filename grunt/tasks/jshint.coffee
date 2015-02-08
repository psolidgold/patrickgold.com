module.exports =
  src: [ "<%= app_files.js %>" ]
  test: [ "<%= app_files.jsunit %>" ]
  gruntfile: [ "Gruntfile.js" ]
  options:
    curly: true
    immed: true
    newcap: true
    noarg: true
    sub: true
    boss: true
    eqnull: true

  globals: {}