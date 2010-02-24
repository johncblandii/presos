package flexUnitTests.com.jcbii.presos.flexunit4{
	import com.jcbii.presos.flexunit4.MyService;
	
	import flash.events.Event;
	
	import org.flexunit.asserts.assertTrue;
	import org.flexunit.async.Async;

    public class MyServiceTest{
       	protected var component:MyService;
		
		[Before]
	    public function setUp():void{
			component = new MyService();
	    }
		
		[After]
		public function tearDown():void{
			component = null;
		}
        
		[Test(order=2)]
		public function echoHi():void{
			assertTrue(component.echo("hi") == "hi");
		}
		
		[Test(async, order=1)]
		public function getProducts():void{
			var asyncHandler:Function = Async.asyncHandler( this, onProductsReturned, 500, null);
			component.addEventListener(MyService.GET_PRODUCTS_COMPLETE, asyncHandler, false, 0, true );
			component.getProducts();
		}
		
		protected function onProductsReturned(event:Event):void{
			assertTrue(component.products.length > 0);
		}
     }
}