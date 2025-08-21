package;

import flixel.FlxSprite;

enum EnemyType {
    Slime;
}

class Enemy extends FlxSprite
{
    public function new(x:Float, y:Float, type:EnemyType) {
        super(x, y);

        switch (type) {
            case Slime:
                makeGraphic(32, 32, 0xFF00FF00); // Green slime
        }
    }
}