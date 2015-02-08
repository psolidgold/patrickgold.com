autoprefixerPlugin = [
  () -> require('autoprefixer-stylus')(
    browsers: 'last 2 versions', 'ie 8', 'ie 9'
  )
]

module.exports =
  build:
    options:
      compress:       false
      linenos:        true
      "include css":  true
      use: autoprefixerPlugin

    files: "<%= build_dir %>/assets/css/<%= pkg.name %>-<%= pkg.version %>.css": "<%= app_files.stylus %>"

  compile:
    options:
      compress:       true
      linenos:        false
      "include css":  true
      use: autoprefixerPlugin

    files: "<%= build_dir %>/assets/css/<%= pkg.name %>-<%= pkg.version %>.css": "<%= app_files.stylus %>"

