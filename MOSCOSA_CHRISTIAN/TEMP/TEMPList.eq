class SelectionList : VScrollBoxWidget, EventReceiver
{
	class Data : Countable, IndexedDataSource
	{
		Array items;

		public Data() {
			int n;
			items = Array.create();
			for(n=1; n<27; n++) {
				var str = "Item %d".printf().add(Primitive.for_integer(n)).to_string();
				items.add(SelectorItem.instance(str, "These are the Alphabets", null, str));
			}
		}

		public Object get_index(int n) {
			return(items.get_index(n));
		}

		public int count() {
			return(items.count());
		}
	}

	StackChangerWidget changer;

	public static SelectionList create(StackChangerWidget changer) {
		var v = new SelectionList();
		v.changer = changer;
		return(v);
	}

	public void on_event(Object o) {
		if(changer != null) {
			changer.push(DetailView.instance(changer, o as String));
		}
	}

	public void initialize() {
		base.initialize();
		set_background(CanvasWidget.instance().set_color(Color.instance("#0000CC")).set_color2(Color.instance("#6600CC")));
		add_vbox(1, SelectorWidget.instance()
			.set_settings(new SelectorWidgetSettings().set_show_desc(true).set_click_event(true).set_click_select(false))
			.set_data(new Data()));
	}
}
