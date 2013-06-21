package com.njly.views
{
	import com.creativebottle.starlingmvc.StarlingMVC;
	import com.creativebottle.starlingmvc.config.StarlingMVCConfig;
	import com.creativebottle.starlingmvc.views.ViewManager;
	import com.njly.events.*;
	
	import com.njly.providers.GameObjectProvider;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	import utils.AssetManager;
	
	public class Games extends Sprite
	{
		public static var sAssets:AssetManager;
		private var config:StarlingMVCConfig;
		private var beans:Array;
		private var starlingMVC:StarlingMVC;
		public function Games()
		{
			addEventListener( Event.ADDED_TO_STAGE, init );
			super();
		}
		private function init( event : Event ) : void
		{		
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			
			config = new StarlingMVCConfig();
			config.eventPackages = ["com.njly.events"];
			config.viewPackages = ["com.njly.views"];
			sAssets = new AssetManager(1, false);
			sAssets.verbose = true;				
			///////////////////////////////////////////////////////////////////
			// GameObjectProvider defines the initial beans that are used
			///////////////////////////////////////////////////////////////////
			
			beans = [new GameObjectProvider(), new ViewManager(this)];
			starlingMVC = new StarlingMVC(this, config, beans);
			trace("----");
		}
		public static function get assetManager():AssetManager
		{
			return sAssets;
		}
	}
}