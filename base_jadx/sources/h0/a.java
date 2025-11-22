package h0;

import android.content.res.AssetManager;
import android.graphics.drawable.Drawable;
import android.view.View;
import i0.i;
import java.util.HashMap;
import p0.c;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public final AssetManager f6780d;

    /* renamed from: a, reason: collision with root package name */
    public final i<String> f6777a = new i<>();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f6778b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6779c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final String f6781e = ".ttf";

    public a(Drawable.Callback callback) {
        AssetManager assets;
        if (callback instanceof View) {
            assets = ((View) callback).getContext().getAssets();
        } else {
            c.b("LottieDrawable must be inside of a view for images to work.");
            assets = null;
        }
        this.f6780d = assets;
    }
}
