import 'package:image_picker/image_picker.dart';
import 'concern.dart';

enum AreaCondition {
  average, cluttered, noAccess
}

enum AreaSize {
  small, average, large, exLarge
}

enum Equipment {
  ladder, airSled, specialtyContractor
}

enum Preparation {
  diy, professional
}

class ServiceArea {
  String name;
  bool proofable;
  bool proofingNeeded;
  AreaCondition condition;
  Preparation prep;
  AreaSize size;
  Map<Equipment, bool> equipments = {};
  List<XFile> images = [];
  List<Concern> concerns = [];

  ServiceArea({
    required this.name,
    this.proofable = true,
    this.proofingNeeded = true,
    this.condition = AreaCondition.average,
    this.size = AreaSize.average,
    this.prep = Preparation.diy
  });
}