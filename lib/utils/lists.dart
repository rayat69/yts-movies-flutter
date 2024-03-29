import 'package:ytsmovies/utils/enums.dart';

import '../models/label_value.dart';

const genres = const [
  LabelValue("All", null),
  LabelValue("Action", "action"),
  LabelValue("Adventure", "adventure"),
  LabelValue("Animation", "animation"),
  LabelValue("Biography", "biography"),
  LabelValue("Comedy", "comedy"),
  LabelValue("Crime", "crime"),
  LabelValue("Documentary", "documentary"),
  LabelValue("Drama", "drama"),
  LabelValue("Family", "family"),
  LabelValue("Fantasy", "fantasy"),
  LabelValue("Film-Noir", "film-noir"),
  LabelValue("Game-Show", "game-show"),
  LabelValue("History", "history"),
  LabelValue("Horror", "horror"),
  LabelValue("Music", "music"),
  LabelValue("Musical", "musical"),
  LabelValue("Mystery", "mystery"),
  LabelValue("News", "news"),
  LabelValue("Reality-TV", "reality-tv"),
  LabelValue("Romance", "romance"),
  LabelValue("Sci-Fi", "sci-fi"),
  LabelValue("Sport", "sport"),
  LabelValue("Talk-Show", "talk-show"),
  LabelValue("Thriller", "thriller"),
  LabelValue("War", "war"),
  LabelValue("Western", "western"),
];

final sorts =
    Sort.values.map((e) => LabelValue(e.label, e.val)).toList(growable: false);
