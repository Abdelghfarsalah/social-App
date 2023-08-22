class modelPerson {
  dynamic email;
  dynamic password;
  String name;
  dynamic phone;
  dynamic birthDtae;
  dynamic nationality;
  dynamic imagecover;
  dynamic imageprofile;
  dynamic bio;
  dynamic uid;
  modelPerson({
    required this.uid,
    required this.name,
    required this.birthDtae,
    required this.email,
    required this.password,
    required this.nationality,
    required this.phone,
    this.imagecover,
    this.imageprofile,
    this.bio
  });
  factory modelPerson.fromJson(dynamic data) {
    return modelPerson(
        birthDtae: data['birthDtae'],
        email: data['email'],
        password: data['password'],
        nationality: data['nationality'],
        phone: data['phone'],
        imagecover: data['imagecover'],
        imageprofile: data['imageprofile'],
        bio:data['bio'],
        name:data['name'],
        uid:data['uid']
        );
  }
}
