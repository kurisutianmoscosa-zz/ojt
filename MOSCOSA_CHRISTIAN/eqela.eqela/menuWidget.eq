class menuWidget : AlignWidget, EventReceiver
{

	SingleChangerWidget s;
	StackChangerWidget changer;
	StackChangerWidget sl;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	DialogWidget ui;
	
	
	
	public static menuWidget create(AlignWidget app) {
		var v = new menuWidget();
		v.app = app;
		return(v);
		}

	
	public override void initialize() {
		base.initialize();
	
		add_align(0, 0, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("bg"));
		vb.add_vbox(0, ButtonWidget.instance().set_text("Number Quiz").set_event("number").set_font(Font.instance("3mm")));
		vb.add_vbox(0, ButtonWidget.instance().set_text("Shapes").set_event("shapes").set_font(Font.instance("3mm")));	
		vb.add_vbox(0, ButtonWidget.instance().set_text("Alphabet").set_event("alphabet").set_font(Font.instance("3mm")));	
		}
	public void on_event(Object o) {
	if(o!=null)
	{
		if(o is String)
			{
				var i = o as String;
				if(i.equals("number"))
				{
					s.show(this, letter.create(AlignWidget.instance()), CrossFadeTransition.instance());
				}
				else if(i.equals("shapes"))
				{
					s.show(this, shapes.create(AlignWidget.instance()), CrossFadeTransition.instance());
				}
				else if(i.equals("alphabet"))
				{
					s.show(this, alphabet.create(AlignWidget.instance()), CrossFadeTransition.instance());
				}
				else if(i.equals("yes"))
				{
					SystemEnvironment.instance().terminate(0);
				}		
			}				
		}	
	}

	public override bool on_key_press(KeyEvent e) {
		String a;
		a = e.get_name();
		if(a.equals("back") || a.equals("escape")) {
			Popup.widget(get_engine(), ui = DialogWidget.yesno("Are you sure you want to exit?", "Notification!", "yes", null).set_listener(this));
		}
		return(true);
	}
}
	

