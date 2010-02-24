package flexUnitTests.com.jcbii.presos.flexunit4
{
    import flexunit.framework.Assert;
	
    public class MyServiceFailsTest
    {		
        [Before]
	    public function setUp():void
        {
			
	    }
        
        [After]
        public function tearDown():void
        {
        }
        
        [BeforeClass]
	    public static function setUpBeforeClass():void
	    {
        }
        
        [AfterClass]
	    public static function tearDownAfterClass():void
	    {
        }
        
        [Test]
		public function testEcho():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test]
		public function testGetProducts():void
		{
			Assert.fail("Test method Not yet implemented");
		}
     }
}