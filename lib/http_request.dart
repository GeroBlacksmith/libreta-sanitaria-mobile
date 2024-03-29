/* import 'package:http/http.dart';
import 'dart:convert';
import 'dart:typed_data';

import 'utils/enumeration.dart';


class HttpMethod extends Enum<String> {
  const HttpMethod(String val): super(val);
  static const HttpMethod GET = const HttpMethod('GET');
  static const HttpMethod POST = const HttpMethod('POST');
  static const HttpMethod PUT = const HttpMethod('PUT');
  static const HttpMethod DELETE = const HttpMethod('DELETE');
}

enum ContentEncoding { url, json }


abstract class HttpRequestProtocol {
  String get baseUrl;
  String get path;
  HttpMethod get method;
  Map<String, String> get headers;
  Map<String, dynamic> get parameters;
  ContentEncoding get contentEncoding;
  String get queryParameters{
    if( method == HttpMethod.GET && parameters != null) {
      final jsonString = Uri(queryParameters: parameters);
      return '?${jsonString.query}';
    }
    return '';
  }

}

class HttpRequest extends Request {
  final HttpRequestProtocol service;
  HttpRequest(this.service)
  :super(
    service.method.value,
    Uri.parse(
      '${service.baseUrl}${service.path}${service.queryParameters}'));
  
  @override
  Map<String, String> get headers => this.service.headers;

  @override
  String get body => json.encode(this.service.parameters);

  @override
  Uint8List get bodyBytes {
    if( service.parameters == null){
      return new Uint8List(0);
    }
    if(service.contentEncoding == ContentEncoding.url){
      final queryParameter = Uri(queryParameters: service.parameters);
      List<int> bodyBytes = utf8.encode(queryParameter.query);
      return bodyBytes;
    } else {
      final encodedBody = Utf8Codec().encode(body);
      return Uint8List(encodedBody);
    }


  }

  @override
  MediaType get _contentType{
    var contentType = headers['content-type'];
    if(contentType==null){
      return null;
    }
    return new MediaType.parse(contentType);
  }
} */