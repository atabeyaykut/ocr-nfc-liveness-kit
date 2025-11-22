package eb;

import cc.e0;
import cc.f0;
import cc.m0;

/* loaded from: classes2.dex */
public final class m implements yb.v {

    /* renamed from: a, reason: collision with root package name */
    public static final m f5219a = new m();

    @Override // yb.v
    public final e0 a(gb.p proto, String flexibleId, m0 lowerBound, m0 upperBound) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(flexibleId, "flexibleId");
        kotlin.jvm.internal.h.f(lowerBound, "lowerBound");
        kotlin.jvm.internal.h.f(upperBound, "upperBound");
        return !kotlin.jvm.internal.h.a(flexibleId, "kotlin.jvm.PlatformType") ? ec.i.c(ec.h.ERROR_FLEXIBLE_TYPE, flexibleId, lowerBound.toString(), upperBound.toString()) : proto.l(jb.a.f8415g) ? new ab.h(lowerBound, upperBound) : f0.c(lowerBound, upperBound);
    }
}
