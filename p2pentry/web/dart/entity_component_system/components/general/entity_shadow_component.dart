part of game;

class EntityShadowComponent extends EntityComponent {

    bool cast, receive;

    EntityShadowComponent(bool this.cast, bool this.receive);

    void init(){
        entity.sceneAttachment["castShadow"] = cast;
        entity.sceneAttachment["receiveShadow"] = receive;
    }

    void tick(num delta){

    }

}