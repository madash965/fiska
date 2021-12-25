import 'package:fiska/services/exception_service.dart';
import 'package:fiska/widgets/dialoghelper.dart';

class BaseController {
  void handleError(error) {
    hideLoading();
    if (error is BadRequestException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    } else if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    } else if (error is ApiNotRespondingException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    }
  }

  void showLoading([String message]) {
    DialogHelper.showLoading(message);
  }

  void hideLoading() {
    DialogHelper.hideLoading();
  }
}
