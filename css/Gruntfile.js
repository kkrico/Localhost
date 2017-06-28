module.exports = function (grunt) {

    grunt.initConfig({

        watch: {
            cssmin: {
                files: 'styles/*.css',
                options: {
                    livereload: 35729
                }
            },
             all: {
                files: ['**/*.html'],
                options: {
                    livereload: true
                }
            }
        },

        connect: {
            server: {

            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-connect');

    grunt.registerTask('default', ['connect','watch']);
};