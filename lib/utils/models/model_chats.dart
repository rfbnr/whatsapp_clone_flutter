class ModelChats {
  final int id;
  final String userName, userImg, userImgNet;
  final List<dynamic> message, status, calls, story;

  ModelChats({
    required this.id,
    required this.userName,
    required this.userImg,
    required this.userImgNet,
    required this.message,
    required this.status,
    required this.calls,
    required this.story,
  });
}
