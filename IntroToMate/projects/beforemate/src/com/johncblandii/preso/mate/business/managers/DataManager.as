package com.johncblandii.preso.mate.business.managers{
	import com.johncblandii.preso.mate.events.ContentEvent;
	import com.johncblandii.preso.mate.models.DataItem;
	
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.managers.CursorManager;
	
	[Event(name="dataReady", type="com.johncblandii.preso.mate.events.ContentEvent")]
	public class DataManager extends EventDispatcher{
		private function createCallDelay(delay:Number, resultHandler:Function):void{
			//fake an asynchronous data call
			var timer:Timer = new Timer(delay, 1);
			timer.addEventListener(TimerEvent.TIMER, resultHandler, false, 0, true);
			timer.start();
		}
		
		public function getData():void{
			CursorManager.setBusyCursor();
			createCallDelay(1000, handleDataReturned);
		}
				
		public function saveData():void{
			//send data to server or do some magic on it
			
			createCallDelay(5000, handleDataSaved);
		}
		
		/* EVENT HANDLERS */
		
		private function handleDataReturned(event:TimerEvent):void{
			var ev:ContentEvent = new ContentEvent(ContentEvent.DATA_READY);
			ev.dataItems = new ArrayCollection();
			
			var item:DataItem;
			var len:Number = Math.floor(Math.random()*10);
			if(len == 0) len = 20;
			for(var i:Number = 0; i < len; i++){
				item = new DataItem();
				item.firstName = "John C";
				item.lastName = "Bland " + Math.round(Math.random()*10).toString();
				item.email = String(item.firstName + item.lastName.toLowerCase() + "@domain.com").toLowerCase().replace(/ /gi, "");
				ev.dataItems.addItem(item);
			}
			
			dispatchEvent(ev);
			
			CursorManager.removeBusyCursor();
		}
		
		private function handleDataSaved(event:TimerEvent):void{
			//data is saved so let's pull a new list; not best practice but this is vapor-ware! ;-)
			getData();
		}
	}
}