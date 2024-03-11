import 'lessons.dart';

class Course {
  String id;
  String courseName;
  String master;
  List<Lessons> lessons;
  CourseGrade level;

  Course.create(this.courseName, this.master, this.lessons, this.level) : id = DateTime.now().toIso8601String();

  void printCourseInfo() {
    print('Course ID: $id\nCourse Name: $courseName\nInstructor: $master\nNumber of Lessons: ${lessons.length}\nLevel: ${level.name}');
    lessons.forEach((lesson) => lesson.printCourseInfo());
  }
}

enum CourseGrade {
  Level1,
  Level2,
  Level3
}