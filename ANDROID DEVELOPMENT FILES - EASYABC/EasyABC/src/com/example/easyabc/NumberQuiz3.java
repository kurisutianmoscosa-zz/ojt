package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class NumberQuiz3 extends Activity {
	
	MediaPlayer three;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_number_quiz3);
	}

	
	public void fail(View v) {
		three = MediaPlayer.create(NumberQuiz3.this, R.raw.fail);
		three.start(); 	
		}
	
	public void win(View v) {
		three = MediaPlayer.create(NumberQuiz3.this, R.raw.correct);
		three.start(); 	
		Intent desk = new Intent(this, Congratulations.class );
		this.startActivity(desk);
		NumberQuiz3.this.finish();
	}		
	
	
	
	
	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.number_quiz3, menu);
		return true;
	}

}
