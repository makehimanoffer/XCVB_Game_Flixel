package  
{
    import com.newgrounds.*;
    import com.newgrounds.components.*;
    import flash.display.MovieClip;
	import flash.media.SoundTransform;
	import org.flixel.system.FlxPreloader;

    public class Preloader extends FlxPreloader
    {
		
		
 
/**
* Sitelock your swf file on domains
*
* @param arrDomain List of all authorized domains
* @param local This swf can be played on local computer ?
*/

        public function Preloader():void
        {
           
		   
			super();
			minDisplayTime = 10;
			className = "Main";
			//information on API-integration: 
			//http://www.newgrounds.com/wiki/creator-resources/flash-api/getting-started-with-the-api/flixel
        }
		
		
    }
}