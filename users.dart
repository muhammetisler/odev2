import 'course.dart';

class User{
  String username;
  String email;
  List<Course> enrolledCourse = [];

  User({required this.email, required this.username});

  void addCourse(Course course) {
    enrolledCourse.add(course);
  }

  void printUserInfo(){
    print('User Name: $username\nEmail: $email');
    enrolledCourse.forEach((course) => print('${course.courseName} Instructor: ${course.master}'));
  }
}