module.exports =
  images:
    files: [
      expand: true
      cwd: "src/app/assets/img/"
      src: ["**/*.svg"]
      dest: "build/tmp/assets/img/"
    ]