package com.jcbii.presos.flexunit4{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	[Event(name="getProductsComplete")]
	
	/**
	 * MyService
	 * @author johncblandii
	 */
	public class MyService extends EventDispatcher{
	//	CONSTANTS
		public static const GET_PRODUCTS_COMPLETE:String = "getProductsComplete";
		
	//	PROPERTIES
		public var products:Array = new Array();
		
	//	PUBLIC METHODS
		public function echo(message:String):String{
			return message;
		}
		
		public function getProducts():void{
			var timer:Timer = new Timer(5000);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, onProductsResult, false, 0, true);
			timer.start();
		}
		
		public function onProductsResult(event:TimerEvent):void{
			//products = ["fish eggs", "coldfusion teeshirt", "twitter application"];
			dispatchEvent(new Event(GET_PRODUCTS_COMPLETE));
		}
	}
}