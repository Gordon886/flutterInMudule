// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeFeedDto {

 HomeHeaderDto get header; List<HomeCategoryDto> get categories;@JsonKey(name: 'selected_category_id') String get selectedCategoryId; HomeSearchDto get search; HomeBannerDto get banner; List<HomeSectionDto> get sections; List<HomeTabDto> get tabs;
/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFeedDtoCopyWith<HomeFeedDto> get copyWith => _$HomeFeedDtoCopyWithImpl<HomeFeedDto>(this as HomeFeedDto, _$identity);

  /// Serializes this HomeFeedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFeedDto&&(identical(other.header, header) || other.header == header)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.search, search) || other.search == search)&&(identical(other.banner, banner) || other.banner == banner)&&const DeepCollectionEquality().equals(other.sections, sections)&&const DeepCollectionEquality().equals(other.tabs, tabs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,const DeepCollectionEquality().hash(categories),selectedCategoryId,search,banner,const DeepCollectionEquality().hash(sections),const DeepCollectionEquality().hash(tabs));

@override
String toString() {
  return 'HomeFeedDto(header: $header, categories: $categories, selectedCategoryId: $selectedCategoryId, search: $search, banner: $banner, sections: $sections, tabs: $tabs)';
}


}

/// @nodoc
abstract mixin class $HomeFeedDtoCopyWith<$Res>  {
  factory $HomeFeedDtoCopyWith(HomeFeedDto value, $Res Function(HomeFeedDto) _then) = _$HomeFeedDtoCopyWithImpl;
@useResult
$Res call({
 HomeHeaderDto header, List<HomeCategoryDto> categories,@JsonKey(name: 'selected_category_id') String selectedCategoryId, HomeSearchDto search, HomeBannerDto banner, List<HomeSectionDto> sections, List<HomeTabDto> tabs
});


$HomeHeaderDtoCopyWith<$Res> get header;$HomeSearchDtoCopyWith<$Res> get search;$HomeBannerDtoCopyWith<$Res> get banner;

}
/// @nodoc
class _$HomeFeedDtoCopyWithImpl<$Res>
    implements $HomeFeedDtoCopyWith<$Res> {
  _$HomeFeedDtoCopyWithImpl(this._self, this._then);

  final HomeFeedDto _self;
  final $Res Function(HomeFeedDto) _then;

/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? categories = null,Object? selectedCategoryId = null,Object? search = null,Object? banner = null,Object? sections = null,Object? tabs = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as HomeHeaderDto,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<HomeCategoryDto>,selectedCategoryId: null == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as String,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as HomeSearchDto,banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as HomeBannerDto,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<HomeSectionDto>,tabs: null == tabs ? _self.tabs : tabs // ignore: cast_nullable_to_non_nullable
as List<HomeTabDto>,
  ));
}
/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeHeaderDtoCopyWith<$Res> get header {
  
  return $HomeHeaderDtoCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeSearchDtoCopyWith<$Res> get search {
  
  return $HomeSearchDtoCopyWith<$Res>(_self.search, (value) {
    return _then(_self.copyWith(search: value));
  });
}/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeBannerDtoCopyWith<$Res> get banner {
  
  return $HomeBannerDtoCopyWith<$Res>(_self.banner, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeFeedDto].
extension HomeFeedDtoPatterns on HomeFeedDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeFeedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeFeedDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeFeedDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeFeedDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeFeedDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeFeedDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeHeaderDto header,  List<HomeCategoryDto> categories, @JsonKey(name: 'selected_category_id')  String selectedCategoryId,  HomeSearchDto search,  HomeBannerDto banner,  List<HomeSectionDto> sections,  List<HomeTabDto> tabs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeFeedDto() when $default != null:
return $default(_that.header,_that.categories,_that.selectedCategoryId,_that.search,_that.banner,_that.sections,_that.tabs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeHeaderDto header,  List<HomeCategoryDto> categories, @JsonKey(name: 'selected_category_id')  String selectedCategoryId,  HomeSearchDto search,  HomeBannerDto banner,  List<HomeSectionDto> sections,  List<HomeTabDto> tabs)  $default,) {final _that = this;
switch (_that) {
case _HomeFeedDto():
return $default(_that.header,_that.categories,_that.selectedCategoryId,_that.search,_that.banner,_that.sections,_that.tabs);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeHeaderDto header,  List<HomeCategoryDto> categories, @JsonKey(name: 'selected_category_id')  String selectedCategoryId,  HomeSearchDto search,  HomeBannerDto banner,  List<HomeSectionDto> sections,  List<HomeTabDto> tabs)?  $default,) {final _that = this;
switch (_that) {
case _HomeFeedDto() when $default != null:
return $default(_that.header,_that.categories,_that.selectedCategoryId,_that.search,_that.banner,_that.sections,_that.tabs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeFeedDto implements HomeFeedDto {
  const _HomeFeedDto({required this.header, required final  List<HomeCategoryDto> categories, @JsonKey(name: 'selected_category_id') required this.selectedCategoryId, required this.search, required this.banner, required final  List<HomeSectionDto> sections, required final  List<HomeTabDto> tabs}): _categories = categories,_sections = sections,_tabs = tabs;
  factory _HomeFeedDto.fromJson(Map<String, dynamic> json) => _$HomeFeedDtoFromJson(json);

@override final  HomeHeaderDto header;
 final  List<HomeCategoryDto> _categories;
@override List<HomeCategoryDto> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey(name: 'selected_category_id') final  String selectedCategoryId;
@override final  HomeSearchDto search;
@override final  HomeBannerDto banner;
 final  List<HomeSectionDto> _sections;
@override List<HomeSectionDto> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

 final  List<HomeTabDto> _tabs;
@override List<HomeTabDto> get tabs {
  if (_tabs is EqualUnmodifiableListView) return _tabs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tabs);
}


/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeFeedDtoCopyWith<_HomeFeedDto> get copyWith => __$HomeFeedDtoCopyWithImpl<_HomeFeedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeFeedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeFeedDto&&(identical(other.header, header) || other.header == header)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategoryId, selectedCategoryId) || other.selectedCategoryId == selectedCategoryId)&&(identical(other.search, search) || other.search == search)&&(identical(other.banner, banner) || other.banner == banner)&&const DeepCollectionEquality().equals(other._sections, _sections)&&const DeepCollectionEquality().equals(other._tabs, _tabs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,const DeepCollectionEquality().hash(_categories),selectedCategoryId,search,banner,const DeepCollectionEquality().hash(_sections),const DeepCollectionEquality().hash(_tabs));

@override
String toString() {
  return 'HomeFeedDto(header: $header, categories: $categories, selectedCategoryId: $selectedCategoryId, search: $search, banner: $banner, sections: $sections, tabs: $tabs)';
}


}

/// @nodoc
abstract mixin class _$HomeFeedDtoCopyWith<$Res> implements $HomeFeedDtoCopyWith<$Res> {
  factory _$HomeFeedDtoCopyWith(_HomeFeedDto value, $Res Function(_HomeFeedDto) _then) = __$HomeFeedDtoCopyWithImpl;
@override @useResult
$Res call({
 HomeHeaderDto header, List<HomeCategoryDto> categories,@JsonKey(name: 'selected_category_id') String selectedCategoryId, HomeSearchDto search, HomeBannerDto banner, List<HomeSectionDto> sections, List<HomeTabDto> tabs
});


@override $HomeHeaderDtoCopyWith<$Res> get header;@override $HomeSearchDtoCopyWith<$Res> get search;@override $HomeBannerDtoCopyWith<$Res> get banner;

}
/// @nodoc
class __$HomeFeedDtoCopyWithImpl<$Res>
    implements _$HomeFeedDtoCopyWith<$Res> {
  __$HomeFeedDtoCopyWithImpl(this._self, this._then);

  final _HomeFeedDto _self;
  final $Res Function(_HomeFeedDto) _then;

/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? categories = null,Object? selectedCategoryId = null,Object? search = null,Object? banner = null,Object? sections = null,Object? tabs = null,}) {
  return _then(_HomeFeedDto(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as HomeHeaderDto,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<HomeCategoryDto>,selectedCategoryId: null == selectedCategoryId ? _self.selectedCategoryId : selectedCategoryId // ignore: cast_nullable_to_non_nullable
as String,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as HomeSearchDto,banner: null == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as HomeBannerDto,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<HomeSectionDto>,tabs: null == tabs ? _self._tabs : tabs // ignore: cast_nullable_to_non_nullable
as List<HomeTabDto>,
  ));
}

