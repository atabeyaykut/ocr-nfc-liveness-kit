package db;

import cc.m0;
import cc.q1;
import p4.g7;

/* loaded from: classes2.dex */
public final class v extends a<na.c> {

    /* renamed from: a, reason: collision with root package name */
    public final na.a f4814a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4815b;

    /* renamed from: c, reason: collision with root package name */
    public final g7 f4816c;

    /* renamed from: d, reason: collision with root package name */
    public final va.c f4817d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4818e;

    public /* synthetic */ v(na.a aVar, boolean z10, g7 g7Var, va.c cVar) {
        this(aVar, z10, g7Var, cVar, false);
    }

    public v(na.a aVar, boolean z10, g7 containerContext, va.c cVar, boolean z11) {
        kotlin.jvm.internal.h.f(containerContext, "containerContext");
        this.f4814a = aVar;
        this.f4815b = z10;
        this.f4816c = containerContext;
        this.f4817d = cVar;
        this.f4818e = z11;
    }

    public final lb.d e(m0 m0Var) {
        ec.f fVar = q1.f2348a;
        ma.g gVarN = m0Var.M0().n();
        ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
        if (eVar != null) {
            return ob.i.g(eVar);
        }
        return null;
    }
}
