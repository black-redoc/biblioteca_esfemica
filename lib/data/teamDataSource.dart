import 'package:biblioteca_esfemica/domain/Team.dart';

class TeamDataSource {
  
  List<Team> getTeamList() {
    return [
      Team(
        "Amanda",
        "Jones",
        "Directora General",
        "Abogada",
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      ),
      Team(
        "Lidia",
        "Soles",
        "Directora Comunicaciones",
        "Psicologa",
        "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      ),
      Team(
        "Melida",
        "Giraldo",
        "Directora Redacción",
        "Comunicadora Social",
        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      ),
      Team(
        "Alicia",
        "Grajales",
        "Directora Administrativa",
        "Economista",
        "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      ),
    ];
  }
}