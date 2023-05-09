import 'package:data_connection_checker_nulls/data_connection_checker_nulls.dart';
import 'package:injectable/injectable.dart';

abstract class INetworkInfoService {
  Future<bool> get isConnected;
}

@Singleton(as: INetworkInfoService)
class NetworkInfoService implements INetworkInfoService {
  final DataConnectionChecker _connectionChecker;

  NetworkInfoService() : _connectionChecker = DataConnectionChecker();

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}
