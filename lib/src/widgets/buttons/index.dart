library app_widget.button;

import 'dart:developer';
import 'dart:math' hide log;
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';

import 'package:ytsmovies/src/bloc/theme_bloc.dart';
import 'package:ytsmovies/src/utils/index.dart';
import '../../mock/movie.dart';
import '../../mock/torrent.dart' as m;

part './download_button.dart';
part './favourite_button.dart';
part './popup_fab.dart';
part './show_more_button.dart';
part './theme_button.dart';