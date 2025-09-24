import 'package:myapp/features/parcel/domain/parcel.dart';

abstract class ParcelRepository {
  Future<List<Parcel>> getParcels();
  Future<Parcel> getParcelById(String id);
}
