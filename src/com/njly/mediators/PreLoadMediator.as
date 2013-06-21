package com.njly.mediators
{
	
	import com.njly.views.PreLoad;

	public class PreLoadMediator
	{
		private var view:PreLoad;
		
		[ViewAdded]
		public function viewAdded(view:PreLoad):void
		{
			this.view = view;
			trace("[PreLoadMediator] PreLoadMediator Added");
		}
		
		[ViewRemoved]
		public function viewRemoved(view:PreLoad):void
		{
			this.view = null;
			trace("[Test1Mediator] PreLoadMediator Removed");
		}
	}
}
