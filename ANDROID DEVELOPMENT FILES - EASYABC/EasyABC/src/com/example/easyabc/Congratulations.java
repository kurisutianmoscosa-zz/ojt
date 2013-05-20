package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class Congratulations extends Activity {

	MediaPlayer wew;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_congratulations);
	}
	
	public void congrats(View v) {
		wew = MediaPlayer.create(Congratulations.this, R.raw.end);
		wew.start(); 
		Intent desk = new Intent(this, MainActivity.class );
		this.startActivity(desk);
		Congratulations.this.finish();
		}
	
	@Override
	public void onPause(){
		super.onPause();
		wew.stop();
	
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.congratulations, menu);
		return true;
	}

}
