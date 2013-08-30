package{ /** @author David Ryan */
	import org.flixel.*;
	
	
	public class MenuColor extends FlxState
	{
		override public function create():void
		{
			var background:FlxSprite = new FlxSprite(0, 0, Sources.ImgBackgroundBAndW);
			add(background);
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "XCVB");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
			
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 32, FlxG.width, "Press Space To Play. Press Z for How To. Press Q for Credits");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
 
		} // end function create
 
 
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				FlxG.switchState(new Level1());
			}
			if (FlxG.keys.justPressed("Z"))
			{
				FlxG.switchState(new HowTo());
			}
			if (FlxG.keys.justPressed("Q"))
			{
				FlxG.switchState(new Credits());
			}
 
		} // end function update
 
 
		public function MenuColor()
		{
			super();
 
		}  // end function MenuState
 
	} // end class
}// end package 