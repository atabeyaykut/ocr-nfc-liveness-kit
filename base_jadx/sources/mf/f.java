package mf;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class f extends af.c<e> {

    /* renamed from: h, reason: collision with root package name */
    public final k f10408h;

    public static final class a extends DaggerMvRxViewModelFactory<f, e> {
        public a(kotlin.jvm.internal.d dVar) {
            super(f.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e state, k aboutPageWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(aboutPageWork, "aboutPageWork");
        this.f10408h = aboutPageWork;
        g gVar = new g(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, gVar, 3);
        v.D(a0Var, aboutPageWork, new h(this, null));
    }
}
