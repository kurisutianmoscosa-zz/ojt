class alphabet : AlignWidget, EventReceiver
{
	SingleChangerWidget s;
	VBoxWidget r;
	AlignWidget app;
	VBoxWidget vb;
	VScrollBoxWidget vs;
	ButtonWidget bw;

	public static alphabet create(AlignWidget app) {
		var v = new alphabet();
		v.app = app;
		return(v);	
	}
	public override void initialize() {
		base.initialize();
		add_align(0 , -1, vs = VScrollBoxWidget.instance());
		vs.add_vbox(0, vb = VBoxWidget.instance());
		set_background(ImageWidget.for_icon("sun"));	
		
		var grid = FixedGridWidget.instance(2,13);
		vs.add_vbox(0, grid);
		int i=0;
		int c;
		for(c=65;c<=90;c++) {
			i++;
			grid.add(ButtonWidget.instance().set_text(String.for_character(c)).set_event(String.for_integer(i)));
		}
		add_align(-1, 1, bw = ButtonWidget.instance().set_text("Back").set_event("back"));
		grid.set_width_request_override(px("40mm"));
		bw.set_width_request_override(px("10mm"));			
	}
			
	public void on_event(Object o) {
	if(o!=null)
	{
		if(o is String)
			{
			var tar = "target_android";
			
				var i = o as String;
				if(i.equals("back"))
				{
					s.show(this, menuWidget.create(AlignWidget.instance()), CrossFadeTransition.instance());
				}
				//POP UP LETTER NOTIF
				else if(i.equals("1"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("leta"));
					}
					Popup.widget(get_engine(),DialogWidget.message("A for ANDROID","The new Alphabet", null));
				}
				else if(i.equals("2"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letb"));
					}
					Popup.widget(get_engine(),DialogWidget.message("B for BLUETOOTH","The new Alphabet", null));
				}
				else if(i.equals("3"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letc"));
					}
					Popup.widget(get_engine(),DialogWidget.message("C for CHAT","The new Alphabet", null));
				}
				else if(i.equals("4")) 
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letd"));
					}
					Popup.widget(get_engine(),DialogWidget.message("D for DRUPAL","The new Alphabet", null));
				}
				else if(i.equals("5"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("lete"));
					}
					Popup.widget(get_engine(),DialogWidget.message("E for EMAIL","The new Alphabet", null));
				}
				else if(i.equals("6"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letf"));
					}
					Popup.widget(get_engine(),DialogWidget.message("F for FACEBOOK","The new Alphabet", null));
				}	
				else if(i.equals("7"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letg"));
					}
					Popup.widget(get_engine(),DialogWidget.message("G for GOOGLE","The new Alphabet", null));
				}
				else if(i.equals("8"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("leth"));
					}
					Popup.widget(get_engine(),DialogWidget.message("H for HEWLETT PACKARD","The new Alphabet", null));
				}
				else if(i.equals("9"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("leti"));
					}
					Popup.widget(get_engine(),DialogWidget.message("I for Iphone","The new Alphabet", null));
				}
				else if(i.equals("10"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letj"));
					}
					Popup.widget(get_engine(),DialogWidget.message("J for JAVA","The new Alphabet", null));
				}
				else if(i.equals("11"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letk"));
					}
					Popup.widget(get_engine(),DialogWidget.message("K for KINGSTON","The new Alphabet", null));
				}
				else if(i.equals("12"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letl"));
					}
					Popup.widget(get_engine(),DialogWidget.message("L for LAPTOP","The new Alphabet", null));
				}
			 	else if(i.equals("13"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letm"));
					}
					Popup.widget(get_engine(),DialogWidget.message("M for MESSAGER","The new Alphabet", null));
				}
				else if(i.equals("14"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letn"));
					}
					Popup.widget(get_engine(),DialogWidget.message("N for NETWORK","The new Alphabet", null));
				}
				else if(i.equals("15"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("leto"));
					}
					Popup.widget(get_engine(),DialogWidget.message("O for OPEN SOURCE","The new Alphabet", null));
				}
				else if(i.equals("16"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letp"));
					}
					Popup.widget(get_engine(),DialogWidget.message("P for PHP","The new Alphabet", null));
				}
				else if(i.equals("17"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letq"));
					}
					Popup.widget(get_engine(),DialogWidget.message("Q for QWERTY","The new Alphabet", null));
				}
				else if(i.equals("18"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letr"));
					}
					Popup.widget(get_engine(),DialogWidget.message("R for RAM","The new Alphabet", null));
				}
				else if(i.equals("19"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("lets"));
					}
					Popup.widget(get_engine(),DialogWidget.message("S for SMARTPHONE","The new Alphabet", null));
				}
				else if(i.equals("20"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("lett"));
					}
					Popup.widget(get_engine(),DialogWidget.message("T for TWITTER","The new Alphabet", null));
				}
				else if(i.equals("21"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letu"));
					}
					Popup.widget(get_engine(),DialogWidget.message("U for USB","The new Alphabet", null));
				}
				else if(i.equals("22"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letv"));
					}
					Popup.widget(get_engine(),DialogWidget.message("V for VIRTUALIZATION","The new Alphabet", null));
				}
				else if(i.equals("23"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letw"));
					}
					Popup.widget(get_engine(),DialogWidget.message("W for WEB SITE","The new Alphabet", null));
				}
				else if(i.equals("24"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letx"));
					}
					Popup.widget(get_engine(),DialogWidget.message("X for XP (WINDOWS XP)","The new Alphabet", null));
				}
				else if(i.equals("25"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("lety"));
					}
					Popup.widget(get_engine(),DialogWidget.message("Y for YOUTUBE","The new Alphabet", null));
				}
				else if(i.equals("26"))
				{
					IFDEF("target_android") {
						AudioPlayer.play(AudioClip.for_resource("letz"));
					}
					Popup.widget(get_engine(),DialogWidget.message("Z for ZIP","The new Alphabet", null));
				}	
			  
			}
		}
	}
}	

