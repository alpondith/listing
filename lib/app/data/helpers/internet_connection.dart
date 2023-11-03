import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../widgets/actions/snackbar.dart';

class InternetConnection {
  static void check() async {
    var result = await Connectivity().checkConnectivity();

    // checks if device is connected with wifi or mobile data or ethernet
    if (result == ConnectivityResult.none) {
      // None connection
      SnackbarHandler.handle(
        title: "Internet Connection Failed",
        message: "Please connect with wifi or mobile data",
      );
    } else {
      // checks if the device internet is working or not
      bool connection = await InternetConnectionChecker().hasConnection;
      if (!connection) {
        SnackbarHandler.handle(
          title: "Internet Connection Failed",
          message: "No internet access",
        );
      }
    }
  }
}
