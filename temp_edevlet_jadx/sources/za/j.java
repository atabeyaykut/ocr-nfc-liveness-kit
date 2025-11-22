package za;

import java.util.Collection;
import ma.q0;

/* loaded from: classes2.dex */
public final class j extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends q0>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f19930a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar) {
        super(1);
        this.f19930a = kVar;
    }

    @Override // x9.l
    public final Collection<? extends q0> invoke(lb.f fVar) {
        lb.f it = fVar;
        kotlin.jvm.internal.h.f(it, "it");
        return k.w(this.f19930a, it);
    }
}
