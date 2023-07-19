import 'package:image_picker/image_picker.dart';
import '../../services/api_service.dart';

enum CompletionStatus {
  complete, incomplete, error
}

class Concern {
  String name;
  String type; // stove top, refrigerator, etc
  String condition;
  double hours;
  bool needAssist;
  bool needSpecialtyContractor;
  CompletionStatus completionStatus = CompletionStatus.incomplete;

  List<XFile> images = [];

  Concern({
    required this.name,
    required this.type,
    required this.condition,
    required this.hours,
    this.needAssist = false,
    this.needSpecialtyContractor = false
    // completion status is not set from constructor
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'type': type,
    'condition': condition,
    'hours': hours,
    'needAssist': needAssist,
    'needSpecialtyContractor': needSpecialtyContractor,
    'photos': images.map((image) => ApiService.createImageJson(image)).toList() // should save as path if drafting, otherwise base64
  };
}