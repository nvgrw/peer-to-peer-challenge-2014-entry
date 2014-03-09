library p2pentry;

import "dart:html";
import "dart:async";
import "dart:js";
import "dart:math" as Math;
import "package:vector_math/vector_math.dart";

part "Game.dart";

part "world/World.dart";

part "entity/Entity.dart";
part "entity/PhysicsEntity.dart";
part "entity/world_entities/CrateEntity.dart";
part "entity/world_entities/PlaneEntity.dart";

part "player/Player.dart";

void main() {
    Game g = new Game();
}