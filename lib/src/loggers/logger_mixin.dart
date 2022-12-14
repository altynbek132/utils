import 'package:logger/logger.dart';
import 'package:utils/src/loggers/simple_log_printer.dart';

mixin LoggerMixin {
  Logger get log => getLogger('$runtimeType');
}
