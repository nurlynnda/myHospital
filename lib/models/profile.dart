class Profile {
  dynamic ic;
  String firstName;
  String lastName;
  String phone;
  String age;
  String gender;

  Profile({
    this.ic = '',
    this.firstName = '',
    this.lastName = '',
    this.phone = '',
    this.age = '',
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
        'age': age,
        'gender': gender
      };
}
