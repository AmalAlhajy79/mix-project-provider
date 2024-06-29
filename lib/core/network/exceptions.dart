
class ServerException implements Exception{
  final String message;
  const ServerException([this.message="Server Error"]);

  @override
  String toString() {
    return 'ServerException{message: $message}';
  }
}

class ConnectionError implements Exception{
  const ConnectionError();
  @override
  String toString() {
    return 'fail , no internet connection!!';
  }
}