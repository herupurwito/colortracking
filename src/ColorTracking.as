package  
{
	import flash.display.Sprite;
	import video.ColorTracker;
	import video.LiveCamera;
 [SWF(width="640", height="480", frameRate="30", backgroundColor="#000000")]
	public class ColorTracking extends Sprite
	{
 
		private var _cam:ColorTracker;
 
		public function ColorTracking() 
		{
			_cam = new ColorTracker(640, 480, 0xffffff, 10);
			addChild(_cam);
                        //this is how you can get the x and y coordinates of the pixel you are 
                        //tracking as a Point object
                        trace(_cam.publicpos);
 
		}
 
	}
 
}