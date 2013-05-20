package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class FourthActivity extends Activity {
	
	MediaPlayer c;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_fourth);
	
			}
		
		public void square(View v) {
			c = MediaPlayer.create(FourthActivity.this, R.raw.square);
			c.start(); 	
			}
		
		public void circle(View v) {
			c = MediaPlayer.create(FourthActivity.this, R.raw.circle);
			c.start(); 	
			}
		
		public void answer(View v) {
			c = MediaPlayer.create(FourthActivity.this, R.raw.star);
			c.start(); 	
			Intent desk = new Intent(this, FiftActivity.class );
			this.startActivity(desk);
			FourthActivity.this.finish();
			
			}				

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.fourth, menu);
		return true;
	}

}
