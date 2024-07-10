//? Dependency Inversion Principle
//? High-level modules should not depend on low-level modules. Both should depend on abstractions.

abstract class Storage {
  void writeData(String data) {
    throw UnimplementedError();
  }
}

class LocalStorage implements Storage {
  @override
  void writeData(String data) {
    print('Writing data to local storage: $data');
  }
}

class CloudStorage implements Storage {
  @override
  void writeData(String data) {
    print('Writing data to cloud storage: $data');
  }
}

class DataHandler {
  final Storage storage;

  DataHandler(this.storage);

  void saveData(String data) {
    storage.writeData(data);
  }
}

void main() {
  final local = LocalStorage();
  final cloud = CloudStorage();

  final dataHandler = DataHandler(local);
  dataHandler.saveData('Hello World');

  final dataHandler2 = DataHandler(cloud);
  dataHandler2.saveData('Hello World');
}
