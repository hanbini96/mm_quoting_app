import 'service_area.dart';
import '../address.dart';
import '../customer.dart';
import '../service.dart';

enum PremiseCondition { standard, poor, dilapidated, underConstruction }

enum ServiceScope { entirePremise, spotTreatment }

enum ServiceLevel { standard, whiteGlove }

enum TargetPest { mice, rat, insect }

enum FloorLevel {
  basement,
  level1,
  level2,
  level3,
  level4,
  level5,
  level6above
}

class ProofingService extends Service {
  List<ServiceArea> serviceAreas = [];
  PremiseCondition premiseCondition;
  bool hasElevator;
  FloorLevel floorLevel;
  Map<TargetPest, bool> targetPests = {
    TargetPest.rat: false,
    TargetPest.mice: false,
    TargetPest.insect: false,
  };
  ServiceScope serviceScope; // maybe boolean is enough for this
  ServiceLevel serviceLevel;

  ProofingService({
    Address? address,
    Customer? customer,
    this.premiseCondition = PremiseCondition.standard,
    this.hasElevator = true,
    this.floorLevel = FloorLevel.level1,
    this.serviceScope = ServiceScope.entirePremise,
    this.serviceLevel = ServiceLevel.standard
  }) : super(address: address, customer: customer);
}
