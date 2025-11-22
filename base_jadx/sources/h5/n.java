package h5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import o3.n0;

/* loaded from: classes.dex */
public final class n {
    public static <TResult> TResult a(@NonNull k<TResult> kVar) throws ExecutionException, InterruptedException {
        r3.r.h("Must not be called on the main application thread");
        if (kVar == null) {
            throw new NullPointerException("Task must not be null");
        }
        if (kVar.l()) {
            return (TResult) g(kVar);
        }
        o oVar = new o();
        x xVar = m.f6843b;
        kVar.d(xVar, oVar);
        kVar.c(xVar, oVar);
        kVar.a(xVar, oVar);
        oVar.f6844a.await();
        return (TResult) g(kVar);
    }

    public static <TResult> TResult b(@NonNull k<TResult> kVar, long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        r3.r.h("Must not be called on the main application thread");
        if (kVar == null) {
            throw new NullPointerException("Task must not be null");
        }
        if (timeUnit == null) {
            throw new NullPointerException("TimeUnit must not be null");
        }
        if (kVar.l()) {
            return (TResult) g(kVar);
        }
        o oVar = new o();
        x xVar = m.f6843b;
        kVar.d(xVar, oVar);
        kVar.c(xVar, oVar);
        kVar.a(xVar, oVar);
        if (oVar.f6844a.await(j10, timeUnit)) {
            return (TResult) g(kVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    @NonNull
    @Deprecated
    public static z c(@NonNull Executor executor, @NonNull Callable callable) {
        if (executor == null) {
            throw new NullPointerException("Executor must not be null");
        }
        z zVar = new z();
        executor.execute(new n0(zVar, callable));
        return zVar;
    }

    @NonNull
    public static z d(@NonNull Exception exc) {
        z zVar = new z();
        zVar.q(exc);
        return zVar;
    }

    @NonNull
    public static z e(Object obj) {
        z zVar = new z();
        zVar.r(obj);
        return zVar;
    }

    @NonNull
    public static z f(@Nullable List list) {
        if (list == null || list.isEmpty()) {
            return e(null);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((k) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        z zVar = new z();
        p pVar = new p(list.size(), zVar);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            k kVar = (k) it2.next();
            x xVar = m.f6843b;
            kVar.d(xVar, pVar);
            kVar.c(xVar, pVar);
            kVar.a(xVar, pVar);
        }
        return zVar;
    }

    public static Object g(@NonNull k kVar) throws ExecutionException {
        if (kVar.m()) {
            return kVar.i();
        }
        if (kVar.k()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(kVar.h());
    }
}
