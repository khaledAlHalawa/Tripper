import '../datasource/base_datasource.dart';

abstract class BaseRepository <T extends BaseRemoteDataSource>{
  const BaseRepository(this.datasource);

  final T datasource;
}
