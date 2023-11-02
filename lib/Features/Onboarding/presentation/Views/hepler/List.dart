class OnBoardingList {
  OnBoardingList(
      {required this.image, required this.text1, required this.text2});
  String image;
  String text1;
  String text2;
}

List<OnBoardingList> Onboardinglist = [
  OnBoardingList(
    image: 'assets/Tracking & Maps.png',
    text1: 'Nearby restaurants',
    text2: 'You dont have to go far to find a good restaurant ' +
        'we have provided all the restaurants that is' +
        'near you',
  ),
  OnBoardingList(
    image: 'assets/Order illustration.png',
    text1: 'Select the Favorites Menu',
    text2: 'Now eat well, dont leave the house,You can ' +
        'choose your favorite food only with ' +
        'one click',
  ),
  OnBoardingList(
    image: 'assets/Safe Food.png',
    text1: 'Good food at a cheap price',
    text2: 'You can eat at expensive restaurants with ' + 'affordable price',
  )
];
