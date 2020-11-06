import 'package:loggy/loggy.dart';

/// Different logger types
/// This is how user can make custom logger type that can easily later get put to
/// blacklist or whitelist and it will show it's tag along with class that called it
/// if used added [runtimeType] to Loggy name.
mixin BlacklistedLoggy implements LoggyType {
  @override
  Loggy<BlacklistedLoggy> get logger =>
      Loggy<BlacklistedLoggy>('Blacklisted Loggy - ${runtimeType.toString()}');
}

/// Custom logger type can have any name
mixin ExampleLoggy implements LoggyType {
  @override
  Loggy<ExampleLoggy> get logger => Loggy<ExampleLoggy>('Example');
}
