package f9;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public final class b extends ThreadPoolExecutor {

    /* renamed from: b, reason: collision with root package name */
    public static final int f5550b;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f5551a;

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    static {
        /*
            java.lang.String r0 = "/sys/devices/system/cpu/"
            java.lang.String r1 = "cpu[0-9]+"
            java.util.regex.Pattern r1 = java.util.regex.Pattern.compile(r1)
            java.io.File r2 = new java.io.File     // Catch: java.lang.SecurityException -> L1b
            r2.<init>(r0)     // Catch: java.lang.SecurityException -> L1b
            f9.a r0 = new f9.a     // Catch: java.lang.SecurityException -> L1b
            r0.<init>(r1)     // Catch: java.lang.SecurityException -> L1b
            java.io.File[] r0 = r2.listFiles(r0)     // Catch: java.lang.SecurityException -> L1b
            if (r0 != 0) goto L19
            goto L1b
        L19:
            int r0 = r0.length     // Catch: java.lang.SecurityException -> L1b
            goto L1c
        L1b:
            r0 = 0
        L1c:
            if (r0 > 0) goto L26
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()
            int r0 = r0.availableProcessors()
        L26:
            r1 = 1
            if (r0 > 0) goto L2a
            goto L2d
        L2a:
            int r0 = r0 * 2
            int r1 = r1 + r0
        L2d:
            f9.b.f5550b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f9.b.<clinit>():void");
    }

    public b(int r82, int r92) {
        super(r82, r92, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f5551a = reentrantLock;
        reentrantLock.newCondition();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        ReentrantLock reentrantLock = this.f5551a;
        reentrantLock.lock();
        reentrantLock.unlock();
    }
}
