import 'package:task_tree/ui/pages/addtask.dart';
import 'package:task_tree/ui/pages/home.dart';

class Routes {

  static const home = "/home";
  static const add = "/add";

  static buildRoutes() {
    return {
      Routes.home: (context) => const TaskTreeHomePage(),
      Routes.add: (context) => const TaskTreeAddPage(),
    };
  }

}