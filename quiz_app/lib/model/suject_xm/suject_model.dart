class SubjectiveExam {
  int? id;
  String? subjectName;
  String? createdAt;
  String? updatedAt;

  SubjectiveExam({this.id, this.subjectName, this.createdAt, this.updatedAt});

  SubjectiveExam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subjectName = json['subject_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject_name'] = this.subjectName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}