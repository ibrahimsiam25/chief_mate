import '../routes/routes_import.dart';

class ChooseColorCubit extends Cubit<int> {
  ChooseColorCubit() : super(1); 

  void selectColor(int colorIndex) {
    emit(colorIndex);
  }
}
