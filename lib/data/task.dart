class ToDoTask {
  ToDoTask(
    String title,
    String? description,
  ) {
    _title = title;
    _description = description;
  }

  bool _isDone = false;
  String _title = "New Task";
  String? _description;

  set setTitle(String newTitle) {
    _title = newTitle;
  }

  String get getTitle => _title;

  set setDescription(String newDesc) {
    _description = newDesc;
  }

  String? get getDescription => _description;

  bool isDescriptionEmpty() {
    if (_description == null) {
      return true;
    }
    return false;
  }

  void setIsDone() {
    _isDone = !_isDone;
  }

  bool get getIsDone => _isDone;
}
