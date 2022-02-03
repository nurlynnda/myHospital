class Profile {
  final dynamic ic;
  final String firstName;
  final String lastName;
  final String phone;
  final String age;
  final String gender;
  final String uid;

  const Profile({
    this.ic = '',
    this.firstName = '',
    this.lastName = '',
    this.phone = '',
    this.age = '',
    this.uid = '',
    this.gender = '',
  });

  Profile.copy(from)
      : this(
            ic: from.ic,
            firstName: from.firstName,
            lastName: from.lastName,
            phone: from.phone,
            age: from.age,
            gender: from.gender);

  Profile.fromJson(Map<String, dynamic> json)
      : this(
            ic: json['ic'],
            firstName: json['firstName'],
            lastName: json['lastName'],
            phone: json['phone'],
            age: json['age'],
            gender: json['gender']);

  Map<String, dynamic> toJson() => {
        'ic': ic,
        'firstName': firstName,
        'lastName': lastName,
        'phone': phone,
        'uid': uid,
        'age': age,
        'gender': gender
      };
  copyWith({ic, firstName, lastName, phone, uid, age}) => Profile(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        uid: uid ?? this.uid,
      );
}
