import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskModel {
  final String title;
  final String description;
  final bool done;
  final TaskPriority priority;
  TaskModel({
    required this.title,
    required this.description,
    this.done = false,
    this.priority = TaskPriority.normal,
  });

  @override
  String toString() {
    return 'TaskModel(title: $title, description: $description, done: $done, priority: $priority)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'done': done,
      'priority': priority.toString(),
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      title: map['title'] as String,
      description: map['description'] as String,
      done: map['done'] as bool,
      priority: getTaskFromString(map['priority']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  static TaskPriority getTaskFromString(String task) {
    switch (task) {
      case "TaskPriority.high":
        return TaskPriority.high;
      case "TaskPriority.important":
        return TaskPriority.important;
      default:
        return TaskPriority.normal;
    }
  }
}

enum TaskPriority { high, important, normal }
