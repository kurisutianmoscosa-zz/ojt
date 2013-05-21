class shapes6 : AlignWidget, EventReceiver
{
	SingleChangerWidget s;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	

	public static shapes6 create(AlignWidget app) {
		var v = new shapes6();
		v.app = app;
		return(v);	
	}

	public override void initialize() {
		base.initialize();
	
		add_align(-1, 1, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("bg2"));
		add_align(0.35, -0.55, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("pentagon"),80,60)).set_event("pen"));
		add_align(-0.35, -0.55, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("diamond"),57,57)).set_event("dia"));
		add_align(0, -0.55, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("triangle"),57,56)).set_event("tri"));


		//LABELS
		
		add_align(0.65, -0.60, LabelWidget.instance().set_text("RECTANGLE").set_color(Color.instance("#000000")));
		add_align(-0.65, -0.60, LabelWidget.instance().set_text("DIAMOND").set_color(Color.instance("#000000")));
		add_align(0, -0.64, LabelWidget.instance().set_text("TRIANGLE").set_color(Color.instance("#000000")));


		add_align(0, 0, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("pentagon"),57,56))); //CORRECT!
		vb.add_vbox(0, ButtonWidget.instance().set_text("Back").set_event("back"));
		
	}
			
	public void on_event(Object o) {
	if(o!=null)
	{
		if(o is String)
			{
				var i = o as String;
				if(i.equals("back"))
				{
					s.show(this, menuWidget.create(AlignWidget.instance()), CrossFadeTransition.instance());
				}
				//CORRECT!
				else if(i.equals("tri"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("sorry"));
					}
					Popup.widget(get_engine(),DialogWidget.message("You clicked the wrong shape!","Oh no!", null));
				}
				else if(i.equals("dia"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("sorry"));
					}
					Popup.widget(get_engine(),DialogWidget.message("You clicked the wrong shape!","Oh no!", null));
				}
				else if(i.equals("pen")) //CORRECT!
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("nice"));
					}
					Popup.widget(get_engine(),DialogWidget.message("You clicked the correct shape!","Congratulations!", "okay3",true).set_listener(this));
				}
				else if(i.equals("okay3")) {
					s.show(this, congrats.create(AlignWidget.instance()), CrossFadeTransition.instance());			
				}				
			}
		}	
	}
}	

