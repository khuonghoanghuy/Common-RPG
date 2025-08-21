package;

class WorldState extends BaseState
{
    var player:Player;

    override function create() {
        super.create();

        player = new Player(100, 100);
        add(player);
    }    

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}