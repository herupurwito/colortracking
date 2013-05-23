package  
{
	/**
	 * ...
	 * @author heru
	 */
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import video.ColorTracker;
	[SWF(width="320", height="240", frameRate="30", backgroundColor="#FFFFFF")]
	public class mainclass extends Sprite
	{
		private var _cam:ColorTracker;
		public function mainclass() 
		{
			_cam = new ColorTracker(320, 240, 0x44ddff, 10);
			
			//mirror
			var lebar:int = _cam.width;
			var ma:Matrix=new Matrix();
			ma.a=-1;
			ma.tx=lebar;
			this._cam.transform.matrix = ma; 
			
			//positioning camera
			_cam.x -= 12;
			
			addChild(_cam);
		}
		
	}

}