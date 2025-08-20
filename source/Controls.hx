package;

import flixel.addons.input.FlxControlInputType;
import flixel.addons.input.FlxControls;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

enum Action
{
	/**
	 * Move Up for menu
	 */
	@:inputs([FlxKey.UP, FlxKey.W])
	UP_UI;

	/**
	 * Move Up for game
	 */
	@:inputs([FlxKey.UP, FlxKey.W])
	UP_GAME;

	/**
	 * Move Down for menu
	 */
	@:inputs([FlxKey.DOWN, FlxKey.S])
	DOWN_UI;

	/**
	 * Move Down for game
	 */
	@:inputs([FlxKey.DOWN, FlxKey.S])
	DOWN_GAME;

	/**
	 * Move Left for menu
	 */
	@:inputs([FlxKey.LEFT, FlxKey.A])
	LEFT_UI;

	/**
	 * Move Left for game
	 */
	@:inputs([FlxKey.LEFT, FlxKey.A])
	LEFT_GAME;

	/**
	 * Move Right for menu
	 */
	@:inputs([FlxKey.RIGHT, FlxKey.D])
	RIGHT_UI;

	/**
	 * Move Right for game
	 */
	@:inputs([FlxKey.RIGHT, FlxKey.D])
	RIGHT_GAME;

	/**
	 * Confirm for both menu and game
	 */
	@:inputs([FlxKey.ENTER])
	ACCEPT;

	/**
	 * Cancel for both menu and game
	 */
	@:inputs([FlxKey.ESCAPE])
	BACK;
}

class Controls extends FlxControls<Action> {}