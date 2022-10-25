import 'dart:convert';
import 'package:http/http.dart' as http;

class testa {
  String? _id;
  Null? _start;
  String? _qType;
  String? _text;
  List<Answers>? _answers;

  testa(
      {String? id,
      Null? start,
      String? qType,
      String? text,
      List<Answers>? answers}) {
    if (id != null) {
      this._id = id;
    }

    if (start != null) {
      this._start = start;
    }
    if (qType != null) {
      this._qType = qType;
    }
    if (text != null) {
      this._text = text;
    }
    if (answers != null) {
      this._answers = answers;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  Null? get start => _start;
  set start(Null? start) => _start = start;
  String? get qType => _qType;
  set qType(String? qType) => _qType = qType;
  String? get text => _text;
  set text(String? text) => _text = text;
  List<Answers>? get answers => _answers;
  set answers(List<Answers>? answers) => _answers = answers;

  testa.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _start = json['start'];
    _qType = json['q_type'];
    _text = json['text'];
    if (json['answers'] != null) {
      _answers = <Answers>[];
      json['answers'].forEach((v) {
        _answers!.add(new Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['start'] = this._start;
    data['q_type'] = this._qType;
    data['text'] = this._text;
    if (this._answers != null) {
      data['answers'] = this._answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Answers {
  String? _id;
  String? _questionId;
  Null? _nextQuestionId;
  String? _order;
  String? _text;
  Image? _image;
  String? _points;
  String? _isRight;
  Null? _tags;
  String? _resultId;
  String? _feedback;

  Answers(
      {String? id,
      String? questionId,
      Null? nextQuestionId,
      String? order,
      String? text,
      Image? image,
      String? points,
      String? isRight,
      Null? tags,
      String? resultId,
      String? feedback}) {
    if (id != null) {
      this._id = id;
    }
    if (questionId != null) {
      this._questionId = questionId;
    }
    if (nextQuestionId != null) {
      this._nextQuestionId = nextQuestionId;
    }

    if (order != null) {
      this._order = order;
    }
    if (text != null) {
      this._text = text;
    }
    if (image != null) {
      this._image = image;
    }
    if (points != null) {
      this._points = points;
    }
    if (isRight != null) {
      this._isRight = isRight;
    }
    if (tags != null) {
      this._tags = tags;
    }
    if (resultId != null) {
      this._resultId = resultId;
    }
    if (feedback != null) {
      this._feedback = feedback;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get questionId => _questionId;
  set questionId(String? questionId) => _questionId = questionId;
  Null? get nextQuestionId => _nextQuestionId;
  set nextQuestionId(Null? nextQuestionId) => _nextQuestionId = nextQuestionId;
  String? get order => _order;
  set order(String? order) => _order = order;
  String? get text => _text;
  set text(String? text) => _text = text;
  Image? get image => _image;
  set image(Image? image) => _image = image;
  String? get points => _points;
  set points(String? points) => _points = points;
  String? get isRight => _isRight;
  set isRight(String? isRight) => _isRight = isRight;
  Null? get tags => _tags;
  set tags(Null? tags) => _tags = tags;
  String? get resultId => _resultId;
  set resultId(String? resultId) => _resultId = resultId;
  String? get feedback => _feedback;
  set feedback(String? feedback) => _feedback = feedback;

  Answers.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _questionId = json['question_id'];
    _nextQuestionId = json['next_question_id'];
    _order = json['order'];
    _text = json['text'];
    _image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    _points = json['points'];
    _isRight = json['is_right'];
    _tags = json['tags'];
    _resultId = json['result_id'];
    _feedback = json['feedback'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['question_id'] = this._questionId;
    data['next_question_id'] = this._nextQuestionId;
    data['order'] = this._order;
    data['text'] = this._text;
    if (this._image != null) {
      data['image'] = this._image!.toJson();
    }
    data['points'] = this._points;
    data['is_right'] = this._isRight;
    data['tags'] = this._tags;
    data['result_id'] = this._resultId;
    data['feedback'] = this._feedback;
    return data;
  }
}

class Image {
  Sizes? _sizes;
  int? _id;
  String? _title;
  String? _filename;
  String? _url;
  String? _link;
  String? _alt;
  String? _author;
  String? _description;
  String? _caption;
  String? _name;
  String? _status;
  int? _uploadedTo;
  int? _date;
  int? _modified;
  int? _menuOrder;
  String? _mime;
  String? _type;
  String? _subtype;
  String? _icon;
  String? _dateFormatted;
  Nonces? _nonces;
  String? _editLink;
  bool? _meta;
  String? _authorName;
  String? _authorLink;
  int? _filesizeInBytes;
  String? _filesizeHumanReadable;
  String? _context;
  int? _height;
  int? _width;
  String? _orientation;
  Compat? _compat;

  Image(
      {Sizes? sizes,
      int? id,
      String? title,
      String? filename,
      String? url,
      String? link,
      String? alt,
      String? author,
      String? description,
      String? caption,
      String? name,
      String? status,
      int? uploadedTo,
      int? date,
      int? modified,
      int? menuOrder,
      String? mime,
      String? type,
      String? subtype,
      String? icon,
      String? dateFormatted,
      Nonces? nonces,
      String? editLink,
      bool? meta,
      String? authorName,
      String? authorLink,
      int? filesizeInBytes,
      String? filesizeHumanReadable,
      String? context,
      int? height,
      int? width,
      String? orientation,
      Compat? compat}) {
    if (sizes != null) {
      this._sizes = sizes;
    }
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
    if (filename != null) {
      this._filename = filename;
    }
    if (url != null) {
      this._url = url;
    }
    if (link != null) {
      this._link = link;
    }
    if (alt != null) {
      this._alt = alt;
    }
    if (author != null) {
      this._author = author;
    }
    if (description != null) {
      this._description = description;
    }
    if (caption != null) {
      this._caption = caption;
    }
    if (name != null) {
      this._name = name;
    }
    if (status != null) {
      this._status = status;
    }
    if (uploadedTo != null) {
      this._uploadedTo = uploadedTo;
    }
    if (date != null) {
      this._date = date;
    }
    if (modified != null) {
      this._modified = modified;
    }
    if (menuOrder != null) {
      this._menuOrder = menuOrder;
    }
    if (mime != null) {
      this._mime = mime;
    }
    if (type != null) {
      this._type = type;
    }
    if (subtype != null) {
      this._subtype = subtype;
    }
    if (icon != null) {
      this._icon = icon;
    }
    if (dateFormatted != null) {
      this._dateFormatted = dateFormatted;
    }
    if (nonces != null) {
      this._nonces = nonces;
    }
    if (editLink != null) {
      this._editLink = editLink;
    }
    if (meta != null) {
      this._meta = meta;
    }
    if (authorName != null) {
      this._authorName = authorName;
    }
    if (authorLink != null) {
      this._authorLink = authorLink;
    }
    if (filesizeInBytes != null) {
      this._filesizeInBytes = filesizeInBytes;
    }
    if (filesizeHumanReadable != null) {
      this._filesizeHumanReadable = filesizeHumanReadable;
    }
    if (context != null) {
      this._context = context;
    }
    if (height != null) {
      this._height = height;
    }
    if (width != null) {
      this._width = width;
    }
    if (orientation != null) {
      this._orientation = orientation;
    }
    if (compat != null) {
      this._compat = compat;
    }
  }

  Sizes? get sizes => _sizes;
  set sizes(Sizes? sizes) => _sizes = sizes;
  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get filename => _filename;
  set filename(String? filename) => _filename = filename;
  String? get url => _url;
  set url(String? url) => _url = url;
  String? get link => _link;
  set link(String? link) => _link = link;
  String? get alt => _alt;
  set alt(String? alt) => _alt = alt;
  String? get author => _author;
  set author(String? author) => _author = author;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get caption => _caption;
  set caption(String? caption) => _caption = caption;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get status => _status;
  set status(String? status) => _status = status;
  int? get uploadedTo => _uploadedTo;
  set uploadedTo(int? uploadedTo) => _uploadedTo = uploadedTo;
  int? get date => _date;
  set date(int? date) => _date = date;
  int? get modified => _modified;
  set modified(int? modified) => _modified = modified;
  int? get menuOrder => _menuOrder;
  set menuOrder(int? menuOrder) => _menuOrder = menuOrder;
  String? get mime => _mime;
  set mime(String? mime) => _mime = mime;
  String? get type => _type;
  set type(String? type) => _type = type;
  String? get subtype => _subtype;
  set subtype(String? subtype) => _subtype = subtype;
  String? get icon => _icon;
  set icon(String? icon) => _icon = icon;
  String? get dateFormatted => _dateFormatted;
  set dateFormatted(String? dateFormatted) => _dateFormatted = dateFormatted;
  Nonces? get nonces => _nonces;
  set nonces(Nonces? nonces) => _nonces = nonces;
  String? get editLink => _editLink;
  set editLink(String? editLink) => _editLink = editLink;
  bool? get meta => _meta;
  set meta(bool? meta) => _meta = meta;
  String? get authorName => _authorName;
  set authorName(String? authorName) => _authorName = authorName;
  String? get authorLink => _authorLink;
  set authorLink(String? authorLink) => _authorLink = authorLink;
  int? get filesizeInBytes => _filesizeInBytes;
  set filesizeInBytes(int? filesizeInBytes) =>
      _filesizeInBytes = filesizeInBytes;
  String? get filesizeHumanReadable => _filesizeHumanReadable;
  set filesizeHumanReadable(String? filesizeHumanReadable) =>
      _filesizeHumanReadable = filesizeHumanReadable;
  String? get context => _context;
  set context(String? context) => _context = context;
  int? get height => _height;
  set height(int? height) => _height = height;
  int? get width => _width;
  set width(int? width) => _width = width;
  String? get orientation => _orientation;
  set orientation(String? orientation) => _orientation = orientation;
  Compat? get compat => _compat;
  set compat(Compat? compat) => _compat = compat;

  Image.fromJson(Map<String, dynamic> json) {
    _sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
    _id = json['id'];
    _title = json['title'];
    _filename = json['filename'];
    _url = json['url'];
    _link = json['link'];
    _alt = json['alt'];
    _author = json['author'];
    _description = json['description'];
    _caption = json['caption'];
    _name = json['name'];
    _status = json['status'];
    _uploadedTo = json['uploadedTo'];
    _date = json['date'];
    _modified = json['modified'];
    _menuOrder = json['menuOrder'];
    _mime = json['mime'];
    _type = json['type'];
    _subtype = json['subtype'];
    _icon = json['icon'];
    _dateFormatted = json['dateFormatted'];
    _nonces =
        json['nonces'] != null ? new Nonces.fromJson(json['nonces']) : null;
    _editLink = json['editLink'];
    _meta = json['meta'];
    _authorName = json['authorName'];
    _authorLink = json['authorLink'];
    _filesizeInBytes = json['filesizeInBytes'];
    _filesizeHumanReadable = json['filesizeHumanReadable'];
    _context = json['context'];
    _height = json['height'];
    _width = json['width'];
    _orientation = json['orientation'];
    _compat =
        json['compat'] != null ? new Compat.fromJson(json['compat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._sizes != null) {
      data['sizes'] = this._sizes!.toJson();
    }
    data['id'] = this._id;
    data['title'] = this._title;
    data['filename'] = this._filename;
    data['url'] = this._url;
    data['link'] = this._link;
    data['alt'] = this._alt;
    data['author'] = this._author;
    data['description'] = this._description;
    data['caption'] = this._caption;
    data['name'] = this._name;
    data['status'] = this._status;
    data['uploadedTo'] = this._uploadedTo;
    data['date'] = this._date;
    data['modified'] = this._modified;
    data['menuOrder'] = this._menuOrder;
    data['mime'] = this._mime;
    data['type'] = this._type;
    data['subtype'] = this._subtype;
    data['icon'] = this._icon;
    data['dateFormatted'] = this._dateFormatted;
    if (this._nonces != null) {
      data['nonces'] = this._nonces!.toJson();
    }
    data['editLink'] = this._editLink;
    data['meta'] = this._meta;
    data['authorName'] = this._authorName;
    data['authorLink'] = this._authorLink;
    data['filesizeInBytes'] = this._filesizeInBytes;
    data['filesizeHumanReadable'] = this._filesizeHumanReadable;
    data['context'] = this._context;
    data['height'] = this._height;
    data['width'] = this._width;
    data['orientation'] = this._orientation;
    if (this._compat != null) {
      data['compat'] = this._compat!.toJson();
    }
    return data;
  }
}

class Sizes {
  Thumbnail? _thumbnail;
  Thumbnail? _medium;
  Thumbnail? _full;

  Sizes({Thumbnail? thumbnail, Thumbnail? medium, Thumbnail? full}) {
    if (thumbnail != null) {
      this._thumbnail = thumbnail;
    }
    if (medium != null) {
      this._medium = medium;
    }
    if (full != null) {
      this._full = full;
    }
  }

  Thumbnail? get thumbnail => _thumbnail;
  set thumbnail(Thumbnail? thumbnail) => _thumbnail = thumbnail;
  Thumbnail? get medium => _medium;
  set medium(Thumbnail? medium) => _medium = medium;
  Thumbnail? get full => _full;
  set full(Thumbnail? full) => _full = full;

  Sizes.fromJson(Map<String, dynamic> json) {
    _thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    _medium =
        json['medium'] != null ? new Thumbnail.fromJson(json['medium']) : null;
    _full = json['full'] != null ? new Thumbnail.fromJson(json['full']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._thumbnail != null) {
      data['thumbnail'] = this._thumbnail!.toJson();
    }
    if (this._medium != null) {
      data['medium'] = this._medium!.toJson();
    }
    if (this._full != null) {
      data['full'] = this._full!.toJson();
    }
    return data;
  }
}

class Thumbnail {
  int? _height;
  int? _width;
  String? _url;
  String? _orientation;

  Thumbnail({int? height, int? width, String? url, String? orientation}) {
    if (height != null) {
      this._height = height;
    }
    if (width != null) {
      this._width = width;
    }
    if (url != null) {
      this._url = url;
    }
    if (orientation != null) {
      this._orientation = orientation;
    }
  }

  int? get height => _height;
  set height(int? height) => _height = height;
  int? get width => _width;
  set width(int? width) => _width = width;
  String? get url => _url;
  set url(String? url) => _url = url;
  String? get orientation => _orientation;
  set orientation(String? orientation) => _orientation = orientation;

  Thumbnail.fromJson(Map<String, dynamic> json) {
    _height = json['height'];
    _width = json['width'];
    _url = json['url'];
    _orientation = json['orientation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this._height;
    data['width'] = this._width;
    data['url'] = this._url;
    data['orientation'] = this._orientation;
    return data;
  }
}

class Nonces {
  String? _update;
  String? _delete;
  String? _edit;

  Nonces({String? update, String? delete, String? edit}) {
    if (update != null) {
      this._update = update;
    }
    if (delete != null) {
      this._delete = delete;
    }
    if (edit != null) {
      this._edit = edit;
    }
  }

  String? get update => _update;
  set update(String? update) => _update = update;
  String? get delete => _delete;
  set delete(String? delete) => _delete = delete;
  String? get edit => _edit;
  set edit(String? edit) => _edit = edit;

  Nonces.fromJson(Map<String, dynamic> json) {
    _update = json['update'];
    _delete = json['delete'];
    _edit = json['edit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['update'] = this._update;
    data['delete'] = this._delete;
    data['edit'] = this._edit;
    return data;
  }
}

class Compat {
  String? _item;
  String? _meta;

  Compat({String? item, String? meta}) {
    if (item != null) {
      this._item = item;
    }
    if (meta != null) {
      this._meta = meta;
    }
  }

  String? get item => _item;
  set item(String? item) => _item = item;
  String? get meta => _meta;
  set meta(String? meta) => _meta = meta;

  Compat.fromJson(Map<String, dynamic> json) {
    _item = json['item'];
    _meta = json['meta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item'] = this._item;
    data['meta'] = this._meta;
    return data;
  }
}

Future<testa> fetchNotes() async {
  var url = "https://yourbestcolors.cyou/wp-json/test/v1/search";

  var response = await http.get(Uri.parse(url));
  final jsonresponse = json.decode(response.body);

  if (response.statusCode == 200) {
    return testa.fromJson(jsonresponse[0]);
  } else {
    throw Exception('Failed to load post');
  }
}
