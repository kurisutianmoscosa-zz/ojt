package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class NumberQuiz2 extends Activity {
	
	MediaPlayer two;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_number_quiz2);
	}

	
	public void fail(View v) {
		two = MediaPlayer.create(NumberQuiz2.this, R.raw.fail);
		two.start(); 	
		}
	
	public void win(View v) {
		two = MediaPlayer.create(NumberQuiz2.this, R.raw.correct);
		two.start(); 	
		Intent desk = new Intent(this, NumberQuiz3.class );
		this.startActivity(desk);
		NumberQuiz2.this.finish();
	}		

	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.number_quiz2, menu);
		return true;
	}

}
