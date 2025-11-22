package c5;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class o6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f1813a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1814b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1815c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y7 f1816d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t6 f1817e;

    public o6(t6 t6Var, AtomicReference atomicReference, String str, String str2, y7 y7Var) {
        this.f1817e = t6Var;
        this.f1813a = atomicReference;
        this.f1814b = str;
        this.f1815c = str2;
        this.f1816d = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t6 t6Var;
        v2 v2Var;
        AtomicReference atomicReference;
        List<b> listZ;
        synchronized (this.f1813a) {
            try {
                try {
                    t6Var = this.f1817e;
                    v2Var = t6Var.f2003d;
                } catch (RemoteException e10) {
                    e3 e3Var = ((i4) this.f1817e.f2115a).f1635j;
                    i4.e(e3Var);
                    e3Var.f.d("(legacy) Failed to get conditional properties; remote exception", null, this.f1814b, e10);
                    this.f1813a.set(Collections.emptyList());
                }
                if (v2Var == null) {
                    e3 e3Var2 = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.d("(legacy) Failed to get conditional properties; not connected to service", null, this.f1814b, this.f1815c);
                    this.f1813a.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    r3.r.i(this.f1816d);
                    atomicReference = this.f1813a;
                    listZ = v2Var.b0(this.f1814b, this.f1815c, this.f1816d);
                } else {
                    atomicReference = this.f1813a;
                    listZ = v2Var.z(null, this.f1814b, this.f1815c);
                }
                atomicReference.set(listZ);
                this.f1817e.s();
                this.f1813a.notify();
            } finally {
                this.f1813a.notify();
            }
        }
    }
}
