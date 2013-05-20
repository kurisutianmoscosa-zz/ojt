class letter : AlignWidget, EventReceiver
{
	SingleChangerWidget s;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	String c;
	String x;
	ButtonWidget a;
	LabelWidget y;
	ButtonWidget bw;
	TextInputWidget tw;	

	int timer = 15;

	public static letter create(AlignWidget app) {
		var v = new letter();
		v.app = app;
		return(v);
	}
	public override void initialize() {
		base.initialize();
	
		animate(1000000);

		add_align(0, 0, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("sun"));
		//vb.add_vbox(0, ButtonWidget.instance().set_text("HELLO"));
		//add_align(-1, 1, ButtonWidget.instance().set_text("Back").set_event("back"));


		//REVISIONS
		add_align(0, -0.8, y= LabelWidget.instance().set_text("Quiz#1").set_color(Color.instance("#000000")).set_font(Font.instance("10mm")));
		add_align(0, -0.2, y= LabelWidget.instance().set_text("5 + 4 = ?").set_color(Color.instance("#000000")).set_font(Font.instance("7mm")));
		vb.add(tw = TextInputWidget.instance().set_text(""));
		add_align(0, 0.4, bw= ButtonWidget.instance().set_text("OK").set_event(this));
		
		//Popup.widget(get_engine(),TextInputDialogWidget.instance("Quiz #1","5 + 4",null,"Put your answer here",null, this));



		add_align(0.8, -1,  y= LabelWidget.for_string("".append(String.for_integer(timer))).set_color(Color.instance("#000000")).set_font(Font.instance("5mm")));

		
	}
		public void on_event(Object o) {
			if(o!=null) {
				if (o is TextInputResult) {	 

				var text = (o as TextInputResult).get_text();
				if("9".equals(text)){
					Popup.widget(get_engine(),DialogWidget.message("You Got it Correct!","Congratulations!", "okay2",true).set_listener(this));					
				}	

				else {
					c = "You are wrong!";			
					Popup.widget(get_engine(),TextInputDialogWidget.instance("Quiz #1","5 + 4",null,"Put your answer here",null, this));
					}	 
				}
				if(o is String) {
					var i = o as String;  
				
				//if(i.equals("back")) {
					//s.show(this, menuWidget.create(AlignWidget.instance()), CrossFadeTransition.instance());
				//}
				if(i.equals("okay")) {
					Popup.widget(get_engine(),TextInputDialogWidget.instance("Quiz #1","5 + 4",null,"Put your answer here",null, this));	
					timer = 15;
				}
				else if(i.equals("okay2")) {
					s.show(this, letter2.create(AlignWidget.instance()), CrossFadeTransition.instance());			
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

