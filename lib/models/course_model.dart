class CourseModel {
  final String title;
  final String category;
  final String description;

  const CourseModel({
    required this.title,
    required this.category,
    this.description = "Learn the fundamentals step by step.",
  });
}

// Mock data - W1 Jour 4
final List<CourseModel> mockCourses = [
  const CourseModel(title: "Flutter Basics", category: "Mobile Dev"),
  const CourseModel(title: "Python for Data", category: "Data Science"),
  const CourseModel(title: "UI/UX Fundamentals", category: "Design"),
  const CourseModel(title: "Firebase Essentials", category: "Backend"),
  const CourseModel(title: "React for Beginners", category: "Web Dev"),
];