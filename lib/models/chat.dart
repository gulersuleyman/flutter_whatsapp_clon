class Chat {
  String name = "";
  String message = "";
  String time = "";
  String avatarUrl = "";

  Chat({
    this.name = "",
    this.message = "",
    this.time = "",
    this.avatarUrl = "",
  });
}

List<Chat> fakeData = [
  Chat(
    name: "suleyman",
    message: "selam",
    time: "13:47",
    avatarUrl: "resim adresi",
  ),
  Chat(
    name: "selin",
    message: "naber",
    time: "15:47",
    avatarUrl: "resim adresi",
  ),
  Chat(
    name: "sedef",
    message: "ne yaptin",
    time: "13:44",
    avatarUrl: "resim adresi",
  ),
  Chat(
    name: "serdem",
    message: "bira ",
    time: "13:44",
    avatarUrl: "resim adresi",
  ),
];
