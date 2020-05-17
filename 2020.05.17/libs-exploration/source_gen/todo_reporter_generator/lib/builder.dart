import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

/// The build factory for the todo generation system
Builder todoReporter(BuilderOptions options) =>
    SharedPartBuilder([], 'todo_reporter');
