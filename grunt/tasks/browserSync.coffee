module.exports =
  dev:
    bsFiles:
      src: [
        "<%= build_dir %>/index.html"
        "<%= build_dir %>/templates-app.js"
        "<%= build_dir %>/templates-common.js"
        "<%= build_dir %>/src/app/**/*"
        "<%= build_dir %>/assets/**/*"
        "<%= build_dir %>/vendor/**/*"
      ]

  options:
    watchTask: true
    proxy: "0.0.0.0:3030"