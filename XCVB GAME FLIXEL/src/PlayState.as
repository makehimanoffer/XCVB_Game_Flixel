package{ /** @author David Ryan */
	import org.flixel.*;
	import org.flixel.system.FlxTile;
	
	public class PlayState extends FlxState
	{
		
		
		public function PlayState():void
		{
			
		}
		
		override public function create():void
		{
			
			
			
		}
		
		override public function update():void
		{
			FlxG.switchState(new Menu());
			
		
			super.update();
		
			
			
		
			
		}
	}
}