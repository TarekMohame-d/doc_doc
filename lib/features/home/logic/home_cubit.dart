import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/data/repos/home_repo.dart';
import 'package:doc_doc/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecialization() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];

      // getting the doctors list for the first specialization by default.
      getDoctorsList(specializationId: specializationsList?.first?.id);

      emit(HomeState.specializationsSuccess(specializationsList));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
