package com.example.easyabc;


import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.media.MediaPlayer;
import android.os.Bundle;



	public class ThirdActivity extends Activity {

	MediaPlayer b;			
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.activity_third);
			}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.third, menu);
		return true;
			}
			
		
		
			public void b1(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num1);
				b.start(); 	
				}
			public void b2(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num2);
				b.start(); 	
				}
			public void b3(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num3);
				b.start(); 	
				}
			public void b4(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num4);
				b.start(); 	
				}
			public void b5(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num5);
				b.start(); 	
				}
			public void b6(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num6);
				b.start(); 	
				}
			public void b7(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num7);
				b.start(); 	
				}
			public void b8(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num8);
				b.start(); 	
				}
			public void b9(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.num9);
				b.start(); 	
				}
			

			public void quiz(View v) {
				b = MediaPlayer.create(ThirdActivity.this, R.raw.welcome);
				b.start(); 
				Intent desk = new Intent(this, NumberQuiz.class );
				this.startActivity(desk);
				ThirdActivity.this.finish();
				}
			
			@Override
			public void onPause(){
				super.onPause();
				b.stop();
												
	}						
}

	

	
	

