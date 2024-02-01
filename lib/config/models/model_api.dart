class Post {
  final int firstName;
  final int lastName;
  final String gender;
  final String dateOfBirth;

  Post(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.dateOfBirth});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      firstName: json['firstName'],
      lastName: json['lastName'],
      gender: json['gender'],
      dateOfBirth: json['dateOfBirth'],
    );
  }

  get title => null;
}
