gulp = require 'gulp'
ghPages = require 'gulp-gh-pages'

module.exports = ->

  gulp.src './build/**/*'

  .pipe ghPages
    push: true
    cacheDir: '.tmp'
    remoteUrl: 'https://github.com/footearth/footearth.github.io.git'
    branch: 'master'
