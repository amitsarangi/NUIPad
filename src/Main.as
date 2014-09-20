package 
{
	import app.core.action.RotatableScalable;
	import flash.events.TUIO;

	import flash.display.Sprite;
	import flash.display.StageDisplayState;
	
	[SWF(width="1024", height="768", frameRate="31", backgroundColor="#333333")]
	
	/**
	 * ...
	 * @author Amit
	 * http://amitsarangi.wordpress.com
	 */
	
	public class Main extends Sprite 
	{
		var editor = new MTEditor();
		public function Main():void
		{		
		//--------Connect to TUIO-----------------
            TUIO.init(this,'localhost',3000,'',true);
            trace("Application Initialized");
        //----------------------------------------
		stage.displayState = StageDisplayState.FULL_SCREEN;

		var rect:Sprite= new Sprite();
		rect.graphics.beginFill(0x333333,1);
		rect.graphics.drawRect(0,0,900,500);
		this.addChild(rect);

		rect.addChild(editor);
		editor.x = 80;
		editor.y = 30;
		}
	}
}