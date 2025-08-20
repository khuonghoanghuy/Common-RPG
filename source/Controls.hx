package;

import flixel.addons.input.FlxControlInputType;
import flixel.addons.input.FlxControls;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

enum Action
{
	@:inputs([FlxKey.UP, FlxKey.W, DPAD_UP, LEFT_STICK_DIGITAL_UP, FlxVirtualPadInputID.UP])
	UP;

	@:inputs([
		FlxKey.DOWN,
		FlxKey.S,
		DPAD_DOWN,
		LEFT_STICK_DIGITAL_DOWN,
		FlxVirtualPadInputID.DOWN
	])
	DOWN;

	@:inputs([
		FlxKey.LEFT,
		FlxKey.A,
		DPAD_LEFT,
		LEFT_STICK_DIGITAL_LEFT,
		FlxVirtualPadInputID.LEFT
	])
	LEFT;

	@:inputs([
		FlxKey.RIGHT,
		FlxKey.D,
		DPAD_RIGHT,
		LEFT_STICK_DIGITAL_RIGHT,
		FlxVirtualPadInputID.RIGHT
	])
	RIGHT;
}

class Controls extends FlxControls<Action> {}