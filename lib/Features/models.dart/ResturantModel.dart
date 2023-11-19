class ResturantModel {
  final String country;
  final String city;
  final String Street;
  final String Name;

  ResturantModel(
      {required this.country,
      required this.city,
      required this.Street,
      required this.Name});

  factory ResturantModel.fromJson(Map<String, dynamic> jspnData) {
    return ResturantModel(
        country: jspnData['address']['country'],
        city: jspnData['address']['city'],
        Street: jspnData['address']['street_addr'],
        Name: jspnData['name']);
  }
   Map<String, dynamic> toJson() {
    return {
      'country': country,
      'city': city,
      'name': Name,
      'street':Street
    };
  }

  @override
  List<Object?> get props {
    return [country, city, Name,Street];
  }
}
