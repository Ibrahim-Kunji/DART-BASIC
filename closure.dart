void main() {
  String msg = "Dart is good";
  
  Function showMessage = () {
    msg = "Dart is awesome";
    print(msg);
  };

  showMessage();

  Function talk = () {
    String msg = "Hello";
    Function say = () {
      msg = "Assalaam";
      print(msg);
    };

    return say;
  };

  var speak = talk();
  speak();
}
