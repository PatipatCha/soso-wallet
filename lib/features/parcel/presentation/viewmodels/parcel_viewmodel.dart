import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/features/parcel/domain/parcel.dart';
import 'package:myapp/features/parcel/domain/repositories/parcel_repository.dart';
import 'package:myapp/features/parcel/data/repositories/parcel_repository_impl.dart';

part 'parcel_viewmodel.freezed.dart';

@freezed
class ParcelState with _$ParcelState {
  const factory ParcelState.loading() = _Loading;
  const factory ParcelState.data(Parcel parcel) = _Data;
  const factory ParcelState.error(String message) = _Error;
}

class ParcelViewModel extends StateNotifier<ParcelState> {
  final ParcelRepository _repository;

  ParcelViewModel(this._repository) : super(const ParcelState.loading());

  Future<void> fetchParcel(String id) async {
    state = const ParcelState.loading();
    try {
      final parcel = await _repository.getParcelById(id);
      state = ParcelState.data(parcel);
    } catch (e) {
      state = ParcelState.error(e.toString());
    }
  }
}

// Provider for the repository
final parcelRepositoryProvider = Provider<ParcelRepository>((ref) {
  return ParcelRepositoryImpl();
});

// Provider for the ViewModel
final parcelViewModelProvider = StateNotifierProvider.family<ParcelViewModel, ParcelState, String>((ref, id) {
  final repository = ref.watch(parcelRepositoryProvider);
  final viewModel = ParcelViewModel(repository);
  viewModel.fetchParcel(id);
  return viewModel;
});
