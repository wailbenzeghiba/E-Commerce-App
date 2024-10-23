// ignore_for_file: non_constant_identifier_names

class UnboardingContent {
  String image;
  String title;
  String Description;
  UnboardingContent(
      {required this.Description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      Description: "Pick From our High Quality Products",
      image: "images/Board1.png",
      title: "High Quality\nGuaranteed!"),
  UnboardingContent(
      Description: "Easy Payment On Delivery Or By Card",
      image: "images/OnboardPayment.png",
      title: "Easy Payment"),
];
