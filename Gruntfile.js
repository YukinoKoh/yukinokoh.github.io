// grunt wrapper
module.exports = function(grunt){
    //load grunt modules by load-grunt-tasks automatically
    require('load-grunt-tasks')(grunt);
    // use directory definition in .yml
    var config = grunt.file.readYAML('Gruntfile.yml');

    grunt.initConfig({
        sass: {
            dist: {
                src: config.scssDir+'style-y-base.scss',
                dest: config.cssDir+'style-y-base.css'
            }
        },
        jshint: {
            all: [
                'Gruntfile.js',
                config.jsDir+'*.js'
            ]
        },
        watch: {
            sass: {
                files: config.scssDir+'**/*.scss',
                tasks: ['sass']
            }
        },
        /* for image compression
        imagemin: {
            jpg: {
                options: {
                    progressive: true
                },
                files: [{
                    expand: true,
                    cwd: config.imgDir,
                    src: ['img/*.jpg'],
                    dest: config.imgDir+'compressed/',
                    ext: '.jpg'
                }]
            }
        }  */
    });

    // register task
    grunt.registerTask('default',[
        'sass',
        'jshint',
        'watch'
    ]);
};
