
class AppUser{
  final String uid;
  final String? email;
  const AppUser(this.uid, this.email);

  static const empty = AppUser('-', '');
}