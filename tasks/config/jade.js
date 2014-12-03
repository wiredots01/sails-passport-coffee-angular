module.exports = function(grunt) {

  grunt.config.set('jade', {
    dev: {
      options: {
        bare: true,
        sourceMap: true,
        sourceRoot: './'
      },
      files: [{
        expand: true,
        src: ['assets/js/**/*.jade'],
        dest: 'assets/templates',
        ext: '.html'
        // cwd: "assets/js",
        // src: "assets/js/**/*.jade",
        // dest: "assets/templates",
        // expand: true,
        // ext: ".html"
      }]
    }
  });

  grunt.loadNpmTasks('grunt-contrib-jade');
};
