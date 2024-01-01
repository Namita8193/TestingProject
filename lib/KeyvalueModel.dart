class KeyvalueModel {
  dynamic? name;
  dynamic? key;


  KeyvalueModel({this.name, this.key,});

  static List<KeyvalueModel>? fromJsonList(List list) {
    if (list == null) return null;
    return list.map((item) => KeyvalueModel.fromsJson(item)).toList();
  }

  static List<KeyvalueModel>? fromJsonListData(List list) {
    if (list == null) return null;
    List<KeyvalueModel> myList = [];
    list.forEach((element) {
      myList.add(new KeyvalueModel.fromsJson(element));
    });
    return myList;
  }

  KeyvalueModel.fromsJson(Map<String, dynamic> json) {
    key = json['key']??json['bookstatus']??json['id'];
    name = json['name']??json['userid'];



  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['key'] = this.key;

    return data;
  }

  @override
  String toString() => name;
}
