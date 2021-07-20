const unitRadian = 57.295779513;

extension DegreeToRadians on double {
  double toRadians() {
    return this / unitRadian;
  }
}