package com.domo.butterknifedemoapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import butterknife.BindView;
import butterknife.ButterKnife;

public class MainActivity extends AppCompatActivity {

    @BindView(R.id.butterknife_text_activity_main)
    public TextView butterKnifeMsg;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ButterKnife.bind(this);

        if(butterKnifeMsg != null)
            butterKnifeMsg.setText("ButterKnife is working fine :)");
    }
}
