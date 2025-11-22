package k8;

import e8.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class b<Identifiable extends e8.i> implements e8.h<Object> {

    /* renamed from: b, reason: collision with root package name */
    public final AtomicLong f8772b = new AtomicLong(-2);

    public final List<Object> a(List<Object> list) {
        int size = list.size();
        for (int r12 = 0; r12 < size; r12++) {
            e8.i identifiable = (e8.i) list.get(r12);
            kotlin.jvm.internal.h.f(identifiable, "identifiable");
            if (identifiable.getIdentifier() == -1) {
                identifiable.i(this.f8772b.decrementAndGet());
            }
        }
        return list;
    }
}
