package com.njly.providers
{
	import com.creativebottle.starlingmvc.beans.BeanProvider;
	import com.njly.controllers.GameController;
	import com.njly.mediators.GamesMediator;
	import com.njly.mediators.PreLoadMediator;
	import com.njly.mediators.View1Mediator;
	import com.njly.mediators.View2Mediator;
	import com.njly.models.GameModel;
	
	public class GameObjectProvider extends BeanProvider
	{
		private var beans:Array;
		public function GameObjectProvider()
		{
			beans = [new GameModel(),
					new GamesMediator(),
					new PreLoadMediator(),
					new View1Mediator(),
					new View2Mediator(),
					new GameController()];
		}
	}
}