package;


import lime.app.Application;
import lime.graphics.RenderContext;
import lime.media.AudioSource;
import lime.utils.Assets;


class Main extends Application {
	
	
	private var sound:AudioSource;
	
	
	public function new () {
		
		super ();
		
	}
	
	
	public override function onMouseDown (x:Float, y:Float, button:Int):Void {
		
		if (sound != null) {
			
			sound.play ();
			
		}
		
	}
	
	
	public override function onPreloadComplete ():Void {
		
		sound = new AudioSource (Assets.getAudioBuffer ("assets/sound.wav"));
		
	}
	
	
	public override function render (context:RenderContext):Void {
		
			context.gl.viewport (0, 0, window.width, window.height);
			context.gl.clearColor (60 / 255, 184 / 255, 7 / 255, 1);
			context.gl.clear (context.gl.COLOR_BUFFER_BIT);
		
	}
	
	
}
