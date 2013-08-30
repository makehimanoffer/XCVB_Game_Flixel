package{ /** @author David Ryan */
	import org.flixel.*;
	import com.newgrounds.API;
	
	public class HowTo extends FlxState
	{
		override public function create():void
		{
			API.unlockMedal("HowTo");
			var background:FlxSprite = new FlxSprite(0, 0, Sources.ImgBackground);
			add(background);
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "X.C.V.B");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
			
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 200, FlxG.width, "Press X To Swap Left Or Right. C to swap Up or Down. V to go in the Up or Down Direction. B to go in the Left or Right Direction. Get to the end of the Levels.  PRESS 0 to Mute. + or - to increase or decrease music PRESS SPACE TO RETURN TO MENU");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
 
		} // end function create
 
 
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				FlxG.switchState(new Menu());
			}
 
		} // end function update
 
 
		public function HowTo()
		{
			super();
 
		}  // end function MenuState
 
	} // end class
}// end package 