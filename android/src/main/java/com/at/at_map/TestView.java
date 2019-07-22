package com.at.at_map;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.Map;

import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;

public class TestView implements PlatformView {

    MethodChannel channel;
    Context mContext;
    Map<String,Object> param;

    public TestView(Context context, Map<String,Object> param, MethodChannel channel){
        this.channel = channel;
        this.mContext = context;
        this.param = param;
    }

    @Override
    public View getView() {
        TextView tv = new TextView(mContext);
        tv.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        tv.setText(param.get("msg").toString());
        tv.setGravity(Gravity.CENTER);
        return tv;
    }

    @Override
    public void dispose() {

    }
}
