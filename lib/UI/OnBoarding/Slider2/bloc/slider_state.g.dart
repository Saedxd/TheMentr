// GENERATED CODE - DO NOT MODIFY BY HAND

part of slider_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SliderState extends SliderState {
  @override
  final int? Pageindex;
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final List<String>? countries;

  factory _$SliderState([void Function(SliderStateBuilder)? updates]) =>
      (new SliderStateBuilder()..update(updates))._build();

  _$SliderState._(
      {this.Pageindex,
      this.error,
      this.isLoading,
      this.success,
      this.countries})
      : super._();

  @override
  SliderState rebuild(void Function(SliderStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderStateBuilder toBuilder() => new SliderStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderState &&
        Pageindex == other.Pageindex &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Pageindex.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SliderState')
          ..add('Pageindex', Pageindex)
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('countries', countries))
        .toString();
  }
}

class SliderStateBuilder implements Builder<SliderState, SliderStateBuilder> {
  _$SliderState? _$v;

  int? _Pageindex;
  int? get Pageindex => _$this._Pageindex;
  set Pageindex(int? Pageindex) => _$this._Pageindex = Pageindex;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  List<String>? _countries;
  List<String>? get countries => _$this._countries;
  set countries(List<String>? countries) => _$this._countries = countries;

  SliderStateBuilder();

  SliderStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Pageindex = $v.Pageindex;
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _countries = $v.countries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SliderState;
  }

  @override
  void update(void Function(SliderStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SliderState build() => _build();

  _$SliderState _build() {
    final _$result = _$v ??
        new _$SliderState._(
            Pageindex: Pageindex,
            error: error,
            isLoading: isLoading,
            success: success,
            countries: countries);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
