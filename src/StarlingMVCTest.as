package
{
	
	
	import com.njly.views.Games;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Rectangle;
	import flash.utils.setTimeout;
	
	import starling.core.Starling;
	
	[SWF(frameRate="60", backgroundColor="#666666")]
	public class StarlingMVCTest extends Sprite
	{
		private var mStarling:Starling;
		private var screenWidth:int;
		private var screenHeight:int;
		private var viewPort:Rectangle;
		public function StarlingMVCTest()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			Starling.multitouchEnabled = false;  // useful on mobile devices
			Starling.handleLostContext = false;  // required on Android
			screenWidth  = stage.fullScreenWidth;
			screenHeight = stage.fullScreenHeight;
			//viewPort = new Rectangle();
			//viewPort.width = screenWidth; 
			//viewPort.height = int(viewPort.width );
			//viewPort.y = int((screenHeight - viewPort.height) / 2);
			setTimeout(initStarling,1000);
			
		}
		private  function  initStarling():void{
			mStarling = new Starling(Games, stage, viewPort);
			mStarling.showStats = true;
			mStarling.enableErrorChecking=false;
			mStarling.antiAliasing = 1;
			mStarling.start();
		}
	}
}