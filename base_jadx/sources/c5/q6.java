package c5;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class q6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f1882a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1883b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1884c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y7 f1885d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f1886e;
    public final /* synthetic */ t6 f;

    public q6(t6 t6Var, AtomicReference atomicReference, String str, String str2, y7 y7Var, boolean z10) {
        this.f = t6Var;
        this.f1882a = atomicReference;
        this.f1883b = str;
        this.f1884c = str2;
        this.f1885d = y7Var;
        this.f1886e = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t6 t6Var;
        v2 v2Var;
        AtomicReference atomicReference;
        List<r7> listQ;
        synchronized (this.f1882a) {
            try {
                try {
                    t6Var = this.f;
                    v2Var = t6Var.f2003d;
                } catch (RemoteException e10) {
                    e3 e3Var = ((i4) this.f.f2115a).f1635j;
                    i4.e(e3Var);
                    e3Var.f.d("(legacy) Failed to get user properties; remote exception", null, this.f1883b, e10);
                    this.f1882a.set(Collections.emptyList());
                }
                if (v2Var == null) {
                    e3 e3Var2 = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.d("(legacy) Failed to get user properties; not connected to service", null, this.f1883b, this.f1884c);
                    this.f1882a.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    r3.r.i(this.f1885d);
                    atomicReference = this.f1882a;
                    listQ = v2Var.S(this.f1883b, this.f1884c, this.f1886e, this.f1885d);
                } else {
                    atomicReference = this.f1882a;
                    listQ = v2Var.q(null, this.f1883b, this.f1884c, this.f1886e);
                }
                atomicReference.set(listQ);
                this.f.s();
                this.f1882a.notify();
            } finally {
                this.f1882a.notify();
            }
        }
    }
}
