// This file has been generated by the dart_json_mapper v2.2.7
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'package:dart_json_mapper/dart_json_mapper.dart'
    show
        JsonMapper,
        JsonMapperAdapter,
        SerializationOptions,
        DeserializationOptions,
        typeOf;

import 'exception_wrap.dart' as x0 show ExceptionBase;

// No output from reflectable, there is no `main`.
final exceptionWrapGeneratedAdapter = JsonMapperAdapter(
    title: 'utils',
    url: 'package:utils/src/exception_wrap.dart',
    reflectableData: null,
    memberSymbolMap: null,
    valueDecorators: {
      typeOf<List<x0.ExceptionBase>>(): (value) =>
          value.cast<x0.ExceptionBase>(),
      typeOf<Set<x0.ExceptionBase>>(): (value) => value.cast<x0.ExceptionBase>()
    },
    enumValues: {});

Future<JsonMapper> initializeJsonMapperAsync(
        {Iterable<JsonMapperAdapter> adapters = const [],
        SerializationOptions? serializationOptions,
        DeserializationOptions? deserializationOptions}) =>
    Future(() => initializeJsonMapper(
        adapters: adapters,
        serializationOptions: serializationOptions,
        deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper(
    {Iterable<JsonMapperAdapter> adapters = const [],
    SerializationOptions? serializationOptions,
    DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions =
      serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions =
      deserializationOptions ?? JsonMapper.globalDeserializationOptions;
  JsonMapper.enumerateAdapters([...adapters, exceptionWrapGeneratedAdapter],
      (JsonMapperAdapter adapter) {
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}
