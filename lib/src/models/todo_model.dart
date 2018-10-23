class TodoModel {
  int id;
  String name;
  bool done;

  TodoModel({this.id, this.name, this.done});

  factory TodoModel.copy(TodoModel todo) {
    return TodoModel(id: todo.id, name: todo.name, done: todo.done);
  }

}