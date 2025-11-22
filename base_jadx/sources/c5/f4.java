package c5;

import androidx.annotation.NonNull;
import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public final class f4<V> extends FutureTask<V> implements Comparable<f4<V>> {

    /* renamed from: a, reason: collision with root package name */
    public final long f1540a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1541b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1542c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h4 f1543d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f4(h4 h4Var, Runnable runnable, boolean z10, String str) {
        super(runnable, null);
        this.f1543d = h4Var;
        long andIncrement = h4.f1595l.getAndIncrement();
        this.f1540a = andIncrement;
        this.f1542c = str;
        this.f1541b = z10;
        if (andIncrement == LocationRequestCompat.PASSIVE_INTERVAL) {
            e3 e3Var = ((i4) h4Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(@NonNull Object obj) {
        f4 f4Var = (f4) obj;
        boolean z10 = f4Var.f1541b;
        boolean z11 = this.f1541b;
        if (z11 != z10) {
            return !z11 ? 1 : -1;
        }
        long j10 = f4Var.f1540a;
        long j11 = this.f1540a;
        if (j11 < j10) {
            return -1;
        }
        if (j11 > j10) {
            return 1;
        }
        e3 e3Var = ((i4) this.f1543d.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1506g.b(Long.valueOf(j11), "Two tasks share the same index. index");
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th2) {
        e3 e3Var = ((i4) this.f1543d.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f.b(th2, this.f1542c);
        super.setException(th2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f4(h4 h4Var, Callable callable, boolean z10) {
        super(callable);
        this.f1543d = h4Var;
        long andIncrement = h4.f1595l.getAndIncrement();
        this.f1540a = andIncrement;
        this.f1542c = "Task exception on worker thread";
        this.f1541b = z10;
        if (andIncrement == LocationRequestCompat.PASSIVE_INTERVAL) {
            e3 e3Var = ((i4) h4Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Tasks index overflow");
        }
    }
}
