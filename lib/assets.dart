enum Assets {
  avatar0('avatar-0.png'),
  avatar1('avatar-1.png'),
  avatar2('avatar-2.png'),
  avatar3('avatar-3.png'),
  avatar4('avatar-4.png'),
  avatar5('avatar-5.png'),
  ;

  final String filename;

  const Assets(this.filename);

  String get path => "assets/$filename";
}
