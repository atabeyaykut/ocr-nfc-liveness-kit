package rf;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class g extends af.c<f> {

    /* renamed from: h, reason: collision with root package name */
    public final c f14652h;

    /* renamed from: i, reason: collision with root package name */
    public final n f14653i;

    public static final class a extends DaggerMvRxViewModelFactory<g, f> {
        public a(kotlin.jvm.internal.d dVar) {
            super(g.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f state, c favoriteServiceListWork, n unFavoriteServiceWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(favoriteServiceListWork, "favoriteServiceListWork");
        kotlin.jvm.internal.h.f(unFavoriteServiceWork, "unFavoriteServiceWork");
        this.f14652h = favoriteServiceListWork;
        this.f14653i = unFavoriteServiceWork;
        h hVar = new h(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, hVar, 3);
        v.D(a0Var, favoriteServiceListWork, new i(this, null));
    }
}
