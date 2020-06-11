import 'dart:convert';

import 'package:Attendit/features/home/data/models/student_assigments_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/util/gql_mutation.dart';
import '../../../../core/util/gql_query.dart';
import '../../../../core/util/gql_query.dart';
import '../models/student_attendence_model.dart';
import '../models/student_attendence_model.dart';
import '../models/student_details_model.dart';

abstract class IHomeRemoteDataSource {
  /// Gets the cached [StudentDetailsModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [ServerException] if no cached data is present.
  ///
  Future<StudentDetailsModel> getStudentDetails();

  /// Gets the cached [StudentAttendanceModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [ServerException] if no cached data is present.
  ///
  Future<List<StudentAttendanceModel>> getStudentAttendance();

  /// Gets the cached [StudentAssignmentModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [ServerException] if no cached data is present.
  ///
  Future<List<StudentAssignmentModel>> getStudentAssignments();
}

class HomeRemoteDataSource implements IHomeRemoteDataSource {
  final GraphQLClient _client;

  HomeRemoteDataSource(this._client);

  @override
  Future<List<StudentAssignmentModel>> getStudentAssignments() {
    // TODO: implement getStudentAssignments
    throw UnimplementedError();
  }

  @override
  Future<List<StudentAttendanceModel>> getStudentAttendance() {
    // TODO: implement getStudentAttendance
    throw UnimplementedError();
  }

  @override
  Future<StudentDetailsModel> getStudentDetails() async {
    try {
      final result = await _client
          .query(QueryOptions(documentNode: gql(Gqlquery.studentDetailsQuery)));//todo: future change query 
      if (result.exception == null) {
        return StudentDetailsModel.fromJson(
            json.decode(result.data["StudentDetails"]));
      }
      throw UnauthorizedException();
    } on UnauthorizedException {
      throw UnauthorizedException();
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }
}
