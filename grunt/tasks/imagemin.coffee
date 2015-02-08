module.exports =
  images:
    files: [
      expand: true
      cwd: "src/app/assets/img/"
      src: ["**/*.{jpg,png,gif,jpeg}"]
      dest: "build/tmp/assets/img/"
    ]