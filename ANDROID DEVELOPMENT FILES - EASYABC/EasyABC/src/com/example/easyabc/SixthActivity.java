package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class SixthActivity extends Activity {
	
	
	MediaPlayer star;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_sixth);

			}
	
	
	public void star(View v) {
		star = MediaPlayer.create(SixthActivity.this, R.raw.shapesound);
		star.start(); 	
		}

	public void sorry(View v) {
		star = MediaPlayer.create(SixthActivity.this, R.raw.sorry);
		star.start(); 	
		}
		
	public void congrats(View v) {
		star = MediaPlayer.create(SixthActivity.this, R.raw.congrats);
		star.start(); 
		Intent desk = new Intent(this, SeventhActivity.class );
		this.startActivity(desk);
		SixthActivity.this.finish();
		}	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.sixth, menu);
		return true;
	}

}
