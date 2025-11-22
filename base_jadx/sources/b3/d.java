package b3;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;

@WorkerThread
/* loaded from: classes.dex */
public interface d extends Closeable {
    long D(u2.s sVar);

    Iterable<u2.s> K();

    @Nullable
    b Q(u2.s sVar, u2.n nVar);

    Iterable<j> R(u2.s sVar);

    boolean V(u2.s sVar);

    void f0(long j10, u2.s sVar);

    void k0(Iterable<j> iterable);

    int u();

    void x(Iterable<j> iterable);
}
