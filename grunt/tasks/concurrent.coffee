module.exports =
  build: [
    "stylus:build"
  ]
  compile: [
    "uglify:compile"
    "stylus:compile"
  ]
  shrink: [
    "imagemin"
    "svgmin"
    "manifest"
  ]