class registerationgList {
  registerationgList({required this.text, required this.Hinttext});
  String text;
  String Hinttext;
}

List<registerationgList> SignUpList = [
  registerationgList(
    text: 'Full Name',
    Hinttext: 'Enter your full name',
  ),
  registerationgList(
    text: 'Email address',
    Hinttext: 'Eg email@email.com',
  ),
  registerationgList(
    text: 'Password',
    Hinttext: '**** *** ****',
  )
];
List<registerationgList> LoginList = [
  registerationgList(
    text: 'Full Name',
    Hinttext: 'Enter your full name',
  ),
  registerationgList(
    text: 'Password',
    Hinttext: '**** *** ****',
  )
];