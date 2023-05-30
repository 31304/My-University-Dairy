import 'package:sami_s_application1/presentation/first_screen/first_screen.dart';
import 'package:sami_s_application1/presentation/first_screen/binding/first_binding.dart';
import 'package:sami_s_application1/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:sami_s_application1/presentation/signup_one_screen/binding/signup_one_binding.dart';
import 'package:sami_s_application1/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:sami_s_application1/presentation/signup_two_screen/binding/signup_two_binding.dart';
import 'package:sami_s_application1/presentation/signup_three_screen/signup_three_screen.dart';
import 'package:sami_s_application1/presentation/signup_three_screen/binding/signup_three_binding.dart';
import 'package:sami_s_application1/presentation/signup_four_screen/signup_four_screen.dart';
import 'package:sami_s_application1/presentation/signup_four_screen/binding/signup_four_binding.dart';
import 'package:sami_s_application1/presentation/login_screen/login_screen.dart';
import 'package:sami_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:sami_s_application1/presentation/home_student_screen/home_student_screen.dart';
import 'package:sami_s_application1/presentation/home_student_screen/binding/home_student_binding.dart';
import 'package:sami_s_application1/presentation/contact_student_screen/contact_student_screen.dart';
import 'package:sami_s_application1/presentation/contact_student_screen/binding/contact_student_binding.dart';
import 'package:sami_s_application1/presentation/contact_2_student_screen/contact_2_student_screen.dart';
import 'package:sami_s_application1/presentation/contact_2_student_screen/binding/contact_2_student_binding.dart';
import 'package:sami_s_application1/presentation/contact_3_student_screen/contact_3_student_screen.dart';
import 'package:sami_s_application1/presentation/contact_3_student_screen/binding/contact_3_student_binding.dart';
import 'package:sami_s_application1/presentation/timetable_student_screen/timetable_student_screen.dart';
import 'package:sami_s_application1/presentation/timetable_student_screen/binding/timetable_student_binding.dart';
import 'package:sami_s_application1/presentation/timetable_2_student_screen/timetable_2_student_screen.dart';
import 'package:sami_s_application1/presentation/timetable_2_student_screen/binding/timetable_2_student_binding.dart';
import 'package:sami_s_application1/presentation/announcement_student_screen/announcement_student_screen.dart';
import 'package:sami_s_application1/presentation/announcement_student_screen/binding/announcement_student_binding.dart';
import 'package:sami_s_application1/presentation/events_student_screen/events_student_screen.dart';
import 'package:sami_s_application1/presentation/events_student_screen/binding/events_student_binding.dart';
import 'package:sami_s_application1/presentation/notification_student_screen/notification_student_screen.dart';
import 'package:sami_s_application1/presentation/notification_student_screen/binding/notification_student_binding.dart';
import 'package:sami_s_application1/presentation/home_teacher_screen/home_teacher_screen.dart';
import 'package:sami_s_application1/presentation/home_teacher_screen/binding/home_teacher_binding.dart';
import 'package:sami_s_application1/presentation/officehours_teacher_screen/officehours_teacher_screen.dart';
import 'package:sami_s_application1/presentation/officehours_teacher_screen/binding/officehours_teacher_binding.dart';
import 'package:sami_s_application1/presentation/timetable_teacher_screen/timetable_teacher_screen.dart';
import 'package:sami_s_application1/presentation/timetable_teacher_screen/binding/timetable_teacher_binding.dart';
import 'package:sami_s_application1/presentation/timetable_2_teacher_screen/timetable_2_teacher_screen.dart';
import 'package:sami_s_application1/presentation/timetable_2_teacher_screen/binding/timetable_2_teacher_binding.dart';
import 'package:sami_s_application1/presentation/requests_teacher_screen/requests_teacher_screen.dart';
import 'package:sami_s_application1/presentation/requests_teacher_screen/binding/requests_teacher_binding.dart';
import 'package:sami_s_application1/presentation/home_admin_screen/home_admin_screen.dart';
import 'package:sami_s_application1/presentation/home_admin_screen/binding/home_admin_binding.dart';
import 'package:sami_s_application1/presentation/announcements_admin_screen/announcements_admin_screen.dart';
import 'package:sami_s_application1/presentation/announcements_admin_screen/binding/announcements_admin_binding.dart';
import 'package:sami_s_application1/presentation/announcements_2_admin_screen/announcements_2_admin_screen.dart';
import 'package:sami_s_application1/presentation/announcements_2_admin_screen/binding/announcements_2_admin_binding.dart';
import 'package:sami_s_application1/presentation/events_admin_screen/events_admin_screen.dart';
import 'package:sami_s_application1/presentation/events_admin_screen/binding/events_admin_binding.dart';
import 'package:sami_s_application1/presentation/addevent_admin_screen/addevent_admin_screen.dart';
import 'package:sami_s_application1/presentation/addevent_admin_screen/binding/addevent_admin_binding.dart';
import 'package:sami_s_application1/presentation/editevent_admin_screen/editevent_admin_screen.dart';
import 'package:sami_s_application1/presentation/editevent_admin_screen/binding/editevent_admin_binding.dart';
import 'package:sami_s_application1/presentation/viewevent_admin_screen/viewevent_admin_screen.dart';
import 'package:sami_s_application1/presentation/viewevent_admin_screen/binding/viewevent_admin_binding.dart';
import 'package:sami_s_application1/presentation/removeevent_admin_screen/removeevent_admin_screen.dart';
import 'package:sami_s_application1/presentation/removeevent_admin_screen/binding/removeevent_admin_binding.dart';
import 'package:sami_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:sami_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String firstScreen = '/first_screen';

  static String signupOneScreen = '/signup_one_screen';

  static String signupTwoScreen = '/signup_two_screen';

  static String signupThreeScreen = '/signup_three_screen';

  static String signupFourScreen = '/signup_four_screen';

  static String loginScreen = '/login_screen';

  static String homeStudentScreen = '/home_student_screen';

  static String contactStudentScreen = '/contact_student_screen';

  static String contact2StudentScreen = '/contact_2_student_screen';

  static String contact3StudentScreen = '/contact_3_student_screen';

  static String timetableStudentScreen = '/timetable_student_screen';

  static String timetable2StudentScreen = '/timetable_2_student_screen';

  static String announcementStudentScreen = '/announcement_student_screen';

  static String eventsStudentScreen = '/events_student_screen';

  static String notificationStudentScreen = '/notification_student_screen';

  static String homeTeacherScreen = '/home_teacher_screen';

  static String officehoursTeacherScreen = '/officehours_teacher_screen';

  static String timetableTeacherScreen = '/timetable_teacher_screen';

  static String timetable2TeacherScreen = '/timetable_2_teacher_screen';

  static String requestsTeacherScreen = '/requests_teacher_screen';

  static String homeAdminScreen = '/home_admin_screen';

  static String announcementsAdminScreen = '/announcements_admin_screen';

  static String announcements2AdminScreen = '/announcements_2_admin_screen';

  static String eventsAdminScreen = '/events_admin_screen';

  static String addeventAdminScreen = '/addevent_admin_screen';

  static String editeventAdminScreen = '/editevent_admin_screen';

  static String vieweventAdminScreen = '/viewevent_admin_screen';

  static String removeeventAdminScreen = '/removeevent_admin_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: firstScreen,
      page: () => FirstScreen(),
      bindings: [
        FirstBinding(),
      ],
    ),
    GetPage(
      name: signupOneScreen,
      page: () => SignupOneScreen(),
      bindings: [
        SignupOneBinding(),
      ],
    ),
    GetPage(
      name: signupTwoScreen,
      page: () => SignupTwoScreen(),
      bindings: [
        SignupTwoBinding(),
      ],
    ),
    GetPage(
      name: signupThreeScreen,
      page: () => SignupThreeScreen(),
      bindings: [
        SignupThreeBinding(),
      ],
    ),
    GetPage(
      name: signupFourScreen,
      page: () => SignupFourScreen(),
      bindings: [
        SignupFourBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homeStudentScreen,
      page: () => HomeStudentScreen(),
      bindings: [
        HomeStudentBinding(),
      ],
    ),
    GetPage(
      name: contactStudentScreen,
      page: () => ContactStudentScreen(),
      bindings: [
        ContactStudentBinding(),
      ],
    ),
    GetPage(
      name: contact2StudentScreen,
      page: () => Contact2StudentScreen(),
      bindings: [
        Contact2StudentBinding(),
      ],
    ),
    GetPage(
      name: contact3StudentScreen,
      page: () => Contact3StudentScreen(),
      bindings: [
        Contact3StudentBinding(),
      ],
    ),
    GetPage(
      name: timetableStudentScreen,
      page: () => TimetableStudentScreen(),
      bindings: [
        TimetableStudentBinding(),
      ],
    ),
    GetPage(
      name: timetable2StudentScreen,
      page: () => Timetable2StudentScreen(),
      bindings: [
        Timetable2StudentBinding(),
      ],
    ),
    GetPage(
      name: announcementStudentScreen,
      page: () => AnnouncementStudentScreen(),
      bindings: [
        AnnouncementStudentBinding(),
      ],
    ),
    GetPage(
      name: eventsStudentScreen,
      page: () => EventsStudentScreen(),
      bindings: [
        EventsStudentBinding(),
      ],
    ),
    GetPage(
      name: notificationStudentScreen,
      page: () => NotificationStudentScreen(),
      bindings: [
        NotificationStudentBinding(),
      ],
    ),
    GetPage(
      name: homeTeacherScreen,
      page: () => HomeTeacherScreen(),
      bindings: [
        HomeTeacherBinding(),
      ],
    ),
    GetPage(
      name: officehoursTeacherScreen,
      page: () => OfficehoursTeacherScreen(),
      bindings: [
        OfficehoursTeacherBinding(),
      ],
    ),
    GetPage(
      name: timetableTeacherScreen,
      page: () => TimetableTeacherScreen(),
      bindings: [
        TimetableTeacherBinding(),
      ],
    ),
    GetPage(
      name: timetable2TeacherScreen,
      page: () => Timetable2TeacherScreen(),
      bindings: [
        Timetable2TeacherBinding(),
      ],
    ),
    GetPage(
      name: requestsTeacherScreen,
      page: () => RequestsTeacherScreen(),
      bindings: [
        RequestsTeacherBinding(),
      ],
    ),
    GetPage(
      name: homeAdminScreen,
      page: () => HomeAdminScreen(),
      bindings: [
        HomeAdminBinding(),
      ],
    ),
    GetPage(
      name: announcementsAdminScreen,
      page: () => AnnouncementsAdminScreen(),
      bindings: [
        AnnouncementsAdminBinding(),
      ],
    ),
    GetPage(
      name: announcements2AdminScreen,
      page: () => Announcements2AdminScreen(),
      bindings: [
        Announcements2AdminBinding(),
      ],
    ),
    GetPage(
      name: eventsAdminScreen,
      page: () => EventsAdminScreen(),
      bindings: [
        EventsAdminBinding(),
      ],
    ),
    GetPage(
      name: addeventAdminScreen,
      page: () => AddeventAdminScreen(),
      bindings: [
        AddeventAdminBinding(),
      ],
    ),
    GetPage(
      name: editeventAdminScreen,
      page: () => EditeventAdminScreen(),
      bindings: [
        EditeventAdminBinding(),
      ],
    ),
    GetPage(
      name: vieweventAdminScreen,
      page: () => VieweventAdminScreen(),
      bindings: [
        VieweventAdminBinding(),
      ],
    ),
    GetPage(
      name: removeeventAdminScreen,
      page: () => RemoveeventAdminScreen(),
      bindings: [
        RemoveeventAdminBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FirstScreen(),
      bindings: [
        FirstBinding(),
      ],
    )
  ];
}
