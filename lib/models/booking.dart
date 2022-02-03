class Bookdata {
  dynamic id;
  String doctor;
  String department;
  String time;

  Bookdata(
      {this.id = 0, this.doctor = '', this.department = '', this.time = ' '});
  Bookdata.copy(from)
      : this(
            id: from.id,
            doctor: from.doctor,
            department: from.department,
            time: from.time);

  Bookdata.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          doctor: json['doctor'],
          department: json['department'],
          time: json['time'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'doctor': doctor,
        'department': department,
        'time': time,
      };

  copyWith({id, doctor, department, time}) => Bookdata(
      id: id ?? this.id,
      doctor: doctor ?? this.doctor,
      department: department ?? this.department,
      time: time ?? this.department);
}
