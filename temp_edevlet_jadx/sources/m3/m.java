package m3;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
public final class m extends h4.i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9964a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f9965b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(e eVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f9965b = eVar;
        this.f9964a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int r72 = message.what;
        boolean z10 = true;
        if (r72 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + r72);
            return;
        }
        int r73 = f.f9945a;
        e eVar = this.f9965b;
        Context context = this.f9964a;
        int r74 = eVar.c(r73, context);
        AtomicBoolean atomicBoolean = j.f9954a;
        if (r74 != 1 && r74 != 2 && r74 != 3 && r74 != 9) {
            z10 = false;
        }
        if (z10) {
            Intent intentB = eVar.b(context, r74, "n");
            eVar.g(context, r74, intentB == null ? null : PendingIntent.getActivity(context, 0, intentB, j4.d.f8000a | 134217728));
        }
    }
}
