const String tableNotes = 'notes';

//defining the columns of tables
class NoteFields {
  static const String id = '_id';
  static const String isImportant = 'isImportant';
  static const String number = 'number';
  static const String title = 'title';
  static const String description = 'description';
  static const String time = 'time';
}

class Note {
  // tables of database
  final int? id;
  final  bool isImportant ;
  final int number;
  final String title;
  final String description;
  final DateTime createdTime;

  const Note({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  Note copy({
    int? id,
    bool? isImportant,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Note(
          id: id ?? this.id,
          isImportant: isImportant ?? this.isImportant,
          number: number,
          title: title ?? this.title,
          description: description ?? this.description,
          createdTime: createdTime ?? this.createdTime);

  Map<String, Object?> tojson() => {
        NoteFields.id: id,
        NoteFields.title: title,
        NoteFields.description: description,
        NoteFields.isImportant: isImportant ? 1 : 0,
        NoteFields.number: number,
        NoteFields.time: createdTime.toIso8601String(),
      };
}
