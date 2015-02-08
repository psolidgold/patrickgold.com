module.exports = manifest:
  options:
    basePath: 'build/tmp'
    timestamp: true
  src: [
    '*.html'
    'assets/js/*'
    'assets/css/*.css'
    'assets/img/*.{jpg,gif,png,ico,svg,jpeg}'
  ]
  dest: 'build/tmp/manifest.appcache'