class MessageError {
  late String val;

  MessageError(int code) {
    switch (code) {
      case 400:
        val = 'Bad Request';
      case 401:
        val = 'Unauthorized';
      case 403:
        val = 'Forbidden';
      case 404:
        val = 'Not Found';
      case 500:
        val = 'Internal Server Error';
      case 502:
        val = 'Bad Gateway';
      case 503:
        val = 'Service Unavailable';
      case 504:
        val = 'Gateway Timeout';
        break;
      default:
    }
  }
}
