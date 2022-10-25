import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class EyeColors {
  String? id;
  String? questionId;
  String? order;
  String? text;
  Image? image;
  String? points;
  String? isRight;
  String? resultId;
  String? feedback;

  EyeColors(
      {this.id,
      this.questionId,
      this.order,
      this.text,
      this.image,
      this.points,
      this.isRight,
      this.resultId,
      this.feedback});

  EyeColors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    questionId = json['question_id'];

    order = json['order'];
    text = json['text'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    points = json['points'];
    isRight = json['is_right'];
    resultId = json['result_id'];
    feedback = json['feedback'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question_id'] = this.questionId;
    data['order'] = this.order;
    data['text'] = this.text;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['points'] = this.points;
    data['is_right'] = this.isRight;
    data['result_id'] = this.resultId;
    data['feedback'] = this.feedback;
    return data;
  }
}

class Image {
  int? id;
  String? title;
  String? filename;
  String? url;
  String? link;
  String? alt;
  String? author;
  String? description;
  String? caption;
  String? name;
  String? status;
  int? uploadedTo;
  int? date;
  int? modified;
  int? menuOrder;
  String? mime;
  String? type;
  String? subtype;
  String? icon;
  String? dateFormatted;
  Nonces? nonces;
  String? editLink;
  bool? meta;
  String? authorName;
  String? authorLink;
  int? filesizeInBytes;
  String? filesizeHumanReadable;
  String? context;
  int? height;
  int? width;
  String? orientation;
  Sizes? sizes;
  Compat? compat;

  Image(
      {this.id,
      this.title,
      this.filename,
      this.url,
      this.link,
      this.alt,
      this.author,
      this.description,
      this.caption,
      this.name,
      this.status,
      this.uploadedTo,
      this.date,
      this.modified,
      this.menuOrder,
      this.mime,
      this.type,
      this.subtype,
      this.icon,
      this.dateFormatted,
      this.nonces,
      this.editLink,
      this.meta,
      this.authorName,
      this.authorLink,
      this.filesizeInBytes,
      this.filesizeHumanReadable,
      this.context,
      this.height,
      this.width,
      this.orientation,
      this.sizes,
      this.compat});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    filename = json['filename'];
    url = json['url'];
    link = json['link'];
    alt = json['alt'];
    author = json['author'];
    description = json['description'];
    caption = json['caption'];
    name = json['name'];
    status = json['status'];
    uploadedTo = json['uploadedTo'];
    date = json['date'];
    modified = json['modified'];
    menuOrder = json['menuOrder'];
    mime = json['mime'];
    type = json['type'];
    subtype = json['subtype'];
    icon = json['icon'];
    dateFormatted = json['dateFormatted'];
    nonces =
        json['nonces'] != null ? new Nonces.fromJson(json['nonces']) : null;
    editLink = json['editLink'];
    meta = json['meta'];
    authorName = json['authorName'];
    authorLink = json['authorLink'];
    filesizeInBytes = json['filesizeInBytes'];
    filesizeHumanReadable = json['filesizeHumanReadable'];
    context = json['context'];
    height = json['height'];
    width = json['width'];
    orientation = json['orientation'];
    sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
    compat =
        json['compat'] != null ? new Compat.fromJson(json['compat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['filename'] = this.filename;
    data['url'] = this.url;
    data['link'] = this.link;
    data['alt'] = this.alt;
    data['author'] = this.author;
    data['description'] = this.description;
    data['caption'] = this.caption;
    data['name'] = this.name;
    data['status'] = this.status;
    data['uploadedTo'] = this.uploadedTo;
    data['date'] = this.date;
    data['modified'] = this.modified;
    data['menuOrder'] = this.menuOrder;
    data['mime'] = this.mime;
    data['type'] = this.type;
    data['subtype'] = this.subtype;
    data['icon'] = this.icon;
    data['dateFormatted'] = this.dateFormatted;
    if (this.nonces != null) {
      data['nonces'] = this.nonces!.toJson();
    }
    data['editLink'] = this.editLink;
    data['meta'] = this.meta;
    data['authorName'] = this.authorName;
    data['authorLink'] = this.authorLink;
    data['filesizeInBytes'] = this.filesizeInBytes;
    data['filesizeHumanReadable'] = this.filesizeHumanReadable;
    data['context'] = this.context;
    data['height'] = this.height;
    data['width'] = this.width;
    data['orientation'] = this.orientation;
    if (this.sizes != null) {
      data['sizes'] = this.sizes!.toJson();
    }
    if (this.compat != null) {
      data['compat'] = this.compat!.toJson();
    }
    return data;
  }
}

class Nonces {
  String? update;
  String? delete;
  String? edit;

  Nonces({this.update, this.delete, this.edit});

  Nonces.fromJson(Map<String, dynamic> json) {
    update = json['update'];
    delete = json['delete'];
    edit = json['edit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['update'] = this.update;
    data['delete'] = this.delete;
    data['edit'] = this.edit;
    return data;
  }
}

class Sizes {
  Thumbnail? thumbnail;
  Thumbnail? medium;
  Thumbnail? full;

  Sizes({this.thumbnail, this.medium, this.full});

  Sizes.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    medium =
        json['medium'] != null ? new Thumbnail.fromJson(json['medium']) : null;
    full = json['full'] != null ? new Thumbnail.fromJson(json['full']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail!.toJson();
    }
    if (this.medium != null) {
      data['medium'] = this.medium!.toJson();
    }
    if (this.full != null) {
      data['full'] = this.full!.toJson();
    }
    return data;
  }
}

class Thumbnail {
  int? height;
  int? width;
  String? url;
  String? orientation;

  Thumbnail({this.height, this.width, this.url, this.orientation});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    url = json['url'];
    orientation = json['orientation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['url'] = this.url;
    data['orientation'] = this.orientation;
    return data;
  }
}

class Compat {
  String? item;
  String? meta;

  Compat({this.item, this.meta});

  Compat.fromJson(Map<String, dynamic> json) {
    item = json['item'];
    meta = json['meta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item'] = this.item;
    data['meta'] = this.meta;
    return data;
  }
}

Future<EyeColors> fetchNotes() async {
  var url = "https://yourbestcolors.cyou/wp-json/test/v1/question/10";

  var response = await http.get(Uri.parse(url));
  final jsonresponse = json.decode(response.body);

  if (response.statusCode == 200) {
    return EyeColors.fromJson(jsonresponse[0]);
  } else {
    throw Exception('Failed to load post');
  }
}
