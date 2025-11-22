package nc;

import com.google.android.gms.internal.clearcut.z2;
import java.lang.Thread;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public static final List<CoroutineExceptionHandler> f10860a;

    static {
        Iterator it = ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator();
        kotlin.jvm.internal.h.f(it, "<this>");
        lc.h lVar = new lc.l(it);
        if (!(lVar instanceof lc.a)) {
            lVar = new lc.a(lVar);
        }
        f10860a = b8.f.Z(lc.w.c1(lVar));
    }

    public static final void a(p9.f fVar, Throwable th2) {
        Throwable runtimeException;
        Iterator<CoroutineExceptionHandler> it = f10860a.iterator();
        while (it.hasNext()) {
            try {
                it.next().handleException(fVar, th2);
            } catch (Throwable th3) {
                Thread threadCurrentThread = Thread.currentThread();
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
                if (th2 == th3) {
                    runtimeException = th2;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th3);
                    b8.f.k(runtimeException, th2);
                }
                uncaughtExceptionHandler.uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        try {
            b8.f.k(th2, new z2(fVar));
            l9.m mVar = l9.m.f9594a;
        } catch (Throwable th4) {
            c5.w.j(th4);
        }
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th2);
    }
}
