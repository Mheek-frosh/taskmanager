import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class TaskNotification {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static void initialize() {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);

    _notificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> showNotification(String title, String body) async {
    const AndroidNotificationDetails androidDetails =
    AndroidNotificationDetails('task_channel', 'Task Notifications',
        importance: Importance.max, priority: Priority.high);

    const NotificationDetails notificationDetails =
    NotificationDetails(android: androidDetails);

    await _notificationsPlugin.show(0, title, body, notificationDetails);
  }
}
