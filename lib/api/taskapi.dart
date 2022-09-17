class TaskTree {

  final num id;
  String name;
  List<String>? people;
  List<String>? location;

  TaskTree._(this.id, this.name, {this.people, this.location});

}

class TaskTreeApi {

  static List<TaskTree> getTasks() {
    return [
      TaskTree._(1, "Task 1", people: ["people1"], location: ["location"]),
      TaskTree._(2, "Task 2", people: ["people1"], location: ["location"]),
      TaskTree._(3, "Task 3", people: ["people1"], location: ["location"])
    ];
  }

}