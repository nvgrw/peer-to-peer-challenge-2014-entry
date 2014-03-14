part of game;

abstract class SceneObject {

    Vector3 position = new Vector3.all(0.0), rotation = new Vector3.all(0.0);
    JsObject sceneAttachment;
    bool isAttachedToScene = false;

    SceneObject(Vector3 position, Vector3 rotation){
        if(position != null) this.position = position;
        if(rotation != null) this.rotation = rotation;
    }

    void postConstructor(){
        updatePosition();
        updateRotation();
    }

    void updatePosition(){
        sceneAttachment["position"]["x"] = position.x;
        sceneAttachment["position"]["y"] = position.y;
        sceneAttachment["position"]["z"] = position.z;
    }

    void updateRotation(){
        sceneAttachment["rotation"]["x"] = radians(rotation.x);
        sceneAttachment["rotation"]["y"] = radians(rotation.y);
        sceneAttachment["rotation"]["z"] = radians(rotation.z);
    }

    void tick(num delta);
}