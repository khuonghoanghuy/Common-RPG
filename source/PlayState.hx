package;

import Enemy.EnemyType;
import flixel.FlxG;

class PlayState extends BaseState
{
	var player:Player;
	var enemies:Array<Enemy>;
	var enemyData:Dynamic;

	override public function create()
	{
		super.create();
		enemies = [];
		enemyData = WorkAround.loadJson(Paths.getPath('data/world/battle/slime.json'));

		player = new Player(100, 100, Battle);
		add(player);

		if (enemyData.enemies != null)
		{
			var enemyCount = enemyData.enemies.length;
			if (enemyCount > 3)
				enemyCount = 3;

			for (i in 0...enemyCount)
			{
				var enemyInfo = enemyData.enemies[i];
				var enemyType = Type.createEnum(EnemyType, enemyInfo.type);
				if (enemyType != null)
				{
					var position = calculateEnemyPosition(i, enemyCount);
					var enemy = new Enemy(position.x, position.y, enemyType);
					enemies.push(enemy);
					add(enemy);
				}
			}
		}
	}

	private function calculateEnemyPosition(index:Int, totalEnemies:Int):{x:Float, y:Float}
	{
		var screenCenterX = FlxG.width / 2;
		var screenCenterY = FlxG.height / 2;
		var spacing = 150;

		return switch (totalEnemies)
		{
			case 1:
				{
					x: screenCenterX,
					y: screenCenterY
				};
			case 2:
				{
					x: screenCenterX + (index == 0 ? -spacing : spacing),
					y: screenCenterY
				};
			case 3:
				{
					x: screenCenterX + (index - 1) * spacing,
					y: screenCenterY
				};
			default:
				{
					x: screenCenterX,
					y: screenCenterY
				};
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}