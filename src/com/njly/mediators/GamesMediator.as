package com.njly.mediators
{
	import com.njly.views.Games;

	public class GamesMediator
	{
		private var view:Games;
		
		[ViewAdded]
		public function viewAdded(view:Games):void
		{
			this.view = view;
			trace("GameMediator::GameView Added");
		}
		
		[ViewRemoved]
		public function viewRemoved(view:Games):void
		{
			this.view = null;
			trace("GameMediator::GameView Removed");
		}
	}
}