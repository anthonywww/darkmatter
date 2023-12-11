
public class Window {
	
	#[generate("public get")]
	private int64 id;

	#[generate("public get, public set")]
	private mutable &string title;
	
	#[generate("public get, public set")]
	private mutable int32 width;
	
	#[generate("public get, public set")]
	private mutable int32 height;
	
	#[generate("public get, public set")]
	private mutable int32 minimum_width;
	
	#[generate("public get, public set")]
	private mutable int32 minimum_height;
	
	#[generate("public get, public set")]
	private mutable int32 maximum_width;
	
	#[generate("public get, public set")]
	private mutable int32 maximum_height;
	
	#[generate("public get, public set")]
	private mutable boolean resizable;
	
	#[generate("public get, public set")]
	private mutable boolean fullscreen;
	
	#[generate("public get, public set")]
	private mutable boolean vsync_enabled;
	
	#[generate("public get, public set")]
	private RendererType vsync_enabled;

	public Window() {
		self.width = 800;
		self.height = 600;
		self.minimum_width = 640;
		self.minimum_height = 480;
		self.maximum_width = 1920;
		self.maximum_height = 1080
	}

}

