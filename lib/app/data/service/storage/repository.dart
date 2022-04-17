import 'package:todo_miniproj_1/app/data/model/task.dart';
import 'package:todo_miniproj_1/app/data/providers/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
