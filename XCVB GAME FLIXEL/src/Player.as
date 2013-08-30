package  
{
	import org.flixel.FlxSprite;
	import org.flixel.*;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Player extends FlxSprite
	{
		var Ex:Boolean = (FlxG.keys.X);
		var c:Boolean = (FlxG.keys.C);
		var v:Boolean = (FlxG.keys.V);
		var b:Boolean = (FlxG.keys.B);
		var vPressed:Boolean = false;
		var bPressed:Boolean = false;
		var Xspeed:int = 90;
		var Yspeed:int = 90;
		
		
		
		
		
		public function Player() 
		{
			loadGraphic(Sources.ImgPlayer, true, true, 24, 23);
			//acceleration.x = 2;
			//acceleration.y = 2;
			//velocity.x = 40;
			//velocity.y = 40;
			addAnimation("DownAndRight", [1]);
			addAnimation("DownAndLeft", [0]);
			addAnimation("UpAndRight", [3]);
			addAnimation("UpAndLeft", [2]);
			
			
		}
		
		override public function update():void
		{
			if (Xspeed > 0 && Yspeed > 0) {
					play("DownAndRight");
					
				}
				if (Xspeed < 0 && Yspeed > 0) {
					play("DownAndLeft");
				}
				if (Xspeed < 0 && Yspeed < 0) {
					play("UpAndLeft");
				}
				if (Xspeed > 0 && Yspeed < 0) {
					play("UpAndRight");
				}
		
			if (FlxG.keys.justPressed("B")) {
				
				
					velocity.x = Xspeed;
					velocity.y = 0;
					FlxG.play(Sources.Switch);
				
				
				
			}
			
			if (FlxG.keys.justPressed("V")) {
				
					velocity.y = Yspeed;
					velocity.x = 0;
					FlxG.play(Sources.Switch);
					
				
			}
			
			
			if (FlxG.keys.justPressed("X")) {
				
					Xspeed = -Xspeed;
					FlxG.play(Sources.Switch);
					
				}
				
				
			
			if (FlxG.keys.justPressed("C")) {
				//C IS UP AND DOWN
				
				Yspeed = -Yspeed;
				FlxG.play(Sources.Switch);
				
				
			}
			
			trace(this.x, this.y);
			super.update();
			
			
		}
		
	}
	
	

}