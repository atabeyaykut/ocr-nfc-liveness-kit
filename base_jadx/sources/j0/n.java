package j0;

import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public abstract class n implements m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7965a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final Collection f7966b;

    public n() {
        char[] cArr = q1.m.f13318a;
        this.f7966b = new ArrayDeque(20);
    }

    public abstract y0.k a();

    public final y0.k b() {
        y0.k kVar = (y0.k) ((Queue) this.f7966b).poll();
        return kVar == null ? a() : kVar;
    }

    @Override // j0.m
    public final List d() {
        return (List) this.f7966b;
    }

    public final void e(y0.k kVar) {
        Collection collection = this.f7966b;
        if (((Queue) collection).size() < 20) {
            ((Queue) collection).offer(kVar);
        }
    }

    @Override // j0.m
    public final boolean f() {
        Collection collection = this.f7966b;
        if (((List) collection).isEmpty()) {
            return true;
        }
        return ((List) collection).size() == 1 && ((q0.a) ((List) collection).get(0)).c();
    }

    public final String toString() {
        switch (this.f7965a) {
            case 0:
                StringBuilder sb2 = new StringBuilder();
                List list = (List) this.f7966b;
                if (!list.isEmpty()) {
                    sb2.append("values=");
                    sb2.append(Arrays.toString(list.toArray()));
                }
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public n(Float f) {
        this(Collections.singletonList(new q0.a(f)));
    }

    public n(List list) {
        this.f7966b = list;
    }
}
