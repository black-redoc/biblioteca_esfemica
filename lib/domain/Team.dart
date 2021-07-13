class Team {
  final String? _firstName;
  final String? _lastName;
  final String? _workArea;
  final String? _carrer;

  Team(
    this._firstName,
    this._lastName,
    this._workArea,
    this._carrer
  );

  String get completeName => "$_firstName $_lastName";
  String get workArea => "$_workArea";
  String get carrer => "$_carrer";

}