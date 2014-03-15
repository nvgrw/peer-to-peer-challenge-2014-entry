part of game;

abstract class PhysicsEntity extends SceneObject {
    PhysicsEntity(Vector3 position, Vector3 rotation) : super(position, rotation);

    void postConstructor(){
        super.postConstructor();
        this.sceneAttachment["geometry"].callMethod("computeBoundingBox");
    }

    void updatePosition(){
        super.updatePosition();
        sceneAttachment["__dirtyPosition"] = true;
    }

    void updateRotation(){
        super.updateRotation();
        sceneAttachment["__dirtyRotation"] = true;
    }

    void tick(num delta);
}