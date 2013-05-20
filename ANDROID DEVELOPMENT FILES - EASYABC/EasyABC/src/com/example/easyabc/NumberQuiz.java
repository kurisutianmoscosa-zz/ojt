package com.example.easyabc;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class NumberQuiz extends Activity {
	
	MediaPlayer q;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_number_quiz);				
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.number_quiz, menu);
		return true;	
			}
		
		
		public void fail(View v) {
			q = MediaPlayer.create(NumberQuiz.this, R.raw.fail);
			q.start(); 	
			}
		
		public void win(View v) {
			q = MediaPlayer.create(NumberQuiz.this, R.raw.correct);
			q.start(); 	
			Intent desk = new Intent(this, NumberQuiz2.class );
			this.startActivity(desk);
			NumberQuiz.this.finish();
		}		
}
