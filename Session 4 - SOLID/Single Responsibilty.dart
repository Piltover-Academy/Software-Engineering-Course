//? Single Responsibilty Principle (S)
//? A class should have only one reason to change.

//! BAD
class FileEditors {
  void openFile() {
    /// Some code to open file
  }

  void deleteFile() {
    /// some code to delete file
  }

  //! Irrelevant !
  Future<void> getRequest() async {
    //! code to perform an HTTP Request
  }
}

//* Good
class FileEditor {
  void openFile() {
    /// Some code to open file
  }

  void deleteFile() {
    /// some code to delete file
  }
}

class Network {
  Future<void> getRequest() async {
    // code to perform an HTTP Request
  }
}