/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeHeaderDtoCopyWith<$Res> get header {
  
  return $HomeHeaderDtoCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeSearchDtoCopyWith<$Res> get search {
  
  return $HomeSearchDtoCopyWith<$Res>(_self.search, (value) {
    return _then(_self.copyWith(search: value));
  });
}/// Create a copy of HomeFeedDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeBannerDtoCopyWith<$Res> get banner {
  
  return $HomeBannerDtoCopyWith<$Res>(_self.banner, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// @nodoc
mixin _$HomeHeaderDto {

@JsonKey(name: 'menu_icon') String get menuIcon; String get logo; List<HomeActionDto> get actions;
/// Create a copy of HomeHeaderDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeHeaderDtoCopyWith<HomeHeaderDto> get copyWith => _$HomeHeaderDtoCopyWithImpl<HomeHeaderDto>(this as HomeHeaderDto, _$identity);

  /// Serializes this HomeHeaderDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeHeaderDto&&(identical(other.menuIcon, menuIcon) || other.menuIcon == menuIcon)&&(identical(other.logo, logo) || other.logo == logo)&&const DeepCollectionEquality().equals(other.actions, actions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menuIcon,logo,const DeepCollectionEquality().hash(actions));

@override
String toString() {
  return 'HomeHeaderDto(menuIcon: $menuIcon, logo: $logo, actions: $actions)';
}


}

/// @nodoc
abstract mixin class $HomeHeaderDtoCopyWith<$Res>  {
  factory $HomeHeaderDtoCopyWith(HomeHeaderDto value, $Res Function(HomeHeaderDto) _then) = _$HomeHeaderDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'menu_icon') String menuIcon, String logo, List<HomeActionDto> actions
});




}
/// @nodoc
class _$HomeHeaderDtoCopyWithImpl<$Res>
    implements $HomeHeaderDtoCopyWith<$Res> {
  _$HomeHeaderDtoCopyWithImpl(this._self, this._then);

  final HomeHeaderDto _self;
  final $Res Function(HomeHeaderDto) _then;

/// Create a copy of HomeHeaderDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menuIcon = null,Object? logo = null,Object? actions = null,}) {
  return _then(_self.copyWith(
menuIcon: null == menuIcon ? _self.menuIcon : menuIcon // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<HomeActionDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeHeaderDto].
extension HomeHeaderDtoPatterns on HomeHeaderDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeHeaderDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeHeaderDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeHeaderDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeHeaderDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeHeaderDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeHeaderDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'menu_icon')  String menuIcon,  String logo,  List<HomeActionDto> actions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeHeaderDto() when $default != null:
return $default(_that.menuIcon,_that.logo,_that.actions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'menu_icon')  String menuIcon,  String logo,  List<HomeActionDto> actions)  $default,) {final _that = this;
switch (_that) {
case _HomeHeaderDto():
return $default(_that.menuIcon,_that.logo,_that.actions);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'menu_icon')  String menuIcon,  String logo,  List<HomeActionDto> actions)?  $default,) {final _that = this;
switch (_that) {
case _HomeHeaderDto() when $default != null:
return $default(_that.menuIcon,_that.logo,_that.actions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeHeaderDto implements HomeHeaderDto {
  const _HomeHeaderDto({@JsonKey(name: 'menu_icon') required this.menuIcon, required this.logo, required final  List<HomeActionDto> actions}): _actions = actions;
  factory _HomeHeaderDto.fromJson(Map<String, dynamic> json) => _$HomeHeaderDtoFromJson(json);

@override@JsonKey(name: 'menu_icon') final  String menuIcon;
@override final  String logo;
 final  List<HomeActionDto> _actions;
@override List<HomeActionDto> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}


/// Create a copy of HomeHeaderDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeHeaderDtoCopyWith<_HomeHeaderDto> get copyWith => __$HomeHeaderDtoCopyWithImpl<_HomeHeaderDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeHeaderDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeHeaderDto&&(identical(other.menuIcon, menuIcon) || other.menuIcon == menuIcon)&&(identical(other.logo, logo) || other.logo == logo)&&const DeepCollectionEquality().equals(other._actions, _actions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menuIcon,logo,const DeepCollectionEquality().hash(_actions));

@override
String toString() {
  return 'HomeHeaderDto(menuIcon: $menuIcon, logo: $logo, actions: $actions)';
}


}

/// @nodoc
abstract mixin class _$HomeHeaderDtoCopyWith<$Res> implements $HomeHeaderDtoCopyWith<$Res> {
  factory _$HomeHeaderDtoCopyWith(_HomeHeaderDto value, $Res Function(_HomeHeaderDto) _then) = __$HomeHeaderDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'menu_icon') String menuIcon, String logo, List<HomeActionDto> actions
});




}
/// @nodoc
class __$HomeHeaderDtoCopyWithImpl<$Res>
    implements _$HomeHeaderDtoCopyWith<$Res> {
  __$HomeHeaderDtoCopyWithImpl(this._self, this._then);

  final _HomeHeaderDto _self;
  final $Res Function(_HomeHeaderDto) _then;

/// Create a copy of HomeHeaderDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menuIcon = null,Object? logo = null,Object? actions = null,}) {
  return _then(_HomeHeaderDto(
menuIcon: null == menuIcon ? _self.menuIcon : menuIcon // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<HomeActionDto>,
  ));
}


}


