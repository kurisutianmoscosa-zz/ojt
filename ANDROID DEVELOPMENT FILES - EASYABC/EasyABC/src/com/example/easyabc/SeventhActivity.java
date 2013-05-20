package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class SeventhActivity extends Activity {
	
	MediaPlayer rec;
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_seventh);		
				
			}


	
	public void rectangle(View v) {
		rec = MediaPlayer.create(SeventhActivity.this, R.raw.shapesound);
		rec.start(); 	
		}

	public void sorry(View v) {
		rec = MediaPlayer.create(SeventhActivity.this, R.raw.sorry);
		rec.start(); 	
		}
		
	public void congrats(View v) {
		rec = MediaPlayer.create(SeventhActivity.this, R.raw.congrats);
		rec.start(); 
		Intent desk = new Intent(this, Congratulations.class );
		this.startActivity(desk);
		SeventhActivity.this.finish();
		}
	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.seventh, menu);
		return true;
	}

}
