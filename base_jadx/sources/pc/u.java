package pc;

import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public interface u<E> {
    void a(CancellationException cancellationException);

    Object h(p9.d<? super j<? extends E>> dVar);

    i<E> iterator();

    kotlinx.coroutines.selects.b<j<E>> k();

    kotlinx.coroutines.selects.b<E> l();
}
