package b1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b1.n;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class m extends q1.i<n.a<Object>, Object> {
    public m() {
        super(500L);
    }

    @Override // q1.i
    public final void c(@NonNull n.a<Object> aVar, @Nullable Object obj) {
        n.a<Object> aVar2 = aVar;
        aVar2.getClass();
        ArrayDeque arrayDeque = n.a.f1045d;
        synchronized (arrayDeque) {
            arrayDeque.offer(aVar2);
        }
    }
}
