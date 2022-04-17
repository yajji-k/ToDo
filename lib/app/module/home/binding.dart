import 'package:get/get.dart';
import 'package:todo_miniproj_1/app/data/providers/task/provider.dart';
import 'package:todo_miniproj_1/app/data/service/storage/repository.dart';
import 'package:todo_miniproj_1/app/module/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
