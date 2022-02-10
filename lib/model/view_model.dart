class ViewModel {
  late double _height, _width;

  ViewModel(height, width) {
    _height = height;
    _width = width;
  }

  double get height => _height;
  /* set height(double height) => _height = height; */

  double get width => _width;
  /*  set width(double width) => _width = width;  */
}
