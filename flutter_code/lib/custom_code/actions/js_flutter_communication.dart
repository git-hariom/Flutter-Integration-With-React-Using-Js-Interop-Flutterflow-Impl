// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:collection';
import 'dart:js_interop';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

Future jsFlutterCommunication() async {
  final interopStateManager = AppStateManager();

  final export = createDartExport(interopStateManager);

  /// Locates the root of the flutter app (for now, the first element that has
  /// a flt-renderer tag), and dispatches a JS event named [name] with [data].
  final DomElement? root = document.querySelector('[flt-renderer]');
  assert(root != null, 'Flutter root element cannot be found!');

  dispatchCustomEvent(root!, 'flutter-initialized', export);
}

/// This is a little bit of JS-interop code so this Flutter app can dispatch
/// a custom JS event.
@JS('CustomEvent')
@staticInterop
class DomCustomEvent {
  external factory DomCustomEvent.withType(JSString type);
  external factory DomCustomEvent.withOptions(JSString type, JSAny options);
  factory DomCustomEvent._(String type, [Object? options]) {
    if (options != null) {
      return DomCustomEvent.withOptions(type.toJS, jsify(options) as JSAny);
    }
    return DomCustomEvent.withType(type.toJS);
  }
}

dispatchCustomEvent(DomElement target, String type, Object data) {
  final DomCustomEvent event = DomCustomEvent._(type, <String, Object>{
    'bubbles': true,
    'composed': true,
    'detail': data,
  });

  target.dispatchEvent(event);
}

@JS()
@staticInterop
class DomEventTarget {}

extension DomEventTargetExtension on DomEventTarget {
  @JS('dispatchEvent')
  external JSBoolean _dispatchEvent(DomCustomEvent event);
  bool dispatchEvent(DomCustomEvent event) => _dispatchEvent(event).toDart;
}

@JS()
@staticInterop
class DomElement extends DomEventTarget {}

extension DomElementExtension on DomElement {
  @JS('querySelector')
  external DomElement? _querySelector(JSString selectors);
  DomElement? querySelector(String selectors) => _querySelector(selectors.toJS);
}

@JS()
@staticInterop
class DomDocument extends DomElement {}

@JS()
@staticInterop
external DomDocument get document;

@JS('Object.keys')
external List<String> _objectKeys(jsObject);

//flutter to JS obj
Object mapToJsObject(Map map) {
  var object = newObject();
  map.forEach((k, v) {
    if (v is Map) {
      setProperty(object, k, mapToJsObject(v));
    } else {
      setProperty(object, k, v);
    }
  });
  return object;
}

List<String>? objectKeys(dynamic jsObject) {
  if (jsObject == null ||
      jsObject is String ||
      jsObject is num ||
      jsObject is bool) return null;
  return _objectKeys(jsObject);
}

//JS obj to flutter map
Map jsObjectToMap(dynamic jsObject) {
  Map result = {};
  List keys = _objectKeys(jsObject);
  for (dynamic key in keys) {
    dynamic value = getProperty(jsObject, key);
    List<String>? nestedKeys = objectKeys(value);
    if ((nestedKeys ?? []).isNotEmpty) {
      //nested property
      result[key] = jsObjectToMap(value);
    } else {
      result[key] = value;
    }
  }
  return result;
}

/// This is the bit of state that JS is able to see.
///
/// It contains getters/setters/operations and a mechanism to
/// subscribe to change notifications from an incoming [notifier].
@JSExport()
class AppStateManager {
// Allows clients to subscribe to changes to the wrapped value.

  dynamic reactCallback;

  // Counter functions
  String getPID() {
    return FFAppState().PID;
  }

  void setClicks(String value) {
    FFAppState().update(
      () => FFAppState().PID = value,
    );
  }

  getFFAppState() {
    Map<dynamic, dynamic> map = {};
    map["bearerToken"] = FFAppState().bearerToken;
    map['entityId'] = FFAppState().entityId;
    map['source'] = FFAppState().source;
    map['createUser'] = FFAppState().createUser;
    map['PID'] = FFAppState().PID;
    return mapToJsObject(map);
  }

  setInitialFFAppState(dynamic parentAppConfig) {
    Map<dynamic, dynamic> map = jsObjectToMap(parentAppConfig);
    FFAppState().bearerToken = map["bearerToken"];
    FFAppState().entityId = map['entityId'];
    FFAppState().source = map['source'];
    FFAppState().createUser = map['createUser'];
    FFAppState().PID = map['PID'];
  }

  setFFAppState(dynamic parentAppData) {
    Map<dynamic, dynamic> map = jsObjectToMap(parentAppData);
    FFAppState().update(() {
      FFAppState().bearerToken = map["bearerToken"];
      FFAppState().entityId = map['entityId'];
      FFAppState().source = map['source'];
      FFAppState().createUser = map['createUser'];
      FFAppState().PID = map['PID'];
    });
  }

  void updateFFAppState() {
    FFAppState().addListener(() {
      reactCallback(getFFAppState());
    });
  }

  void updatePID() {
    FFAppState().addListener(() {
      reactCallback(getPID());
    });
  }

  void updateFromFlutterToReactCallback(Function(int) parentAppCallback) {
    reactCallback = parentAppCallback;
  }
}
