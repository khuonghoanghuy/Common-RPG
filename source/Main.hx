package;

import flixel.FlxGame;
import flixel.util.FlxColor;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		var game:FlxGame = new FlxGame(0, 0, PlayState);
		@:privateAccess
		game._customSoundTray = SoundTray;
		addChild(game);

		var fpsCounter:FPS = new FPS(3, 3, FlxColor.WHITE);
		addChild(fpsCounter);
	}
}
