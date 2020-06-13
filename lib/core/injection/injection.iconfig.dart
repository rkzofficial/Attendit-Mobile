// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:hive/hive.dart';
import 'package:Attendit/core/injection/register_module.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:Attendit/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:Attendit/features/home/data/datasources/home_local_datasource.dart';
import 'package:Attendit/core/network/network_info.dart';
import 'package:Attendit/features/newsfeed/data/datasources/news_feed_local_datasource.dart';
import 'package:Attendit/features/timetable/data/datasources/timetable_local_datasource.dart';
import 'package:Attendit/core/navigator/bloc/navigator_bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:Attendit/core/network/graphql_service.dart';
import 'package:Attendit/features/home/data/datasources/home_remote_datasource.dart';
import 'package:Attendit/features/home/data/repositories/home_repository.dart';
import 'package:Attendit/features/home/domain/repositories/i_home_repository.dart';
import 'package:Attendit/features/newsfeed/data/datasources/news_feed_remote_datasource.dart';
import 'package:Attendit/features/newsfeed/data/repositories/news_feed_repository.dart';
import 'package:Attendit/features/newsfeed/domain/repositories/i_news_feed_repository.dart';
import 'package:Attendit/features/timetable/data/datasources/timetable_remote_datasource.dart';
import 'package:Attendit/features/timetable/data/repositories/timetable_repository.dart';
import 'package:Attendit/features/timetable/domain/repositories/i_timetable_repository.dart';
import 'package:Attendit/features/home/domain/usecases/get_all_details.dart';
import 'package:Attendit/features/newsfeed/domain/usecases/get_news_feed.dart';
import 'package:Attendit/features/home/domain/usecases/get_student_details.dart';
import 'package:Attendit/features/timetable/domain/usecases/get_timetable.dart';
import 'package:Attendit/features/home/presentation/bloc/home_bloc.dart';
import 'package:Attendit/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:Attendit/features/auth/data/repositories/auth_repository.dart';
import 'package:Attendit/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:Attendit/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:Attendit/features/timetable/presentation/bloc/bloc/timetable_bloc.dart';
import 'package:Attendit/features/auth/domain/usecases/user_login.dart';
import 'package:Attendit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  final box = await registerModule.openBox;
  g.registerLazySingleton<Box<dynamic>>(() => box);
  g.registerLazySingleton<DataConnectionChecker>(
      () => registerModule.connectionChecker);
  g.registerFactory<IAuthLocalDataSource>(
      () => AuthLocalDataSource(g<Box<dynamic>>()));
  g.registerFactory<IHomeLocalDataSource>(
      () => HomeLocalDataSource(g<Box<dynamic>>()));
  g.registerFactory<INetworkInfo>(
      () => NetworkInfo(g<DataConnectionChecker>()));
  g.registerFactory<INewsFeedLocalDataSource>(
      () => NewsFeedLocalDataSource(g<Box<dynamic>>()));
  g.registerFactory<ITimeTableLocalDataSource>(
      () => TimeTableLocalDataSource(g<Box<dynamic>>()));
  g.registerFactory<NavigatorBloc>(
      () => NavigatorBloc(navigatorKey: g<GlobalKey<NavigatorState>>()));
  g.registerFactory<IGraphQLService>(
      () => GraphQLService(g<Box<dynamic>>(), g<INetworkInfo>()));
  g.registerFactory<IHomeRemoteDataSource>(
      () => HomeRemoteDataSource(g<IGraphQLService>()));
  g.registerFactory<IHomeRepository>(() => HomeRepository(
        g<IHomeLocalDataSource>(),
        g<INetworkInfo>(),
        g<IHomeRemoteDataSource>(),
      ));
  g.registerFactory<INewsFeedRemoteDataSource>(
      () => NewsFeedRemoteDataSource(g<IGraphQLService>()));
  g.registerFactory<INewsFeedRepository>(() => NewsFeedRepository(
        g<INewsFeedLocalDataSource>(),
        g<INetworkInfo>(),
        g<INewsFeedRemoteDataSource>(),
      ));
  g.registerFactory<ITimeTableRemoteDatasource>(
      () => TimeTableRemoteDatasource(g<IGraphQLService>()));
  g.registerFactory<ITimeTableRepository>(() => TimeTableRepository(
        g<ITimeTableRemoteDatasource>(),
        g<ITimeTableLocalDataSource>(),
        g<INetworkInfo>(),
      ));
  g.registerLazySingleton<GetAllDetails>(
      () => GetAllDetails(g<IHomeRepository>()));
  g.registerLazySingleton<GetNewsFeed>(
      () => GetNewsFeed(g<INewsFeedRepository>()));
  g.registerLazySingleton<GetStudentDetails>(
      () => GetStudentDetails(g<IHomeRepository>()));
  g.registerLazySingleton<GetTimeTable>(
      () => GetTimeTable(g<ITimeTableRepository>()));
  g.registerFactory<HomeBloc>(
      () => HomeBloc(g<GetStudentDetails>(), g<GetAllDetails>()));
  g.registerFactory<IAuthRemoteDataSource>(
      () => AuthRemoteDataSource(g<IGraphQLService>()));
  g.registerFactory<IAuthRepository>(() => AuthRepository(
        g<INetworkInfo>(),
        g<IAuthLocalDataSource>(),
        g<IAuthRemoteDataSource>(),
      ));
  g.registerFactory<NewsfeedBloc>(() => NewsfeedBloc(g<GetNewsFeed>()));
  g.registerFactory<TimetableBloc>(() => TimetableBloc(g<GetTimeTable>()));
  g.registerLazySingleton<UserLogin>(() => UserLogin(g<IAuthRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<UserLogin>()));
}

class _$RegisterModule extends RegisterModule {}
