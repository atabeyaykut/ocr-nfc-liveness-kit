package h3;

import android.app.Activity;
import android.os.Looper;
import androidx.annotation.NonNull;
import c5.v;
import n3.a;
import n3.c;
import r3.r;

/* loaded from: classes.dex */
public abstract class a extends c<a.c.C0198c> {

    /* renamed from: k, reason: collision with root package name */
    public static final n3.a<a.c.C0198c> f6831k = new n3.a<>("SmsRetriever.API", new b(), new a.f());

    public a(@NonNull Activity activity) {
        v vVar = new v();
        Looper mainLooper = activity.getMainLooper();
        r.j(mainLooper, "Looper must not be null.");
        super(activity, (n3.a) f6831k, (a.c.C0198c) null, new c.a(vVar, mainLooper));
    }
}
