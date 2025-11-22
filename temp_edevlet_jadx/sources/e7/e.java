package e7;

import androidx.annotation.GuardedBy;
import b7.l;
import c5.v;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: d, reason: collision with root package name */
    public static final long f5135d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e, reason: collision with root package name */
    public static final long f5136e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a, reason: collision with root package name */
    public final l f5137a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    public long f5138b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    public int f5139c;

    public e() {
        if (v.f2053g == null) {
            Pattern pattern = l.f1170c;
            v.f2053g = new v();
        }
        v vVar = v.f2053g;
        if (l.f1171d == null) {
            l.f1171d = new l(vVar);
        }
        this.f5137a = l.f1171d;
    }

    public final synchronized long a(int r72) {
        if (!(r72 == 429 || (r72 >= 500 && r72 < 600))) {
            return f5135d;
        }
        double dPow = Math.pow(2.0d, this.f5139c);
        this.f5137a.getClass();
        return (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), f5136e);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean b() {
        /*
            r5 = this;
            monitor-enter(r5)
            int r0 = r5.f5139c     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L19
            b7.l r0 = r5.f5137a     // Catch: java.lang.Throwable -> L1c
            c5.v r0 = r0.f1172a     // Catch: java.lang.Throwable -> L1c
            r0.getClass()     // Catch: java.lang.Throwable -> L1c
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1c
            long r2 = r5.f5138b     // Catch: java.lang.Throwable -> L1c
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L17
            goto L19
        L17:
            r0 = 0
            goto L1a
        L19:
            r0 = 1
        L1a:
            monitor-exit(r5)
            return r0
        L1c:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e7.e.b():boolean");
    }

    public final synchronized void c() {
        this.f5139c = 0;
    }

    public final synchronized void d(int r52) {
        if ((r52 >= 200 && r52 < 300) || r52 == 401 || r52 == 404) {
            c();
            return;
        }
        this.f5139c++;
        long jA = a(r52);
        this.f5137a.f1172a.getClass();
        this.f5138b = System.currentTimeMillis() + jA;
    }
}
