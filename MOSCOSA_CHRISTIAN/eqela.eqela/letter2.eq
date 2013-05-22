class letter2 : AlignWidget, EventReceiver
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

	int timer = 10;

	public static letter2 create(AlignWidget app) {
		var v = new letter2();
		v.app = app;
		return(v);
	}
	public override void initialize() {
		base.initialize();
	
		animate(1000000);

		add_align(0, 0, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("sun"));
		add_align(-1, 1, ButtonWidget.instance().set_text("Back").set_event("main"));
		//REVISIONS
		add_align(0, -0.8, y= LabelWidget.instance().set_text("Quiz#2").set_color(Color.instance("#000000")).set_font(Font.instance("10mm")));
		add_align(0, -0.2, y= LabelWidget.instance().set_text("10 + 1 = ?").set_color(Color.instance("#000000")).set_font(Font.instance("7mm")));
		vb.add(tw = TextInputWidget.instance());
		add_align(0, 0.4, bw= ButtonWidget.instance().set_text("OK").set_event("answer"));
		
		add_align(0.3, -1, y= LabelWidget.instance().set_text("Time:").set_color(Color.instance("#000000")).set_font(Font.instance("5mm")));
		add_align(0.6, -1,  y= LabelWidget.for_string("".append(String.for_integer(timer))).set_color(Color.instance("#000000")).set_font(Font.instance("5mm")));	
	}
		public void on_event(Object o) {
			if(o!=null) {		
				if(o is String) {
					var i = o as String;  
					if(i.equals("main")) { //BACK
						s.show(this, menuWidget.create(AlignWidget.instance()), CrossFadeTransition.instance());
					}
					else if(i.equals("okay2")) {  //NEW WINDOW
						s.show(this, letter3.create(AlignWidget.instance()), CrossFadeTransition.instance());			
					}				
					else if(i.equals("answer")) {
						if(tw.get_text().equals("11")) {
							animate_stop();				
							Popup.widget(get_engine(),DialogWidget.message("You Got it Correct!","Congratulations!", "okay2",true).set_listener(this));	
						}
						else {			
							Popup.widget(get_engine(),DialogWidget.message("You are wrong", "Attention"));
						}
						
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
			Popup.widget(get_engine(),DialogWidget.message("TIMES UP!","ATTENTION!", "main",true).set_listener(this));		
		}
		invalidate();
	}
}	

