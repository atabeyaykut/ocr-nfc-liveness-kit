package ed;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class a extends k0 {

    /* renamed from: h, reason: collision with root package name */
    public static final long f5282h;

    /* renamed from: i, reason: collision with root package name */
    public static final long f5283i;

    /* renamed from: j, reason: collision with root package name */
    public static a f5284j;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5285e;
    public a f;

    /* renamed from: g, reason: collision with root package name */
    public long f5286g;

    /* renamed from: ed.a$a, reason: collision with other inner class name */
    public static final class C0083a {
        public static a a() throws InterruptedException {
            a aVar = a.f5284j;
            kotlin.jvm.internal.h.c(aVar);
            a aVar2 = aVar.f;
            long jNanoTime = System.nanoTime();
            if (aVar2 == null) {
                a.class.wait(a.f5282h);
                a aVar3 = a.f5284j;
                kotlin.jvm.internal.h.c(aVar3);
                if (aVar3.f != null || System.nanoTime() - jNanoTime < a.f5283i) {
                    return null;
                }
                return a.f5284j;
            }
            long j10 = aVar2.f5286g - jNanoTime;
            if (j10 > 0) {
                long j11 = j10 / 1000000;
                a.class.wait(j11, (int) (j10 - (1000000 * j11)));
                return null;
            }
            a aVar4 = a.f5284j;
            kotlin.jvm.internal.h.c(aVar4);
            aVar4.f = aVar2.f;
            aVar2.f = null;
            return aVar2;
        }
    }

    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            a aVarA;
            while (true) {
                try {
                    synchronized (a.class) {
                        a aVar = a.f5284j;
                        aVarA = C0083a.a();
                        if (aVarA == a.f5284j) {
                            a.f5284j = null;
                            return;
                        }
                        l9.m mVar = l9.m.f9594a;
                    }
                    if (aVarA != null) {
                        aVarA.k();
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f5282h = millis;
        f5283i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0065 A[Catch: all -> 0x0080, TryCatch #0 {, blocks: (B:8:0x0010, B:10:0x0016, B:12:0x001c, B:13:0x002b, B:16:0x0033, B:18:0x003f, B:21:0x0047, B:22:0x004c, B:24:0x0053, B:28:0x005d, B:30:0x0065, B:31:0x006a, B:20:0x0043, B:34:0x006e, B:35:0x0073, B:36:0x0074, B:37:0x007f), top: B:41:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            r10 = this;
            long r0 = r10.f5336c
            boolean r2 = r10.f5334a
            r3 = 0
            int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r5 != 0) goto Ld
            if (r2 != 0) goto Ld
            return
        Ld:
            java.lang.Class<ed.a> r3 = ed.a.class
            monitor-enter(r3)
            boolean r4 = r10.f5285e     // Catch: java.lang.Throwable -> L80
            r6 = 1
            r4 = r4 ^ r6
            if (r4 == 0) goto L74
            r10.f5285e = r6     // Catch: java.lang.Throwable -> L80
            ed.a r4 = ed.a.f5284j     // Catch: java.lang.Throwable -> L80
            if (r4 != 0) goto L2b
            ed.a r4 = new ed.a     // Catch: java.lang.Throwable -> L80
            r4.<init>()     // Catch: java.lang.Throwable -> L80
            ed.a.f5284j = r4     // Catch: java.lang.Throwable -> L80
            ed.a$b r4 = new ed.a$b     // Catch: java.lang.Throwable -> L80
            r4.<init>()     // Catch: java.lang.Throwable -> L80
            r4.start()     // Catch: java.lang.Throwable -> L80
        L2b:
            long r6 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L3d
            if (r2 == 0) goto L3d
            long r4 = r10.c()     // Catch: java.lang.Throwable -> L80
            long r4 = r4 - r6
            long r0 = java.lang.Math.min(r0, r4)     // Catch: java.lang.Throwable -> L80
            goto L3f
        L3d:
            if (r5 == 0) goto L41
        L3f:
            long r0 = r0 + r6
            goto L47
        L41:
            if (r2 == 0) goto L6e
            long r0 = r10.c()     // Catch: java.lang.Throwable -> L80
        L47:
            r10.f5286g = r0     // Catch: java.lang.Throwable -> L80
            long r0 = r0 - r6
            ed.a r2 = ed.a.f5284j     // Catch: java.lang.Throwable -> L80
        L4c:
            kotlin.jvm.internal.h.c(r2)     // Catch: java.lang.Throwable -> L80
            ed.a r4 = r2.f     // Catch: java.lang.Throwable -> L80
            if (r4 == 0) goto L5d
            long r8 = r4.f5286g     // Catch: java.lang.Throwable -> L80
            long r8 = r8 - r6
            int r5 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r5 >= 0) goto L5b
            goto L5d
        L5b:
            r2 = r4
            goto L4c
        L5d:
            r10.f = r4     // Catch: java.lang.Throwable -> L80
            r2.f = r10     // Catch: java.lang.Throwable -> L80
            ed.a r0 = ed.a.f5284j     // Catch: java.lang.Throwable -> L80
            if (r2 != r0) goto L6a
            java.lang.Class<ed.a> r0 = ed.a.class
            r0.notify()     // Catch: java.lang.Throwable -> L80
        L6a:
            l9.m r0 = l9.m.f9594a     // Catch: java.lang.Throwable -> L80
            monitor-exit(r3)
            return
        L6e:
            java.lang.AssertionError r0 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L80
            r0.<init>()     // Catch: java.lang.Throwable -> L80
            throw r0     // Catch: java.lang.Throwable -> L80
        L74:
            java.lang.String r0 = "Unbalanced enter/exit"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L80
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L80
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L80
            throw r1     // Catch: java.lang.Throwable -> L80
        L80:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.a.h():void");
    }

    public final boolean i() {
        synchronized (a.class) {
            if (this.f5285e) {
                this.f5285e = false;
                a aVar = f5284j;
                while (aVar != null) {
                    a aVar2 = aVar.f;
                    if (aVar2 == this) {
                        aVar.f = this.f;
                        this.f = null;
                    } else {
                        aVar = aVar2;
                    }
                }
                return true;
            }
            return false;
        }
    }

    public IOException j(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public void k() {
    }
}
