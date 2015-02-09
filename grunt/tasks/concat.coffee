###
`grunt concat` concatenates multiple source files into a single file.
###
module.exports =

  ###
  The `build_css` target concatenates compiled CSS and vendor CSS
  together.
  ###
  build_css:
    src: [ "<%= vendor_files.css %>", "<%= build_dir %>/assets/css/<%= pkg.name %>-<%= pkg.version %>.css" ]
    dest: "<%= build_dir %>/assets/css/<%= pkg.name %>-<%= pkg.version %>.css"


  ###
  The `compile_js` target is the concatenation of our application source
  code and all specified vendor source code into a single file.
  ###
  compile_js:
    options:
      banner: "<%= meta.banner %>"

    src: [ "<%= vendor_files.js %>", "module.prefix", "<%= build_dir %>/src/**/*.js", "<%= html2js.app.dest %>", "<%= html2js.common.dest %>", "module.suffix" ]
    dest: "<%= compile_dir %>/assets/js/<%= pkg.name %>-<%= pkg.version %>.js"