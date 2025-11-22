package c5;

import android.os.Looper;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class e7 extends r3 {

    /* renamed from: c, reason: collision with root package name */
    public com.google.android.gms.internal.measurement.q0 f1522c;

    /* renamed from: d, reason: collision with root package name */
    public final d7 f1523d;

    /* renamed from: e, reason: collision with root package name */
    public final c7 f1524e;
    public final a7 f;

    public e7(i4 i4Var) {
        super(i4Var);
        this.f1523d = new d7(this);
        this.f1524e = new c7(this);
        this.f = new a7(this);
    }

    @Override // c5.r3
    public final boolean e() {
        return false;
    }

    @WorkerThread
    public final void g() {
        b();
        if (this.f1522c == null) {
            this.f1522c = new com.google.android.gms.internal.measurement.q0(Looper.getMainLooper());
        }
    }
}
