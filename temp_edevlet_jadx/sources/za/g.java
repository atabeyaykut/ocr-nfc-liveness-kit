package za;

import java.util.Collection;
import ma.q0;

/* loaded from: classes2.dex */
public final /* synthetic */ class g extends kotlin.jvm.internal.f implements x9.l<lb.f, Collection<? extends q0>> {
    public g(Object obj) {
        super(1, obj);
    }

    @Override // kotlin.jvm.internal.a, da.c
    public final String getName() {
        return "searchMethodsByNameWithoutBuiltinMagic";
    }

    @Override // kotlin.jvm.internal.a
    public final da.f getOwner() {
        return kotlin.jvm.internal.w.a(k.class);
    }

    @Override // kotlin.jvm.internal.a
    public final String getSignature() {
        return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
    }

    @Override // x9.l
    public final Collection<? extends q0> invoke(lb.f fVar) {
        lb.f p02 = fVar;
        kotlin.jvm.internal.h.f(p02, "p0");
        return k.v((k) this.receiver, p02);
    }
}
