package za;

import java.util.Collection;
import ma.q0;

/* loaded from: classes2.dex */
public final class i extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends q0>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f19929a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(k kVar) {
        super(1);
        this.f19929a = kVar;
    }

    @Override // x9.l
    public final Collection<? extends q0> invoke(lb.f fVar) {
        lb.f it = fVar;
        kotlin.jvm.internal.h.f(it, "it");
        return k.v(this.f19929a, it);
    }
}
