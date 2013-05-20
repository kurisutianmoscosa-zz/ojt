class letter3 : AlignWidget, EventReceiver
{
	SingleChangerWidget s;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	String c;
	String x;
	ButtonWidget a;
	LabelWidget y;
	int timer = 15;

	public static letter3 create(AlignWidget app) {
		var v = new letter3();
		v.app = app;
		return(v);
	}

	public override void initialize() {
		base.initialize();
		animate(1000000);

		add_align(0, 0, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("sun"));
		//vb.add_vbox(0, ButtonWidget.instance().set_text("HELLO"));
		add_align(-1, 1, ButtonWidget.instance().set_text("Back").set_event("back"));
		Popup.widget(get_engine(),TextInputDialogWidget.instance("Quiz #3","0 + 6  = ?",null,"Put your answer here",null,this));
		add_align(1, -1,  y= LabelWidget.for_string("".append(String.for_integer(timer))).set_color(Color.instance("#000000")).set_font(Font.instance("3mm")));
	}
		public void on_event(Object o) {
			if(o!=null) {
				if (o is TextInputResult) {	 
						var text = (o as TextInputResult).get_text();
						if("6".equals(text)){
						//c = "You are correct!";	
						Popup.widget(get_engine(),DialogWidget.message("You Got it Correct!","Congratulations!", "okay2",true).set_listener(this));				
						
						}	
						
					else 	{
						c = "You are wrong!";			
						Popup.widget(get_engine(),TextInputDialogWidget.instance("Quiz #3","0 + 6  = ?",null,"Put your answer here",null,this));
					}	 
					}
					if(o is String) {

					var i = o as String;
						if(i.equals("back")) {
						s.show(this, menuWidget.create(AlignWidget.instance()), CrossFadeTransition.instance());
					}
					else if(i.equals("okay")){
						Popup.widget(get_engine(),TextInputDialogWidget.instance("Quiz #3","0 + 6  = ?",null,"Put your answer here",null,this));	
						timer = 15;
					}
				
					else if(i.equals("okay2")) {
						s.show(this, letter4.create(AlignWidget.instance()), CrossFadeTransition.instance());			
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
			Popup.widget(get_engine(),DialogWidget.message("Time's Up!",null, "okay",true).set_listener(this));		
		}
		invalidate();
	}
}

