class congrats : AlignWidget, EventReceiver
{
	SingleChangerWidget s;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	bool b;
	

	public static congrats create(AlignWidget app) {
		var v = new congrats();
		v.app = app;
		return(v);	
	}
	public override void initialize() {
		base.initialize();
			
		add_align(-1.0, -1.0, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("congrats"));
		vb.add_vbox(0, ButtonWidget.instance().set_text("OK").set_event("ok"));	

		IFDEF("target_android") {
		AudioPlayer.play(AudioClip.for_resource("cong"));
		}	
		ELSE {
			Log.message("music");
		}
	}	
	public void on_event(Object o) {
	if(o!=null)
	{
		if(o is String)
			{
				var i = o as String;
				if(i.equals("ok"))
				{
					s.show(this, menuWidget.create(AlignWidget.instance()), CrossFadeTransition.instance());
				}	
			}
		}
	}		
}
