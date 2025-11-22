package h6;

import android.os.Looper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class p0 {

    /* renamed from: a, reason: collision with root package name */
    public static final ExecutorService f6951a = f0.a("awaitEvenIfOnMainThread task continuation executor");

    public static <T> T a(h5.k<T> kVar) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        kVar.e(f6951a, new t1.e(2, countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (kVar.m()) {
            return kVar.i();
        }
        if (kVar.k()) {
            throw new CancellationException("Task is already canceled");
        }
        if (kVar.l()) {
            throw new IllegalStateException(kVar.h());
        }
        throw new TimeoutException();
    }
}
