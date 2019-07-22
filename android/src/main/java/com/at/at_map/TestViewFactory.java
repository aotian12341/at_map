package com.at.at_map;

import android.content.Context;

import java.util.Map;

import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class TestViewFactory extends PlatformViewFactory {

    MethodChannel channel;
    public TestViewFactory(MessageCodec<Object> createArgsCodec,MethodChannel channel) {
        super(createArgsCodec);
        this.channel = channel;
    }

    @Override
    public PlatformView create(Context context, int i, Object o) {
        Map<String,Object> param = (Map<String,Object>)o;
        return new TestView(context,param,channel);
    }

}
