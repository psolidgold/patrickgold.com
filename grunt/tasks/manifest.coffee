module.exports = manifest:
  options:
    basePath: 'build/tmp'
    timestamp: true
  src: [
    '*.html'
    'js/*'
    'styles/*.css'
    'img/*.{jpg,gif,png,ico,svg,jpeg}'
  ]
  dest: 'build/tmp/manifest.appcache'