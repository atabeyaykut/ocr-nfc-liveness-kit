package cc;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class t0 extends e1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List<c1> f2359c;

    public t0(ArrayList arrayList) {
        this.f2359c = arrayList;
    }

    @Override // cc.e1
    public final i1 g(c1 key) {
        kotlin.jvm.internal.h.f(key, "key");
        if (!this.f2359c.contains(key)) {
            return null;
        }
        ma.g gVarN = key.n();
        kotlin.jvm.internal.h.d(gVarN, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        return q1.m((ma.w0) gVarN);
    }
}
