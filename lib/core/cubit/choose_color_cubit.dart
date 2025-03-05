import '../routes/routes_import.dart';

class ChooseColorCubit extends Cubit<int> {
  ChooseColorCubit(int initialColor ) : super(initialColor);

  void selectColor(int colorIndex) {
    emit(colorIndex);
  }
}
