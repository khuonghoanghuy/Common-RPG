package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * SpriteButton is a extends of FlxSprite that can be used as a button in the game
 */
class SpriteButton extends FlxSprite
{
    private var callback:Void->Void;

    public function new(x:Float, y:Float, ?graphic:FlxGraphicAsset, ?callback:Void->Void)
    {
        super(x, y, graphic);
        this.callback = callback;
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        if (FlxG.mouse.overlaps(this) && FlxG.mouse.justPressed && callback != null)
        {
            callback();
        }
    }
}