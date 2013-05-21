class shapes4 : AlignWidget, EventReceiver
{
	SingleChangerWidget s;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	LabelWidget y;
	int timer = 10;
	

	public static shapes4 create(AlignWidget app) {
		var v = new shapes4();
		v.app = app;
		return(v);	
	}

	public override void initialize() {
		base.initialize();
		
		animate(1000000);
	
		add_align(-1, 1, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("bg2"));
		add_align(0.35, -0.55, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("heart"),80,60)).set_event("heart"));
		add_align(-0.35, -0.55, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("diamond"),57,57)).set_event("dia"));
		add_align(0, -0.55, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("star"),57,56)).set_event("str"));

		//LABELS
		
		add_align(0.65, -0.60, LabelWidget.instance().set_text("HEART").set_color(Color.instance("#000000")));
		add_align(-0.65, -0.60, LabelWidget.instance().set_text("DIAMOND").set_color(Color.instance("#000000")));
		add_align(0, -0.64, LabelWidget.instance().set_text("STAR").set_color(Color.instance("#000000")));

		add_align(0.3, -1, y= LabelWidget.instance().set_text("Time:").set_color(Color.instance("#000000")).set_font(Font.instance("5mm")));
		add_align(0.6, -1,  y= LabelWidget.for_string("".append(String.for_integer(timer))).set_color(Color.instance("#000000")).set_font(Font.instance("5mm")));


		add_align(0, 0, ImageButtonWidget.instance().set_image(Image.resize(Image.icon("heart"),57,56))); //CORRECT!
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
				else if(i.equals("dia"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("sorry"));
					}
					Popup.widget(get_engine(),DialogWidget.message("You clicked the wrong shape!","Oh no!", null));
				}
				else if(i.equals("str"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("sorry"));
					}
					Popup.widget(get_engine(),DialogWidget.message("You clicked the wrong shape!","Oh no!", null));
				}
				else if(i.equals("heart")) //CORRECT!
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("nice"));
					}
					Popup.widget(get_engine(),DialogWidget.message("You clicked the correct shape!","Congratulations!", "okay3",true).set_listener(this));
				}
				else if(i.equals("okay3")) {
					s.show(this, shapes5.create(AlignWidget.instance()), CrossFadeTransition.instance());			
				}				
			}
		}
		
	}
	public void tick() {
		if(timer != 0) {
			timer = timer - 1;
			y.set_text("".append(String.for_integer(timer)));
		}
		else if(timer == 0){
			animate_stop();
			Popup.widget(get_engine(),DialogWidget.message("TRY AGAIN!","THANK YOU!"));
			Popup.widget(get_engine(),DialogWidget.message("YOU ONLY GOT TWO(4) POINTS", "back",true).set_listener(this));		
		}
		invalidate();
	}
}

	

