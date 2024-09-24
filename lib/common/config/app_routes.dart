part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const PARENT = _Paths.PARENT;
  static const HOME = _Paths.HOME;
  static const STORY = _Paths.STORY;
}

abstract class _Paths {
  static const SPLASH = '/splash';
  static const PARENT = '/parent';
  static const HOME = '/home';
  static const STORY = '/story';
}
