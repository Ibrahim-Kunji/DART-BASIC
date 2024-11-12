import 'dart:io';

void main() async {
  // creating file
  var file = File('Book.txt');

  // write text in the file
  await file.writeAsString("INTRODUCTION TO DART PROGRAMMING LANGUAGE");

  // Reading from a file
  var content = await file.readAsString();
  print(content);

  // deleting a file
  await file.delete();
  print("file deleted!");
  
}
