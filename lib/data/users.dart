class Users {
  String name;
  String image;
  String subtitle;

  Users({required this.name, required this.image, required this.subtitle});

  static List<Users> userList = [
    Users(
        name: "Anna",
        image:
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        subtitle: "Hello"),
    Users(
        name: "Jhon",
        image:
            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
        subtitle: "How are you doing"),
    Users(
        name: "Angelia",
        image:
            "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
        subtitle: "What are you doing"),
    Users(
        name: "WhatsApp",
        image:
            "https://static-00.iconduck.com/assets.00/whatsapp-icon-2048x2048-64wjztht.png",
        subtitle: "Create your own avatar"),
    Users(
        name: "Jek",
        image: "https://storage.needpix.com/rsynced_images/man-388104_1280.jpg",
        subtitle: "How are you studying"),
    Users(
        name: "Alex",
        image:
            "https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg",
        subtitle: "What's up bro")
  ];
}
