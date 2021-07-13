import 'package:biblioteca_esfemica/domain/Team.dart';

class TeamDataSource {
  
  List<Team> getTeamList() {
    return [
      Team(
        "Amanda",
        "Jones",
        "Directora General",
        "Abogada",
        "assets/director.jpg",
      ),
      Team(
        "Lidia",
        "Soles",
        "Directora Comunicaciones",
        "Psicologa",
        "assets/operations.jpg",
      ),
      Team(
        "Melida",
        "Giraldo",
        "Directora Redacción",
        "Comunicadora Social",
        "assets/comunicator.jpg",
      ),
      Team(
        "Alicia",
        "Grajales",
        "Directora Administrativa",
        "Economista",
        "assets/admin.jpg",
      ),
    ];
  }
}