/// @nodoc
mixin _$HomeActionDto {

 String get id; String get label; HomeActionStyleDto get style;@JsonKey(name: 'route_id') String get routeId;
/// Create a copy of HomeActionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeActionDtoCopyWith<HomeActionDto> get copyWith => _$HomeActionDtoCopyWithImpl<HomeActionDto>(this as HomeActionDto, _$identity);

  /// Serializes this HomeActionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeActionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.style, style) || other.style == style)&&(identical(other.routeId, routeId) || other.routeId == routeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,style,routeId);

@override
String toString() {
  return 'HomeActionDto(id: $id, label: $label, style: $style, routeId: $routeId)';
}


}

/// @nodoc
abstract mixin class $HomeActionDtoCopyWith<$Res>  {
  factory $HomeActionDtoCopyWith(HomeActionDto value, $Res Function(HomeActionDto) _then) = _$HomeActionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String label, HomeActionStyleDto style,@JsonKey(name: 'route_id') String routeId
});




}
/// @nodoc
class _$HomeActionDtoCopyWithImpl<$Res>
    implements $HomeActionDtoCopyWith<$Res> {
  _$HomeActionDtoCopyWithImpl(this._self, this._then);

  final HomeActionDto _self;
  final $Res Function(HomeActionDto) _then;

/// Create a copy of HomeActionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? style = null,Object? routeId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as HomeActionStyleDto,routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeActionDto].
extension HomeActionDtoPatterns on HomeActionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeActionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeActionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeActionDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeActionDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeActionDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeActionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  HomeActionStyleDto style, @JsonKey(name: 'route_id')  String routeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeActionDto() when $default != null:
return $default(_that.id,_that.label,_that.style,_that.routeId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  HomeActionStyleDto style, @JsonKey(name: 'route_id')  String routeId)  $default,) {final _that = this;
switch (_that) {
case _HomeActionDto():
return $default(_that.id,_that.label,_that.style,_that.routeId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  HomeActionStyleDto style, @JsonKey(name: 'route_id')  String routeId)?  $default,) {final _that = this;
switch (_that) {
case _HomeActionDto() when $default != null:
return $default(_that.id,_that.label,_that.style,_that.routeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeActionDto implements HomeActionDto {
  const _HomeActionDto({required this.id, required this.label, required this.style, @JsonKey(name: 'route_id') required this.routeId});
  factory _HomeActionDto.fromJson(Map<String, dynamic> json) => _$HomeActionDtoFromJson(json);

@override final  String id;
@override final  String label;
@override final  HomeActionStyleDto style;
@override@JsonKey(name: 'route_id') final  String routeId;

/// Create a copy of HomeActionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeActionDtoCopyWith<_HomeActionDto> get copyWith => __$HomeActionDtoCopyWithImpl<_HomeActionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeActionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeActionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.style, style) || other.style == style)&&(identical(other.routeId, routeId) || other.routeId == routeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,style,routeId);

@override
String toString() {
  return 'HomeActionDto(id: $id, label: $label, style: $style, routeId: $routeId)';
}


}

/// @nodoc
abstract mixin class _$HomeActionDtoCopyWith<$Res> implements $HomeActionDtoCopyWith<$Res> {
  factory _$HomeActionDtoCopyWith(_HomeActionDto value, $Res Function(_HomeActionDto) _then) = __$HomeActionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, HomeActionStyleDto style,@JsonKey(name: 'route_id') String routeId
});




}
/// @nodoc
class __$HomeActionDtoCopyWithImpl<$Res>
    implements _$HomeActionDtoCopyWith<$Res> {
  __$HomeActionDtoCopyWithImpl(this._self, this._then);

  final _HomeActionDto _self;
  final $Res Function(_HomeActionDto) _then;

/// Create a copy of HomeActionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? style = null,Object? routeId = null,}) {
  return _then(_HomeActionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as HomeActionStyleDto,routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HomeCategoryDto {

 String get id; String get label; String get icon;
/// Create a copy of HomeCategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCategoryDtoCopyWith<HomeCategoryDto> get copyWith => _$HomeCategoryDtoCopyWithImpl<HomeCategoryDto>(this as HomeCategoryDto, _$identity);

  /// Serializes this HomeCategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeCategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,icon);

@override
String toString() {
  return 'HomeCategoryDto(id: $id, label: $label, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $HomeCategoryDtoCopyWith<$Res>  {
  factory $HomeCategoryDtoCopyWith(HomeCategoryDto value, $Res Function(HomeCategoryDto) _then) = _$HomeCategoryDtoCopyWithImpl;
@useResult
$Res call({
 String id, String label, String icon
});




}
/// @nodoc
class _$HomeCategoryDtoCopyWithImpl<$Res>
    implements $HomeCategoryDtoCopyWith<$Res> {
  _$HomeCategoryDtoCopyWithImpl(this._self, this._then);

  final HomeCategoryDto _self;
  final $Res Function(HomeCategoryDto) _then;

/// Create a copy of HomeCategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeCategoryDto].
extension HomeCategoryDtoPatterns on HomeCategoryDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeCategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeCategoryDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeCategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeCategoryDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeCategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeCategoryDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeCategoryDto() when $default != null:
return $default(_that.id,_that.label,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String icon)  $default,) {final _that = this;
switch (_that) {
case _HomeCategoryDto():
return $default(_that.id,_that.label,_that.icon);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _HomeCategoryDto() when $default != null:
return $default(_that.id,_that.label,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeCategoryDto implements HomeCategoryDto {
  const _HomeCategoryDto({required this.id, required this.label, required this.icon});
  factory _HomeCategoryDto.fromJson(Map<String, dynamic> json) => _$HomeCategoryDtoFromJson(json);

@override final  String id;
@override final  String label;
@override final  String icon;

/// Create a copy of HomeCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeCategoryDtoCopyWith<_HomeCategoryDto> get copyWith => __$HomeCategoryDtoCopyWithImpl<_HomeCategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeCategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeCategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,icon);

@override
String toString() {
  return 'HomeCategoryDto(id: $id, label: $label, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$HomeCategoryDtoCopyWith<$Res> implements $HomeCategoryDtoCopyWith<$Res> {
  factory _$HomeCategoryDtoCopyWith(_HomeCategoryDto value, $Res Function(_HomeCategoryDto) _then) = __$HomeCategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String icon
});




}
/// @nodoc
class __$HomeCategoryDtoCopyWithImpl<$Res>
    implements _$HomeCategoryDtoCopyWith<$Res> {
  __$HomeCategoryDtoCopyWithImpl(this._self, this._then);

  final _HomeCategoryDto _self;
  final $Res Function(_HomeCategoryDto) _then;

/// Create a copy of HomeCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? icon = null,}) {
  return _then(_HomeCategoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HomeSearchDto {

 String get icon;
/// Create a copy of HomeSearchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSearchDtoCopyWith<HomeSearchDto> get copyWith => _$HomeSearchDtoCopyWithImpl<HomeSearchDto>(this as HomeSearchDto, _$identity);

  /// Serializes this HomeSearchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSearchDto&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon);

@override
String toString() {
  return 'HomeSearchDto(icon: $icon)';
}


}

/// @nodoc
abstract mixin class $HomeSearchDtoCopyWith<$Res>  {
  factory $HomeSearchDtoCopyWith(HomeSearchDto value, $Res Function(HomeSearchDto) _then) = _$HomeSearchDtoCopyWithImpl;
@useResult
$Res call({
 String icon
});




}
/// @nodoc
class _$HomeSearchDtoCopyWithImpl<$Res>
    implements $HomeSearchDtoCopyWith<$Res> {
  _$HomeSearchDtoCopyWithImpl(this._self, this._then);

  final HomeSearchDto _self;
  final $Res Function(HomeSearchDto) _then;

/// Create a copy of HomeSearchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeSearchDto].
extension HomeSearchDtoPatterns on HomeSearchDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeSearchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeSearchDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeSearchDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeSearchDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeSearchDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeSearchDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeSearchDto() when $default != null:
return $default(_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String icon)  $default,) {final _that = this;
switch (_that) {
case _HomeSearchDto():
return $default(_that.icon);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String icon)?  $default,) {final _that = this;
switch (_that) {
case _HomeSearchDto() when $default != null:
return $default(_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeSearchDto implements HomeSearchDto {
  const _HomeSearchDto({required this.icon});
  factory _HomeSearchDto.fromJson(Map<String, dynamic> json) => _$HomeSearchDtoFromJson(json);

@override final  String icon;

/// Create a copy of HomeSearchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeSearchDtoCopyWith<_HomeSearchDto> get copyWith => __$HomeSearchDtoCopyWithImpl<_HomeSearchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeSearchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeSearchDto&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon);

@override
String toString() {
  return 'HomeSearchDto(icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$HomeSearchDtoCopyWith<$Res> implements $HomeSearchDtoCopyWith<$Res> {
  factory _$HomeSearchDtoCopyWith(_HomeSearchDto value, $Res Function(_HomeSearchDto) _then) = __$HomeSearchDtoCopyWithImpl;
@override @useResult
$Res call({
 String icon
});




}
/// @nodoc
class __$HomeSearchDtoCopyWithImpl<$Res>
    implements _$HomeSearchDtoCopyWith<$Res> {
  __$HomeSearchDtoCopyWithImpl(this._self, this._then);

  final _HomeSearchDto _self;
  final $Res Function(_HomeSearchDto) _then;

/// Create a copy of HomeSearchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,}) {
  return _then(_HomeSearchDto(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HomeBannerDto {

 String get eyebrow; String get amount; String get cadence; String get subtitle; String get mascot;@JsonKey(name: 'ranks_left') String get ranksLeft;@JsonKey(name: 'ranks_right') String get ranksRight; String get coins;
/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBannerDtoCopyWith<HomeBannerDto> get copyWith => _$HomeBannerDtoCopyWithImpl<HomeBannerDto>(this as HomeBannerDto, _$identity);

  /// Serializes this HomeBannerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBannerDto&&(identical(other.eyebrow, eyebrow) || other.eyebrow == eyebrow)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.cadence, cadence) || other.cadence == cadence)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.mascot, mascot) || other.mascot == mascot)&&(identical(other.ranksLeft, ranksLeft) || other.ranksLeft == ranksLeft)&&(identical(other.ranksRight, ranksRight) || other.ranksRight == ranksRight)&&(identical(other.coins, coins) || other.coins == coins));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eyebrow,amount,cadence,subtitle,mascot,ranksLeft,ranksRight,coins);

@override
String toString() {
  return 'HomeBannerDto(eyebrow: $eyebrow, amount: $amount, cadence: $cadence, subtitle: $subtitle, mascot: $mascot, ranksLeft: $ranksLeft, ranksRight: $ranksRight, coins: $coins)';
}


}

/// @nodoc
abstract mixin class $HomeBannerDtoCopyWith<$Res>  {
  factory $HomeBannerDtoCopyWith(HomeBannerDto value, $Res Function(HomeBannerDto) _then) = _$HomeBannerDtoCopyWithImpl;
@useResult
$Res call({
 String eyebrow, String amount, String cadence, String subtitle, String mascot,@JsonKey(name: 'ranks_left') String ranksLeft,@JsonKey(name: 'ranks_right') String ranksRight, String coins
});




}
/// @nodoc
class _$HomeBannerDtoCopyWithImpl<$Res>
    implements $HomeBannerDtoCopyWith<$Res> {
  _$HomeBannerDtoCopyWithImpl(this._self, this._then);

  final HomeBannerDto _self;
  final $Res Function(HomeBannerDto) _then;

/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eyebrow = null,Object? amount = null,Object? cadence = null,Object? subtitle = null,Object? mascot = null,Object? ranksLeft = null,Object? ranksRight = null,Object? coins = null,}) {
  return _then(_self.copyWith(
eyebrow: null == eyebrow ? _self.eyebrow : eyebrow // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,cadence: null == cadence ? _self.cadence : cadence // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,mascot: null == mascot ? _self.mascot : mascot // ignore: cast_nullable_to_non_nullable
as String,ranksLeft: null == ranksLeft ? _self.ranksLeft : ranksLeft // ignore: cast_nullable_to_non_nullable
as String,ranksRight: null == ranksRight ? _self.ranksRight : ranksRight // ignore: cast_nullable_to_non_nullable
as String,coins: null == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeBannerDto].
extension HomeBannerDtoPatterns on HomeBannerDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeBannerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeBannerDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeBannerDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeBannerDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String eyebrow,  String amount,  String cadence,  String subtitle,  String mascot, @JsonKey(name: 'ranks_left')  String ranksLeft, @JsonKey(name: 'ranks_right')  String ranksRight,  String coins)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
return $default(_that.eyebrow,_that.amount,_that.cadence,_that.subtitle,_that.mascot,_that.ranksLeft,_that.ranksRight,_that.coins);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String eyebrow,  String amount,  String cadence,  String subtitle,  String mascot, @JsonKey(name: 'ranks_left')  String ranksLeft, @JsonKey(name: 'ranks_right')  String ranksRight,  String coins)  $default,) {final _that = this;
switch (_that) {
case _HomeBannerDto():
return $default(_that.eyebrow,_that.amount,_that.cadence,_that.subtitle,_that.mascot,_that.ranksLeft,_that.ranksRight,_that.coins);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String eyebrow,  String amount,  String cadence,  String subtitle,  String mascot, @JsonKey(name: 'ranks_left')  String ranksLeft, @JsonKey(name: 'ranks_right')  String ranksRight,  String coins)?  $default,) {final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
return $default(_that.eyebrow,_that.amount,_that.cadence,_that.subtitle,_that.mascot,_that.ranksLeft,_that.ranksRight,_that.coins);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeBannerDto implements HomeBannerDto {
  const _HomeBannerDto({required this.eyebrow, required this.amount, required this.cadence, required this.subtitle, required this.mascot, @JsonKey(name: 'ranks_left') required this.ranksLeft, @JsonKey(name: 'ranks_right') required this.ranksRight, required this.coins});
  factory _HomeBannerDto.fromJson(Map<String, dynamic> json) => _$HomeBannerDtoFromJson(json);

@override final  String eyebrow;
@override final  String amount;
@override final  String cadence;
@override final  String subtitle;
@override final  String mascot;
@override@JsonKey(name: 'ranks_left') final  String ranksLeft;
@override@JsonKey(name: 'ranks_right') final  String ranksRight;
@override final  String coins;

/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeBannerDtoCopyWith<_HomeBannerDto> get copyWith => __$HomeBannerDtoCopyWithImpl<_HomeBannerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeBannerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeBannerDto&&(identical(other.eyebrow, eyebrow) || other.eyebrow == eyebrow)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.cadence, cadence) || other.cadence == cadence)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.mascot, mascot) || other.mascot == mascot)&&(identical(other.ranksLeft, ranksLeft) || other.ranksLeft == ranksLeft)&&(identical(other.ranksRight, ranksRight) || other.ranksRight == ranksRight)&&(identical(other.coins, coins) || other.coins == coins));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eyebrow,amount,cadence,subtitle,mascot,ranksLeft,ranksRight,coins);

@override
String toString() {
  return 'HomeBannerDto(eyebrow: $eyebrow, amount: $amount, cadence: $cadence, subtitle: $subtitle, mascot: $mascot, ranksLeft: $ranksLeft, ranksRight: $ranksRight, coins: $coins)';
}


}

/// @nodoc
abstract mixin class _$HomeBannerDtoCopyWith<$Res> implements $HomeBannerDtoCopyWith<$Res> {
  factory _$HomeBannerDtoCopyWith(_HomeBannerDto value, $Res Function(_HomeBannerDto) _then) = __$HomeBannerDtoCopyWithImpl;
@override @useResult
$Res call({
 String eyebrow, String amount, String cadence, String subtitle, String mascot,@JsonKey(name: 'ranks_left') String ranksLeft,@JsonKey(name: 'ranks_right') String ranksRight, String coins
});




}
/// @nodoc
class __$HomeBannerDtoCopyWithImpl<$Res>
    implements _$HomeBannerDtoCopyWith<$Res> {
  __$HomeBannerDtoCopyWithImpl(this._self, this._then);

  final _HomeBannerDto _self;
  final $Res Function(_HomeBannerDto) _then;

/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eyebrow = null,Object? amount = null,Object? cadence = null,Object? subtitle = null,Object? mascot = null,Object? ranksLeft = null,Object? ranksRight = null,Object? coins = null,}) {
  return _then(_HomeBannerDto(
eyebrow: null == eyebrow ? _self.eyebrow : eyebrow // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,cadence: null == cadence ? _self.cadence : cadence // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,mascot: null == mascot ? _self.mascot : mascot // ignore: cast_nullable_to_non_nullable
as String,ranksLeft: null == ranksLeft ? _self.ranksLeft : ranksLeft // ignore: cast_nullable_to_non_nullable
as String,ranksRight: null == ranksRight ? _self.ranksRight : ranksRight // ignore: cast_nullable_to_non_nullable
as String,coins: null == coins ? _self.coins : coins // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HomeSectionDto {

 String get id; String get title;@JsonKey(name: 'more_label') String get moreLabel; List<HomeGameDto> get games;
/// Create a copy of HomeSectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSectionDtoCopyWith<HomeSectionDto> get copyWith => _$HomeSectionDtoCopyWithImpl<HomeSectionDto>(this as HomeSectionDto, _$identity);

  /// Serializes this HomeSectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSectionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.moreLabel, moreLabel) || other.moreLabel == moreLabel)&&const DeepCollectionEquality().equals(other.games, games));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,moreLabel,const DeepCollectionEquality().hash(games));

@override
String toString() {
  return 'HomeSectionDto(id: $id, title: $title, moreLabel: $moreLabel, games: $games)';
}


}

/// @nodoc
abstract mixin class $HomeSectionDtoCopyWith<$Res>  {
  factory $HomeSectionDtoCopyWith(HomeSectionDto value, $Res Function(HomeSectionDto) _then) = _$HomeSectionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title,@JsonKey(name: 'more_label') String moreLabel, List<HomeGameDto> games
});




}
/// @nodoc
class _$HomeSectionDtoCopyWithImpl<$Res>
    implements $HomeSectionDtoCopyWith<$Res> {
  _$HomeSectionDtoCopyWithImpl(this._self, this._then);

  final HomeSectionDto _self;
  final $Res Function(HomeSectionDto) _then;

/// Create a copy of HomeSectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? moreLabel = null,Object? games = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,moreLabel: null == moreLabel ? _self.moreLabel : moreLabel // ignore: cast_nullable_to_non_nullable
as String,games: null == games ? _self.games : games // ignore: cast_nullable_to_non_nullable
as List<HomeGameDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeSectionDto].
extension HomeSectionDtoPatterns on HomeSectionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeSectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeSectionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeSectionDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeSectionDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeSectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeSectionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(name: 'more_label')  String moreLabel,  List<HomeGameDto> games)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeSectionDto() when $default != null:
return $default(_that.id,_that.title,_that.moreLabel,_that.games);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(name: 'more_label')  String moreLabel,  List<HomeGameDto> games)  $default,) {final _that = this;
switch (_that) {
case _HomeSectionDto():
return $default(_that.id,_that.title,_that.moreLabel,_that.games);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title, @JsonKey(name: 'more_label')  String moreLabel,  List<HomeGameDto> games)?  $default,) {final _that = this;
switch (_that) {
case _HomeSectionDto() when $default != null:
return $default(_that.id,_that.title,_that.moreLabel,_that.games);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeSectionDto implements HomeSectionDto {
  const _HomeSectionDto({required this.id, required this.title, @JsonKey(name: 'more_label') required this.moreLabel, required final  List<HomeGameDto> games}): _games = games;
  factory _HomeSectionDto.fromJson(Map<String, dynamic> json) => _$HomeSectionDtoFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey(name: 'more_label') final  String moreLabel;
 final  List<HomeGameDto> _games;
@override List<HomeGameDto> get games {
  if (_games is EqualUnmodifiableListView) return _games;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_games);
}


/// Create a copy of HomeSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeSectionDtoCopyWith<_HomeSectionDto> get copyWith => __$HomeSectionDtoCopyWithImpl<_HomeSectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeSectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeSectionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.moreLabel, moreLabel) || other.moreLabel == moreLabel)&&const DeepCollectionEquality().equals(other._games, _games));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,moreLabel,const DeepCollectionEquality().hash(_games));

@override
String toString() {
  return 'HomeSectionDto(id: $id, title: $title, moreLabel: $moreLabel, games: $games)';
}


}

/// @nodoc
abstract mixin class _$HomeSectionDtoCopyWith<$Res> implements $HomeSectionDtoCopyWith<$Res> {
  factory _$HomeSectionDtoCopyWith(_HomeSectionDto value, $Res Function(_HomeSectionDto) _then) = __$HomeSectionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title,@JsonKey(name: 'more_label') String moreLabel, List<HomeGameDto> games
});




}
/// @nodoc
class __$HomeSectionDtoCopyWithImpl<$Res>
    implements _$HomeSectionDtoCopyWith<$Res> {
  __$HomeSectionDtoCopyWithImpl(this._self, this._then);

  final _HomeSectionDto _self;
  final $Res Function(_HomeSectionDto) _then;

/// Create a copy of HomeSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? moreLabel = null,Object? games = null,}) {
  return _then(_HomeSectionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,moreLabel: null == moreLabel ? _self.moreLabel : moreLabel // ignore: cast_nullable_to_non_nullable
as String,games: null == games ? _self._games : games // ignore: cast_nullable_to_non_nullable
as List<HomeGameDto>,
  ));
}


}


/// @nodoc
mixin _$HomeGameDto {

 String get id; String get name; String get cover;@JsonKey(name: 'route_id') String get routeId;
/// Create a copy of HomeGameDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeGameDtoCopyWith<HomeGameDto> get copyWith => _$HomeGameDtoCopyWithImpl<HomeGameDto>(this as HomeGameDto, _$identity);

  /// Serializes this HomeGameDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeGameDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.routeId, routeId) || other.routeId == routeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cover,routeId);

@override
String toString() {
  return 'HomeGameDto(id: $id, name: $name, cover: $cover, routeId: $routeId)';
}


}

/// @nodoc
abstract mixin class $HomeGameDtoCopyWith<$Res>  {
  factory $HomeGameDtoCopyWith(HomeGameDto value, $Res Function(HomeGameDto) _then) = _$HomeGameDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String cover,@JsonKey(name: 'route_id') String routeId
});




}
/// @nodoc
class _$HomeGameDtoCopyWithImpl<$Res>
    implements $HomeGameDtoCopyWith<$Res> {
  _$HomeGameDtoCopyWithImpl(this._self, this._then);

  final HomeGameDto _self;
  final $Res Function(HomeGameDto) _then;

/// Create a copy of HomeGameDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? cover = null,Object? routeId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeGameDto].
extension HomeGameDtoPatterns on HomeGameDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeGameDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeGameDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeGameDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeGameDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeGameDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeGameDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String cover, @JsonKey(name: 'route_id')  String routeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeGameDto() when $default != null:
return $default(_that.id,_that.name,_that.cover,_that.routeId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String cover, @JsonKey(name: 'route_id')  String routeId)  $default,) {final _that = this;
switch (_that) {
case _HomeGameDto():
return $default(_that.id,_that.name,_that.cover,_that.routeId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String cover, @JsonKey(name: 'route_id')  String routeId)?  $default,) {final _that = this;
switch (_that) {
case _HomeGameDto() when $default != null:
return $default(_that.id,_that.name,_that.cover,_that.routeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeGameDto implements HomeGameDto {
  const _HomeGameDto({required this.id, required this.name, required this.cover, @JsonKey(name: 'route_id') required this.routeId});
  factory _HomeGameDto.fromJson(Map<String, dynamic> json) => _$HomeGameDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String cover;
@override@JsonKey(name: 'route_id') final  String routeId;

/// Create a copy of HomeGameDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeGameDtoCopyWith<_HomeGameDto> get copyWith => __$HomeGameDtoCopyWithImpl<_HomeGameDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeGameDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeGameDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.routeId, routeId) || other.routeId == routeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cover,routeId);

@override
String toString() {
  return 'HomeGameDto(id: $id, name: $name, cover: $cover, routeId: $routeId)';
}


}

/// @nodoc
abstract mixin class _$HomeGameDtoCopyWith<$Res> implements $HomeGameDtoCopyWith<$Res> {
  factory _$HomeGameDtoCopyWith(_HomeGameDto value, $Res Function(_HomeGameDto) _then) = __$HomeGameDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String cover,@JsonKey(name: 'route_id') String routeId
});




}
/// @nodoc
class __$HomeGameDtoCopyWithImpl<$Res>
    implements _$HomeGameDtoCopyWith<$Res> {
  __$HomeGameDtoCopyWithImpl(this._self, this._then);

  final _HomeGameDto _self;
  final $Res Function(_HomeGameDto) _then;

/// Create a copy of HomeGameDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? cover = null,Object? routeId = null,}) {
  return _then(_HomeGameDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HomeTabDto {

 String get id; String get label; String get icon; HomeTabStyleDto get style; bool get selected;
/// Create a copy of HomeTabDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTabDtoCopyWith<HomeTabDto> get copyWith => _$HomeTabDtoCopyWithImpl<HomeTabDto>(this as HomeTabDto, _$identity);

  /// Serializes this HomeTabDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTabDto&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.style, style) || other.style == style)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,icon,style,selected);

@override
String toString() {
  return 'HomeTabDto(id: $id, label: $label, icon: $icon, style: $style, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $HomeTabDtoCopyWith<$Res>  {
  factory $HomeTabDtoCopyWith(HomeTabDto value, $Res Function(HomeTabDto) _then) = _$HomeTabDtoCopyWithImpl;
@useResult
$Res call({
 String id, String label, String icon, HomeTabStyleDto style, bool selected
});




}
/// @nodoc
class _$HomeTabDtoCopyWithImpl<$Res>
    implements $HomeTabDtoCopyWith<$Res> {
  _$HomeTabDtoCopyWithImpl(this._self, this._then);

  final HomeTabDto _self;
  final $Res Function(HomeTabDto) _then;

/// Create a copy of HomeTabDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? icon = null,Object? style = null,Object? selected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as HomeTabStyleDto,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeTabDto].
extension HomeTabDtoPatterns on HomeTabDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTabDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTabDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTabDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeTabDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTabDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTabDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String icon,  HomeTabStyleDto style,  bool selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTabDto() when $default != null:
return $default(_that.id,_that.label,_that.icon,_that.style,_that.selected);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String icon,  HomeTabStyleDto style,  bool selected)  $default,) {final _that = this;
switch (_that) {
case _HomeTabDto():
return $default(_that.id,_that.label,_that.icon,_that.style,_that.selected);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String icon,  HomeTabStyleDto style,  bool selected)?  $default,) {final _that = this;
switch (_that) {
case _HomeTabDto() when $default != null:
return $default(_that.id,_that.label,_that.icon,_that.style,_that.selected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTabDto implements HomeTabDto {
  const _HomeTabDto({required this.id, required this.label, required this.icon, required this.style, required this.selected});
  factory _HomeTabDto.fromJson(Map<String, dynamic> json) => _$HomeTabDtoFromJson(json);

@override final  String id;
@override final  String label;
@override final  String icon;
@override final  HomeTabStyleDto style;
@override final  bool selected;

/// Create a copy of HomeTabDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTabDtoCopyWith<_HomeTabDto> get copyWith => __$HomeTabDtoCopyWithImpl<_HomeTabDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTabDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTabDto&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.style, style) || other.style == style)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,icon,style,selected);

@override
String toString() {
  return 'HomeTabDto(id: $id, label: $label, icon: $icon, style: $style, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$HomeTabDtoCopyWith<$Res> implements $HomeTabDtoCopyWith<$Res> {
  factory _$HomeTabDtoCopyWith(_HomeTabDto value, $Res Function(_HomeTabDto) _then) = __$HomeTabDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String icon, HomeTabStyleDto style, bool selected
});




}
/// @nodoc
class __$HomeTabDtoCopyWithImpl<$Res>
    implements _$HomeTabDtoCopyWith<$Res> {
  __$HomeTabDtoCopyWithImpl(this._self, this._then);

  final _HomeTabDto _self;
  final $Res Function(_HomeTabDto) _then;

/// Create a copy of HomeTabDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? icon = null,Object? style = null,Object? selected = null,}) {
  return _then(_HomeTabDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as HomeTabStyleDto,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
