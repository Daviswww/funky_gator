import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:funky_gator/level.dart';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() => Colors.amber;

  @override
  FutureOr<void> onLoad() {
    world = Level();

    camera = CameraComponent.withFixedResolution(
      world: world,
      width: 640,
      height: 360,
    );
    camera.viewfinder.anchor = Anchor.topLeft;

    addAll([
      camera,
      world,
    ]);

    return super.onLoad();
  }
}
