// grunt wrapper
module.exports = function(grunt){
    //load grunt modules by load-grunt-tasks automatically
    require('load-grunt-tasks')(grunt);
    // use directory definition in .yml
    var config = grunt.file.readYAML('Gruntfile.yml');    

    grunt.initConfig({
        sass: {
            dist: {
                src: config.scssDir+'style.scss',
                dest: config.cssDir+'style.css'
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
        imagemin: {
            jpg: {
                options: {
                    progressive: true
                },
                files: [{
                    expand: true,
                    cwd: config.imgDir,
                    src: ['**/*.jpg'],
                    dest: config.imgDir+'compressed/',
                    ext: '.jpg'
                }]
            }
        }
    });

    // register task
    grunt.registerTask('default',[
        'sass',
        'jshint',
        'imagemin',
        'watch'
    ]);
}; 
