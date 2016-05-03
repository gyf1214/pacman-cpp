var gulp = require('gulp');
var exec = require('child_process').exec;

gulp.task('make', function(cb) {
  var child = exec('make', function (err) {
    cb(err);
  });
  child.stdout.pipe(process.stdout);
  child.stderr.pipe(process.stderr);
});

gulp.task('watch', function () {
  gulp.watch(['makefile', 'src/**/*.*'], ['make']);
});
