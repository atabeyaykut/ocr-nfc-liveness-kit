package nc;

import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public final class d<T> extends a<T> {
    @Override // nc.g1
    public final void F(Object obj) {
        if (kotlin.jvm.internal.h.a(Thread.currentThread(), null)) {
            return;
        }
        LockSupport.unpark(null);
    }
}
