// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) {
  return _ApiResult.fromJson(json);
}

/// @nodoc
mixin _$ApiResult {
  int get first => throw _privateConstructorUsedError;
  int? get prev => throw _privateConstructorUsedError;
  int? get next => throw _privateConstructorUsedError;
  int get last => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get items => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this ApiResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResultCopyWith<ApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<$Res> {
  factory $ApiResultCopyWith(ApiResult value, $Res Function(ApiResult) then) =
      _$ApiResultCopyWithImpl<$Res, ApiResult>;
  @useResult
  $Res call(
      {int first,
      int? prev,
      int? next,
      int last,
      int pages,
      int items,
      List<dynamic> data});
}

/// @nodoc
class _$ApiResultCopyWithImpl<$Res, $Val extends ApiResult>
    implements $ApiResultCopyWith<$Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? prev = freezed,
    Object? next = freezed,
    Object? last = null,
    Object? pages = null,
    Object? items = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResultImplCopyWith<$Res>
    implements $ApiResultCopyWith<$Res> {
  factory _$$ApiResultImplCopyWith(
          _$ApiResultImpl value, $Res Function(_$ApiResultImpl) then) =
      __$$ApiResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int first,
      int? prev,
      int? next,
      int last,
      int pages,
      int items,
      List<dynamic> data});
}

/// @nodoc
class __$$ApiResultImplCopyWithImpl<$Res>
    extends _$ApiResultCopyWithImpl<$Res, _$ApiResultImpl>
    implements _$$ApiResultImplCopyWith<$Res> {
  __$$ApiResultImplCopyWithImpl(
      _$ApiResultImpl _value, $Res Function(_$ApiResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? prev = freezed,
    Object? next = freezed,
    Object? last = null,
    Object? pages = null,
    Object? items = null,
    Object? data = null,
  }) {
    return _then(_$ApiResultImpl(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResultImpl with DiagnosticableTreeMixin implements _ApiResult {
  const _$ApiResultImpl(
      {required this.first,
      required this.prev,
      required this.next,
      required this.last,
      required this.pages,
      required this.items,
      required final List<dynamic> data})
      : _data = data;

  factory _$ApiResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResultImplFromJson(json);

  @override
  final int first;
  @override
  final int? prev;
  @override
  final int? next;
  @override
  final int last;
  @override
  final int pages;
  @override
  final int items;
  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResult(first: $first, prev: $prev, next: $next, last: $last, pages: $pages, items: $items, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResult'))
      ..add(DiagnosticsProperty('first', first))
      ..add(DiagnosticsProperty('prev', prev))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('last', last))
      ..add(DiagnosticsProperty('pages', pages))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.items, items) || other.items == items) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first, prev, next, last, pages,
      items, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultImplCopyWith<_$ApiResultImpl> get copyWith =>
      __$$ApiResultImplCopyWithImpl<_$ApiResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResultImplToJson(
      this,
    );
  }
}

abstract class _ApiResult implements ApiResult {
  const factory _ApiResult(
      {required final int first,
      required final int? prev,
      required final int? next,
      required final int last,
      required final int pages,
      required final int items,
      required final List<dynamic> data}) = _$ApiResultImpl;

  factory _ApiResult.fromJson(Map<String, dynamic> json) =
      _$ApiResultImpl.fromJson;

  @override
  int get first;
  @override
  int? get prev;
  @override
  int? get next;
  @override
  int get last;
  @override
  int get pages;
  @override
  int get items;
  @override
  List<dynamic> get data;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResultImplCopyWith<_$ApiResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
