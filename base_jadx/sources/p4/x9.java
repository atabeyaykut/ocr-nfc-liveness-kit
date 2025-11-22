package p4;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.atomic.AtomicLong;
import r3.w;

/* loaded from: classes.dex */
public final class x9 {

    /* renamed from: a, reason: collision with root package name */
    public final t3.c f12770a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicLong f12771b = new AtomicLong(-1);

    @VisibleForTesting
    public x9(Context context) {
        r3.w wVar = r3.w.f14054b;
        w.a aVar = new w.a();
        aVar.f14056a = "mlkit:vision";
        this.f12770a = new t3.c(context, new r3.w(aVar.f14056a));
    }
}
