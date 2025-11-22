package r3;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class n0 extends w0 {

    /* renamed from: d, reason: collision with root package name */
    public final int f14023d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Bundle f14024e;
    public final /* synthetic */ c f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public n0(c cVar, @Nullable int r32, Bundle bundle) {
        super(cVar, Boolean.TRUE);
        this.f = cVar;
        this.f14023d = r32;
        this.f14024e = bundle;
    }

    @Override // r3.w0
    public final /* bridge */ /* synthetic */ void a() {
        m3.b bVar;
        c cVar = this.f;
        int r32 = this.f14023d;
        if (r32 != 0) {
            cVar.D(null, 1);
            Bundle bundle = this.f14024e;
            bVar = new m3.b(r32, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null);
        } else {
            if (f()) {
                return;
            }
            cVar.D(null, 1);
            bVar = new m3.b(8, null);
        }
        e(bVar);
    }

    @Override // r3.w0
    public final void b() {
    }

    public abstract void e(m3.b bVar);

    public abstract boolean f();
}
