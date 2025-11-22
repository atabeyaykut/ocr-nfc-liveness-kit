package c5;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import c5.w6;

/* loaded from: classes.dex */
public final class x6<T extends Context & w6> {

    /* renamed from: a, reason: collision with root package name */
    public final T f2121a;

    public x6(T t10) {
        r3.r.i(t10);
        this.f2121a = t10;
    }

    @MainThread
    public final void a(Intent intent) {
        if (intent == null) {
            c().f.a("onRebind called with null intent");
        } else {
            c().f1513p.b(intent.getAction(), "onRebind called. action");
        }
    }

    @MainThread
    public final void b(Intent intent) {
        if (intent == null) {
            c().f.a("onUnbind called with null intent");
        } else {
            c().f1513p.b(intent.getAction(), "onUnbind called for intent. action");
        }
    }

    public final e3 c() {
        e3 e3Var = i4.r(this.f2121a, null, null).f1635j;
        i4.e(e3Var);
        return e3Var;
    }
}
