package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class FiftActivity extends Activity {
	
	MediaPlayer c;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_fifth);
	
			}
		
		public void triangle(View v) {
			c = MediaPlayer.create(FiftActivity.this, R.raw.triangle);
			c.start(); 	
			}
		
		public void star(View v) {
			c = MediaPlayer.create(FiftActivity.this, R.raw.star);
			c.start(); 	
			}
		
		public void answer(View v) {
			c = MediaPlayer.create(FiftActivity.this, R.raw.circle);
			c.start(); 	
			Intent desk = new Intent(this, SixthActivity.class );
			this.startActivity(desk);
			}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.fourth, menu);
		return true;
	}

}
