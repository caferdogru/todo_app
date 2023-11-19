

enum Status  { waiting, ongoing, completed }

class ToDo {

  ToDo({required this.title, required this.description, required this.deadline, required this.status});

  final String title;
  final String description;
  final DateTime deadline;
  Status status;

  get daysRemaining {
    return DateTime.now().difference(deadline).inDays;
  }

}