package com.slantsoft.managers
{
	import com.slantsoft.views.ClientManager;
	import com.slantsoft.views.HistoryWindow;
	import com.slantsoft.views.UpdateWindow;
	
	import flash.events.EventDispatcher;
	import flash.system.Capabilities;

	public class NativeWindowManager extends EventDispatcher
	{
		private var historyWindow:HistoryWindow;
		private var updateWindow:UpdateWindow;
		private var clientManager:ClientManager;
		
		public function openHistoryWindow():void{
			var targetHeight:int = 400;
			var targetWidth:int = 600;
			
			if (!historyWindow || historyWindow.closed){
				historyWindow = new HistoryWindow();
				
				historyWindow.height = targetHeight;
				historyWindow.width = targetWidth;
				historyWindow.minHeight = targetHeight;
				historyWindow.minWidth = targetWidth;
				
				historyWindow.open();
				
				historyWindow.nativeWindow.x = (Capabilities.screenResolutionX - targetWidth) / 2;
				historyWindow.nativeWindow.y = (Capabilities.screenResolutionY - targetHeight) / 2;
			}
			
			historyWindow.activate();
		}
		
		public function openUpdateWindow():void{
			var targetHeight:int = 150;
			var targetWidth:int = 350;
			
			if (!updateWindow || updateWindow.closed){
				updateWindow = new UpdateWindow();
				
				
				
				updateWindow.height = updateWindow.minHeight = updateWindow.maxHeight = targetHeight;
				updateWindow.width = updateWindow.minWidth = updateWindow.maxWidth = targetWidth;
				
				updateWindow.open();
				
				updateWindow.nativeWindow.x = (Capabilities.screenResolutionX - targetWidth) / 2;
				updateWindow.nativeWindow.y = (Capabilities.screenResolutionY - targetHeight) / 2;
			}
			
			updateWindow.activate();
		}
		
		public function openClientManager():void{
			var targetHeight:int = 400;
			var targetWidth:int = 600;
			
			if (!clientManager || clientManager.closed){
				clientManager = new ClientManager();
				
				clientManager.height = targetHeight;
				clientManager.width = targetWidth;
				clientManager.minHeight = targetHeight;
				clientManager.minWidth = targetWidth;
				
				clientManager.open();
				
				clientManager.nativeWindow.x = (Capabilities.screenResolutionX - targetWidth) / 2;
				clientManager.nativeWindow.y = (Capabilities.screenResolutionY - targetHeight) / 2;
			}
			
			clientManager.activate();
		}
	}
}