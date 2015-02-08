###
Minify the sources!
###

module.exports =
  compile:
    options:
      banner: "<%= meta.banner %>"

    files:
      "<%= concat.compile_js.dest %>": "<%= concat.compile_js.dest %>"