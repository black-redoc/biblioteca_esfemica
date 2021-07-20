import 'PersonalReference.dart';

class Profile {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? career;
  final PersonalReference? personalReference;
  final String? phone;

  Profile({
    this.id,
    this.firstName,
    this.lastName,
    this.career,
    this.personalReference,
    this.phone
  });

  String get completeName => "$firstName $lastName";
  String get firstNameFirstSurName => 
  "${this.firstName?.getFirstWord()} ${this.lastName?.getFirstWord()}";
}

extension FirstWord on String {
  String getFirstWord() => this.split(" ")[0];
}