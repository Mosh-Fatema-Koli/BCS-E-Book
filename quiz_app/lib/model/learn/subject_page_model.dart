class Subject {
  final String name;
  final List<SubItems> subItems;

  Subject({
    required this.name,
    required this.subItems,
  });
}

class SubItems {
  final String name, endpoint;

  SubItems({required this.name, required this.endpoint});
}
