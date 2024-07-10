abstract class PrinterTasks {
  void printDoc() {
    throw UnimplementedError();
  }

  void scan() {
    throw UnimplementedError();
  }

  void fax() {
    throw UnimplementedError();
  }
}

class LaserPrinter extends PrinterTasks {
  @override
  void fax() {
    print('Laser Faxing');
  }

  @override
  void printDoc() {
    print('Laser Printing');
  }

  @override
  void scan() {
    print('Laser Scanning');
  }
}

class InkPrinter extends PrinterTasks {
  @override
  void printDoc() {
    print('Ink Printing');
  }

  @override
  void scan() {
    print('Ink Scanning');
  }
}


void main() {
  final laserPrinter = LaserPrinter();
  laserPrinter.printDoc();
  laserPrinter.scan();
  laserPrinter.fax();

  final inkPrinter = InkPrinter();
  inkPrinter.printDoc();
  inkPrinter.scan();
}