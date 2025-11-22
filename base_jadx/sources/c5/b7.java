package c5;

import android.os.SystemClock;
import androidx.annotation.WorkerThread;

/* loaded from: classes.dex */
public final class b7 extends l {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c7 f1424e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b7(c7 c7Var, i4 i4Var) {
        super(i4Var);
        this.f1424e = c7Var;
    }

    @Override // c5.l
    @WorkerThread
    public final void b() {
        c7 c7Var = this.f1424e;
        c7Var.f1464d.b();
        e7 e7Var = c7Var.f1464d;
        ((i4) e7Var.f2115a).f1640p.getClass();
        c7Var.a(false, false, SystemClock.elapsedRealtime());
        z4 z4Var = e7Var.f2115a;
        u1 u1VarG = ((i4) z4Var).g();
        ((i4) z4Var).f1640p.getClass();
        u1VarG.e(SystemClock.elapsedRealtime());
    }
}
