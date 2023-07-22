import 'package:connectivity_plus/connectivity_plus.dart';

abstract class ConnectivityRepository {
  Future<bool> isConnected();
  Stream<bool> connectivityStream();
}

class InternetConnectionChecker {
  Future<bool> isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  Stream<bool> connectivityStream() {
    return Connectivity().onConnectivityChanged.map(
          (result) => result != ConnectivityResult.none,
        );
  }
}

class ConnectivityRepositoryImpl implements ConnectivityRepository {
  InternetConnectionChecker internetConnectionChecker =
      InternetConnectionChecker();

  @override
  Future<bool> isConnected() {
    return internetConnectionChecker.isConnected();
  }

  @override
  Stream<bool> connectivityStream() {
    return internetConnectionChecker.connectivityStream();
  }
}
