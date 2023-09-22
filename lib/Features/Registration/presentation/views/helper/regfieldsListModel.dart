class registerationgList {
  registerationgList({required this.text, required this.Hinttext,required this.ObsecureText});
  String text;
  String Hinttext;
  bool ObsecureText;
}

List<registerationgList> SignUpList = [
  registerationgList(
    text: 'Full Name',
    Hinttext: 'Enter your full name', ObsecureText: false,
  ),
  registerationgList(
    text: 'Email address',
    Hinttext: 'Eg email@email.com', ObsecureText: false,
  ),
  registerationgList(
    text: 'Password',
    Hinttext: '**** *** ****', ObsecureText: true,
  )
];
List<registerationgList> LoginList = [
  registerationgList(
    text: 'Full Name',
    Hinttext: 'Enter your full name', ObsecureText: false,
  ),
  registerationgList(
    text: 'Password',
    Hinttext: '**** *** ****', ObsecureText: true,
  )
];