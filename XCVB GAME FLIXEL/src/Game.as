package{ /** @author David Ryan */
	import org.flixel.*;
	import com.newgrounds.components.*;
	
	public class Game extends FlxGame
	{
		private const resolution:FlxPoint = new FlxPoint(640, 480);
		private const zoom:Number = 1.5;
		private const fps:uint = 60;
		
		public function Game()
		{
			super(resolution.x / zoom, resolution.y / zoom, PlayState, zoom);
			FlxG.flashFramerate = fps;
		}
	}
}