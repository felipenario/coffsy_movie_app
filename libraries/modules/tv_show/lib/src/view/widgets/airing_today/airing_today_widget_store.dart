import 'package:core/core.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../../domain/entities/movie.dart';
import '../../../domain/usecases/get_tv_airing_today.dart';

class AiringTodayWidgetStore extends StreamStore<Failure, List<Movie>> {
  final GetTvAiringToday _getTvAiringToday;
  AiringTodayWidgetStore(this._getTvAiringToday) : super([]) {
    load();
  }

  Future<void> load() => execute(_getTvAiringToday);
}
