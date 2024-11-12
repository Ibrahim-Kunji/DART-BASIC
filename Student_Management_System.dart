import 'dart:io';

class Student {
  String? name;
  String id;
  String email;
  String course;
  double level;
  String createdAt;

  // Constructor to initialize the student details
  Student(this.name, this.id, this.email, this.course, this.level, this.createdAt);

  // Method to display student information
  void displayInfor() {
    print(
        "ID : $id, Name : $name, Email : $email,  Course : $course, Level : $level, Created_at : $createdAt");
  }
}

class StudentManagementSystem {
  List<Student> students = []; // List to store all student records
  static int id_counter = 1; // Counter for generating unique student IDs

  // Method for generating student registration number
  String generate_id() {
    return ("${id_counter++}"); // Increases the counter and returns the ID
  }

  // Method to get the current date and time as a string
  String createdAt() {
    DateTime now = DateTime.now(); // Get current date and time
    return now.toString(); // Convert date and time to a string
  }

  // Method for adding new student
  void addStudent() {
    try {
      stdout.write("Enter student name: ");
      String name = stdin.readLineSync()!; // Get student name from user input
      stdout.write("Enter student email address: ");
      String email = stdin.readLineSync()!; // Get student email from user input
      stdout.write("Enter student course: ");
      String course = stdin.readLineSync()!; // Get student course from user input
      stdout.write("Enter student level: ");
      double level = double.parse(stdin.readLineSync()!); // Get student level and convert to double
      String id = generate_id(); // Generate a new student ID
      String createdAtTime = createdAt(); // Get the current date and time

      // Creating an object of Student class
      Student newStudent = Student(name, id, email, course, level, createdAtTime);

      // Check if the email contains "@", if yes, add the student
      if (email.contains("@")) {
        students.add(newStudent);
        print("Student added successfully.");
      } else {
        print("You must put @ in your email address!"); // Email validation
      }
      
    } catch (e) {
      print("Error adding student: $e"); // Catch and display any errors
    }
  }

  // Method for displaying all the students
  Future<void> displayAllStudents() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate loading delay
    if (students.isEmpty) {
      print("No record found!"); // If no students are added
    } else {
      for (var student in students) {
        student.displayInfor(); // Display each student's information
      }
    }
  }

  // Method for updating student record
  void updateStudent() {
    stdout.write("Enter student ID to update: ");
    String id = stdin.readLineSync()!; // Get student ID to update

    for (var student in students) {
      if (student.id == id) {
        // Prompt for new details and update student information
        stdout.write("Enter new name: ");
        String? newName = stdin.readLineSync()!;
        if (newName.isNotEmpty) student.name = newName;

        stdout.write("Enter new course: ");
        String? newCourse = stdin.readLineSync();
        if (newCourse!.isNotEmpty) student.course = newCourse;

        stdout.write("Enter new level: ");
        String? newLevel = stdin.readLineSync()!;
        if (newLevel.isNotEmpty) student.level = double.parse(newLevel);

        print("Student record updated successfully.");
        return; // Exit after updating the student
      }
    }
    print("Student with ID $id not found."); // If student ID not found
  }

  // Method for deleting a student
  void deleteStudent() {
    stdout.write("Enter student ID to delete: ");
    String id = stdin.readLineSync()!; // Get student ID to delete

    for (var student in students) {
      if (student.id == id) {
        students.remove(student); // Remove student from the list
        print("Student deleted successfully.");
        return; // Exit after deleting the student
      }
    }
    print("Student with ID $id not found."); // If student ID not found
  }

  // Main menu
  void mainMenu() async {
    while (true) {
      print("\n--- Student Management System ---\n");

      print("1. Add Student");
      print("2. Display All Students");
      print("3. Update Student");
      print("4. Delete Student");
      print("5. Exit");

      stdout.write("Choose an option: ");
      String choice = stdin.readLineSync()!; // Get user's choice
      switch (choice) {
        case '1':
          addStudent(); // Add a new student
          break;
        case '2':
          print("Loading......");
          await displayAllStudents(); // Display all students after delay
          break;
        case '3':
          updateStudent(); // Update student details
          break;
        case '4':
          deleteStudent(); // Delete a student
          break;
        case '5':
          print("Exiting..."); // Exit the program
          return;
        default:
          print("Invalid option. Please choose again."); // If invalid option
      }
    }
  }
}

void main() {
  StudentManagementSystem sms = StudentManagementSystem();
  sms.mainMenu(); // Start the main menu of the system
}
