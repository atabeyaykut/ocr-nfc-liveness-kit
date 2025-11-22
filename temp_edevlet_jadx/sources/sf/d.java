package sf;

import c5.v;
import nc.a0;
import rf.n;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class d extends af.c<c> {

    /* renamed from: h, reason: collision with root package name */
    public final m f15409h;

    /* renamed from: i, reason: collision with root package name */
    public final rf.d f15410i;

    /* renamed from: j, reason: collision with root package name */
    public final n f15411j;

    public static final class a extends DaggerMvRxViewModelFactory<d, c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c state, m mostUsedServicesWork, rf.d favoriteServiceWork, n unFavoriteServiceWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mostUsedServicesWork, "mostUsedServicesWork");
        kotlin.jvm.internal.h.f(favoriteServiceWork, "favoriteServiceWork");
        kotlin.jvm.internal.h.f(unFavoriteServiceWork, "unFavoriteServiceWork");
        this.f15409h = mostUsedServicesWork;
        this.f15410i = favoriteServiceWork;
        this.f15411j = unFavoriteServiceWork;
        g gVar = new g(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, gVar, 3);
        v.D(a0Var, mostUsedServicesWork, new h(this, null));
    }
}
