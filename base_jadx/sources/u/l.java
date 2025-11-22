package u;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import o.f;

/* loaded from: classes.dex */
public final class l implements ComponentCallbacks2, f.a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17744a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference<e.h> f17745b;

    /* renamed from: c, reason: collision with root package name */
    public final o.f f17746c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f17747d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f17748e;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(e.h r2, android.content.Context r3, boolean r4) {
        /*
            r1 = this;
            r1.<init>()
            r1.f17744a = r3
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r0.<init>(r2)
            r1.f17745b = r0
            r0 = 0
            if (r4 == 0) goto L3c
            r2.getClass()
            java.lang.Class<android.net.ConnectivityManager> r2 = android.net.ConnectivityManager.class
            java.lang.Object r2 = androidx.core.content.ContextCompat.getSystemService(r3, r2)
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2
            if (r2 == 0) goto L36
            java.lang.String r4 = "android.permission.ACCESS_NETWORK_STATE"
            int r3 = androidx.core.content.ContextCompat.checkSelfPermission(r3, r4)
            if (r3 != 0) goto L26
            r3 = 1
            goto L27
        L26:
            r3 = 0
        L27:
            if (r3 != 0) goto L2a
            goto L36
        L2a:
            o.g r3 = new o.g     // Catch: java.lang.Exception -> L30
            r3.<init>(r2, r1)     // Catch: java.lang.Exception -> L30
            goto L41
        L30:
            a2.b r3 = new a2.b
            r3.<init>()
            goto L41
        L36:
            a2.b r3 = new a2.b
            r3.<init>()
            goto L41
        L3c:
            a2.b r3 = new a2.b
            r3.<init>()
        L41:
            r1.f17746c = r3
            boolean r2 = r3.b()
            r1.f17747d = r2
            java.util.concurrent.atomic.AtomicBoolean r2 = new java.util.concurrent.atomic.AtomicBoolean
            r2.<init>(r0)
            r1.f17748e = r2
            android.content.Context r2 = r1.f17744a
            r2.registerComponentCallbacks(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: u.l.<init>(e.h, android.content.Context, boolean):void");
    }

    @Override // o.f.a
    public final void a(boolean z10) {
        l9.m mVar;
        if (this.f17745b.get() == null) {
            mVar = null;
        } else {
            this.f17747d = z10;
            mVar = l9.m.f9594a;
        }
        if (mVar == null) {
            b();
        }
    }

    public final void b() {
        if (this.f17748e.getAndSet(true)) {
            return;
        }
        this.f17744a.unregisterComponentCallbacks(this);
        this.f17746c.shutdown();
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        if (this.f17745b.get() == null) {
            b();
            l9.m mVar = l9.m.f9594a;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int r22) {
        l9.m mVar;
        n.b value;
        e.h hVar = this.f17745b.get();
        if (hVar == null) {
            mVar = null;
        } else {
            l9.e<n.b> eVar = hVar.f4994b;
            if (eVar != null && (value = eVar.getValue()) != null) {
                value.a(r22);
            }
            mVar = l9.m.f9594a;
        }
        if (mVar == null) {
            b();
        }
    }
}
