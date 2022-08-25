class NotificationModel {
  String icon, title, subtitle;
  bool status;

  NotificationModel(
      {required this.icon,
      required this.title,
      required this.subtitle,
      this.status = true});
}

List<NotificationModel> notification = [
  NotificationModel(
      icon: "assets/png/chart_disactive.png",
      title: "See your statistic!",
      subtitle: "Hello Phillip, let's see your progress in 2020, and fix it",
      status: false),
  NotificationModel(
      icon: "assets/png/check_active.png",
      title: "Task completed",
      subtitle:
          "Well done Phillip, you have completed all the tasks for today"),
  NotificationModel(
      icon: "assets/png/alert_active.png",
      title: "UI Task less than 8 days",
      subtitle:
          "Phillip, your assignment is less than 8 days away from reaching"),
  NotificationModel(
      icon: "assets/png/chart_active.png",
      title: "See your statistic!",
      subtitle: "Hello Phillip, let's see your progress in 2019, and fix it "),
  NotificationModel(
      icon: "assets/png/check_active.png",
      title: "Task completed",
      subtitle:
          "Well done Phillip, you have completed all the tasks for today"),
  NotificationModel(
      icon: "assets/png/alert_disactive.png",
      title: "Edit Task less than 12 days",
      subtitle: "Phillip, your assignment is less than 12 days away from",
      status: false),
  NotificationModel(
      icon: "assets/png/check_disactive.png",
      title: "Photo Task less than 15 days",
      subtitle: "Phillip, your assignment is less than 15 days away",
      status: false),
  NotificationModel(
      icon: "assets/png/check_disactive.png",
      title: "Task completed",
      subtitle: "Well done Phillip, you have completed all the tasks for today",
      status: false),
  NotificationModel(
      icon: "assets/png/alert_disactive.png",
      title: "UX Task less than 28 days",
      subtitle: "Phillip, your assignment is less than 28 days",
      status: false),
  NotificationModel(
      icon: "assets/png/check_disactive.png",
      title: "Photo Task less than 15 days",
      subtitle: "Phillip, your assignment is less than 15 days away",
      status: false),
  NotificationModel(
      icon: "assets/png/check_disactive.png",
      title: "Task completed",
      subtitle: "Well done Phillip, you have completed all the tasks for today",
      status: false),
  NotificationModel(
      icon: "assets/png/alert_disactive.png",
      title: "UX Task less than 28 days",
      subtitle: "Phillip, your assignment is less than 28 days",
      status: false),
];
