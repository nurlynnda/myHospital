//@dart=2.9

class Profile {
  dynamic id;
  String firstName;
  String lastName;
  String phone;
  String age;
  String gender;

  Profile({
    this.id = '',
    this.firstName,
    this.lastName = '',
    this.phone = '',
    this.age = '',
    this.gender = '',
  });

  Profile.copy(from)
      : this(
            id: from.ic,
            firstName: from.firstName,
            lastName: from.lastName,
            phone: from.phone,
            age: from.age,
            gender: from.gender);

  Profile.fromJson(Map<String, dynamic> json)
      : this(
            id: json['ic'],
            firstName: json['firstName'],
            lastName: json['lastName'],
            phone: json['phone'],
            age: json['age'],
            gender: json['gender']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'phone': phone,
        'age': age,
        'gender': gender
      };

  copyWith({id, firstName, lastName, phone, age, gender}) => Profile(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      age: age ?? this.age,
      gender: gender ?? this.gender);
}
