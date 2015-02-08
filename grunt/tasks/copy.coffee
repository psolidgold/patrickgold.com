###
The `copy` task just copies files from A to B. We use it here to copy
our project assets (images, fonts, etc.) and javascripts into
`build_dir`, and then to copy the assets to `compile_dir`.
###
module.exports =
    build_app_assets:
      files: [
        src: [ "**" ]
        dest: "<%= build_dir %>/assets/"
        cwd: "src/assets"
        expand: true
      ]

    build_vendor_assets:
      files: [
        src: [ "<%= vendor_files.assets %>" ]
        dest: "<%= build_dir %>/assets/"
        cwd: "."
        expand: true
        flatten: true
      ]

    build_appjs:
      files: [
        src: [ "<%= app_files.js %>" ]
        dest: "<%= build_dir %>"
        cwd: "."
        expand: true
      ]

    build_vendorjs:
      files: [
        src: [ "<%= vendor_files.js %>" ]
        dest: "<%= build_dir %>"
        cwd: "."
        expand: true
      ]

    compile_assets:
      files: [
        src: [ "**" ]
        dest: "<%= compile_dir %>/assets"
        cwd: "<%= build_dir %>/assets"
        expand: true
      ]