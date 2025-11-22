package h0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import d0.n;
import java.util.HashMap;
import java.util.Map;
import p0.c;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final Object f6782d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Context f6783a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6784b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, n> f6785c;

    public b(Drawable.Callback callback, String str, Map map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            str = str.concat("/");
        }
        this.f6784b = str;
        if (callback instanceof View) {
            this.f6783a = ((View) callback).getContext();
            this.f6785c = map;
        } else {
            c.b("LottieDrawable must be inside of a view for images to work.");
            this.f6785c = new HashMap();
            this.f6783a = null;
        }
    }
}
