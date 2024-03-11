import 'course.dart';
import 'lessons.dart';
import 'users.dart';

void main() {
  var lesson1 = Lessons('Dart ',120);
  var lesson2 = Lessons('Flutter',100);

  var angularCourse = Course.create('Dart + Flutter', 'Engin Demiroğ', [lesson1,lesson2],CourseGrade.Level1);

  User user = User(
    username:"mfi",
    email:"mfi@mail.com",
  );

  angularCourse.printCourseInfo();
  angularCourse.lessons.forEach((Lesson) {
    Lesson.printLessonInfo();
  });
  user.printUserInfo();
}