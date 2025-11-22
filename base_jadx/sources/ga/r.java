package ga;

import java.util.Comparator;

/* loaded from: classes2.dex */
public final class r implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final x9.p f6110a;

    public r(v vVar) {
        this.f6110a = vVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        x9.p tmp0 = this.f6110a;
        kotlin.jvm.internal.h.f(tmp0, "$tmp0");
        return ((Number) tmp0.mo7invoke(obj, obj2)).intValue();
    }
}
