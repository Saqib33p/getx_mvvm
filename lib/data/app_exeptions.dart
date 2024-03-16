class AppExeptions implements Exception {
  final _message;
  final _prefix;
  AppExeptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix,$_message';
  }
}

class InternetExeption extends AppExeptions {
  InternetExeption([String? message]) : super(message, 'No Internet');
}

class RequestTimeout extends AppExeptions {
  RequestTimeout([String? message]) : super(message, 'Request Time Out');
}

class ServerExeption extends AppExeptions {
  ServerExeption([String? message]) : super(message, 'Internal Server Error');
}

class FetchDataExeption extends AppExeptions {
  FetchDataExeption([String? message])
      : super(message, 'Error during Communication');
}

class BadRequestExeption extends AppExeptions {
  BadRequestExeption([String? message]) : super(message, 'Invalid request');
}

class UnAuthorizedExeption extends AppExeptions {
  UnAuthorizedExeption([String? message])
      : super(message, 'Unauthorized request');
}

class InvalidExeption extends AppExeptions {
  InvalidExeption([String? message]) : super(message, 'Invalid input');
}
