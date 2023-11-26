import 'package:whatsapp_clone/shared/color.dart';
import 'package:whatsapp_clone/utils/models/model_chats.dart';

final List<ModelChats> dataChats = [
  ModelChats(
    id: 1,
    userName: "Roseanne",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user1.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user1.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 1",
        "newMessage": "New Message 1",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 2,
    userName: "Kelcy",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user2.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kBlackColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user2.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 2",
        "newMessage": "New Message 2",
        "newMessageCount": "0",
        "isSentMessage": false,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 3,
    userName: "Teirtza",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user3.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kGreyColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user3.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 3",
        "newMessage": "New Message 3",
        "newMessageCount": "3",
        "isSentMessage": false,
        "isNewMessage": true,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 4,
    userName: "Dorrie",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user4.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kGreyColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user4.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 4",
        "newMessage": "New Message 4",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 5,
    userName: "Colene",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user5.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user5.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 5",
        "newMessage": "New Message 5",
        "newMessageCount": "0",
        "isSentMessage": false,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 6,
    userName: "Lorettalorna",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user6.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user6.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 6",
        "newMessage": "New Message 6",
        "newMessageCount": "1",
        "isSentMessage": false,
        "isNewMessage": true,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 7,
    userName: "Netti",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user7.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user7.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 7",
        "newMessage": "New Message 7",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 8,
    userName: "Paula",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user8.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user8.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 8",
        "newMessage": "New Message 8",
        "newMessageCount": "0",
        "isSentMessage": false,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 9,
    userName: "Silva",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user9.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kSecondaryColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user9.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 9",
        "newMessage": "New Message 9",
        "newMessageCount": "1",
        "isSentMessage": false,
        "isNewMessage": true,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 10,
    userName: "Manda",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user10.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kSecondaryDarkColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user10.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 10",
        "newMessage": "New Message 10",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 11,
    userName: "Arlena",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user11.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kSecondaryDarkColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user11.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 11",
        "newMessage": "New Message 11",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 12,
    userName: "Marysa",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user12.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kGreyColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user12.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 12",
        "newMessage": "New Message 12",
        "newMessageCount": "0",
        "isSentMessage": false,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 13,
    userName: "Malina",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user13.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user13.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 13",
        "newMessage": "New Message 13",
        "newMessageCount": "2",
        "isSentMessage": false,
        "isNewMessage": true,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 14,
    userName: "Gelya",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user14.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user14.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 14",
        "newMessage": "New Message 14",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 15,
    userName: "Valerie",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user15.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user15.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 15",
        "newMessage": "New Message 15",
        "newMessageCount": "0",
        "isSentMessage": false,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 16,
    userName: "Vanessa",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user16.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kSecondaryDarkColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user16.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 16",
        "newMessage": "New Message 16",
        "newMessageCount": "5",
        "isSentMessage": false,
        "isNewMessage": true,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 17,
    userName: "Miracle",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user17.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kSecondaryDarkColor2,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user17.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": true,
        "inComing": false,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 17",
        "newMessage": "New Message 17",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 18,
    userName: "Aurelie",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user18.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user18.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": false,
        "isCall": true,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": false,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 18",
        "newMessage": "New Message 18",
        "newMessageCount": "0",
        "isSentMessage": false,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 19,
    userName: "Jessica",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user19.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryDarkColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user19.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
      {
        "mediaType": "video",
        "media":
            "https://raw.githubusercontent.com/blackmann/storyexample/master/assets/small.mp4",
        "duration": 4.0,
        "caption": "robo robo. robo me.",
        "createdAt": "2 hours ago",
        "color": ""
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 19",
        "newMessage": "New Message 19",
        "newMessageCount": "4",
        "isSentMessage": false,
        "isNewMessage": true,
        "timeMessage": "Yesterday",
      }
    ],
  ),
  ModelChats(
    id: 20,
    userName: "Griselda",
    userImgNet: "https://source.unsplash.com/500x500?woman",
    userImg: "assets/users/user20.jpeg",
    story: [
      {
        "mediaType": "text",
        "media": "",
        "caption": "Hello everyone",
        "createdAt": "3 hours ago",
        "color": AppColor.kPrimaryColor,
        "duration": 5,
      },
      {
        "mediaType": "image",
        "media": "assets/users/user20.jpeg",
        "caption": "Looks good",
        "createdAt": "2 hours ago",
        "color": "",
        "duration": "5",
      },
    ],
    calls: [
      {
        "isMissed": false,
        "inComing": true,
        "isVideo": true,
        "isCall": false,
        "createdAt": "Yesterday, 16:00",
      }
    ],
    status: [
      {
        "createdAt": "Yesterday",
        "isStatusActive": true,
      }
    ],
    message: [
      {
        "sentMessage": "Message Text 20",
        "newMessage": "New Message 20",
        "newMessageCount": "0",
        "isSentMessage": true,
        "isNewMessage": false,
        "timeMessage": "Yesterday",
      }
    ],
  ),
];
