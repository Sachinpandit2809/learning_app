// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;
import 'package:learning_app/screens/auth/login_screen.dart' as _i18;
import 'package:learning_app/screens/auth/signup_screen.dart' as _i20;
import 'package:learning_app/screens/category/category_five_screen.dart' as _i1;
import 'package:learning_app/screens/category/category_four_screen.dart' as _i2;
import 'package:learning_app/screens/category/category_one_screen.dart' as _i3;
import 'package:learning_app/screens/category/category_screen.dart' as _i4;
import 'package:learning_app/screens/category/category_three_screen.dart'
    as _i5;
import 'package:learning_app/screens/category/category_two_screen.dart' as _i6;
import 'package:learning_app/screens/course/course_one_screen.dart' as _i7;
import 'package:learning_app/screens/course/course_screen.dart' as _i8;
import 'package:learning_app/screens/course/course_two_screen.dart' as _i9;
import 'package:learning_app/screens/index/index_screen.dart' as _i13;
import 'package:learning_app/screens/index/indexcopy2_screen.dart' as _i14;
import 'package:learning_app/screens/index/indexcopy_screen.dart' as _i15;
import 'package:learning_app/screens/lesson/leson_one_screen.dart' as _i16;
import 'package:learning_app/screens/lesson/lesson_screen.dart' as _i17;
import 'package:learning_app/screens/profile/edit_profile_one_screen.dart'
    as _i10;
import 'package:learning_app/screens/profile/edit_profile_screen.dart' as _i11;
import 'package:learning_app/screens/profile/edit_profile_two_screen.dart'
    as _i12;
import 'package:learning_app/screens/profile/profile_screen.dart' as _i19;
import 'package:learning_app/screens/profile/user_profile_screen.dart' as _i22;
import 'package:learning_app/screens/splash_screen.dart' as _i21;

abstract class $AppRouter extends _i23.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    CategoryFiveRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CategoryFiveScreen(),
      );
    },
    CategoryFourRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoryFourScreen(),
      );
    },
    CategoryOneRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoryOneScreen(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CategoryScreen(),
      );
    },
    CategoryThreeRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CategoryThreeScreen(),
      );
    },
    CategoryTwoRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CategoryTwoScreen(),
      );
    },
    CourseOneRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CourseOneScreen(),
      );
    },
    CourseRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CourseScreen(),
      );
    },
    CourseTwoRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CourseTwoScreen(),
      );
    },
    EditProfileOneRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.EditProfileOneScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>(
          orElse: () => const EditProfileRouteArgs());
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.EditProfileScreen(key: args.key),
      );
    },
    EditProfileTwoRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.EditProfileTwoScreen(),
      );
    },
    IndexRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.IndexScreen(),
      );
    },
    Indexcopy2Route.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.Indexcopy2Screen(),
      );
    },
    IndexcopyRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.IndexcopyScreen(),
      );
    },
    LesonOneRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.LesonOneScreen(),
      );
    },
    LessonRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.LessonScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.LoginScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ProfileScreen(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SignupScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SplashScreen(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.UserProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoryFiveScreen]
class CategoryFiveRoute extends _i23.PageRouteInfo<void> {
  const CategoryFiveRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CategoryFiveRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryFiveRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoryFourScreen]
class CategoryFourRoute extends _i23.PageRouteInfo<void> {
  const CategoryFourRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CategoryFourRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryFourRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoryOneScreen]
class CategoryOneRoute extends _i23.PageRouteInfo<void> {
  const CategoryOneRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CategoryOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryOneRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoryScreen]
class CategoryRoute extends _i23.PageRouteInfo<void> {
  const CategoryRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CategoryThreeScreen]
class CategoryThreeRoute extends _i23.PageRouteInfo<void> {
  const CategoryThreeRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CategoryThreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryThreeRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CategoryTwoScreen]
class CategoryTwoRoute extends _i23.PageRouteInfo<void> {
  const CategoryTwoRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CategoryTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryTwoRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CourseOneScreen]
class CourseOneRoute extends _i23.PageRouteInfo<void> {
  const CourseOneRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CourseOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseOneRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i8.CourseScreen]
class CourseRoute extends _i23.PageRouteInfo<void> {
  const CourseRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i9.CourseTwoScreen]
class CourseTwoRoute extends _i23.PageRouteInfo<void> {
  const CourseTwoRoute({List<_i23.PageRouteInfo>? children})
      : super(
          CourseTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseTwoRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i10.EditProfileOneScreen]
class EditProfileOneRoute extends _i23.PageRouteInfo<void> {
  const EditProfileOneRoute({List<_i23.PageRouteInfo>? children})
      : super(
          EditProfileOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileOneRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i11.EditProfileScreen]
class EditProfileRoute extends _i23.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    _i24.Key? key,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i23.PageInfo<EditProfileRouteArgs> page =
      _i23.PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.EditProfileTwoScreen]
class EditProfileTwoRoute extends _i23.PageRouteInfo<void> {
  const EditProfileTwoRoute({List<_i23.PageRouteInfo>? children})
      : super(
          EditProfileTwoRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileTwoRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i13.IndexScreen]
class IndexRoute extends _i23.PageRouteInfo<void> {
  const IndexRoute({List<_i23.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i14.Indexcopy2Screen]
class Indexcopy2Route extends _i23.PageRouteInfo<void> {
  const Indexcopy2Route({List<_i23.PageRouteInfo>? children})
      : super(
          Indexcopy2Route.name,
          initialChildren: children,
        );

  static const String name = 'Indexcopy2Route';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i15.IndexcopyScreen]
class IndexcopyRoute extends _i23.PageRouteInfo<void> {
  const IndexcopyRoute({List<_i23.PageRouteInfo>? children})
      : super(
          IndexcopyRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexcopyRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i16.LesonOneScreen]
class LesonOneRoute extends _i23.PageRouteInfo<void> {
  const LesonOneRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LesonOneRoute.name,
          initialChildren: children,
        );

  static const String name = 'LesonOneRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i17.LessonScreen]
class LessonRoute extends _i23.PageRouteInfo<void> {
  const LessonRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LessonRoute.name,
          initialChildren: children,
        );

  static const String name = 'LessonRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i18.LoginScreen]
class LoginRoute extends _i23.PageRouteInfo<void> {
  const LoginRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ProfileScreen]
class ProfileRoute extends _i23.PageRouteInfo<void> {
  const ProfileRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SignupScreen]
class SignupRoute extends _i23.PageRouteInfo<void> {
  const SignupRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SplashScreen]
class SplashRoute extends _i23.PageRouteInfo<void> {
  const SplashRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i22.UserProfileScreen]
class UserProfileRoute extends _i23.PageRouteInfo<void> {
  const UserProfileRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}
