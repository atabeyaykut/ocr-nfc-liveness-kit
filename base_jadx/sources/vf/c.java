package vf;

import c5.v;
import nc.a0;
import rf.n;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class c extends af.c<b> {

    /* renamed from: h, reason: collision with root package name */
    public final j f18591h;

    /* renamed from: i, reason: collision with root package name */
    public final rf.d f18592i;

    /* renamed from: j, reason: collision with root package name */
    public final n f18593j;

    public static final class a extends DaggerMvRxViewModelFactory<c, b> {
        public a(kotlin.jvm.internal.d dVar) {
            super(c.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b state, j newestServicesWork, rf.d favoriteServiceWork, n unFavoriteServiceWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(newestServicesWork, "newestServicesWork");
        kotlin.jvm.internal.h.f(favoriteServiceWork, "favoriteServiceWork");
        kotlin.jvm.internal.h.f(unFavoriteServiceWork, "unFavoriteServiceWork");
        this.f18591h = newestServicesWork;
        this.f18592i = favoriteServiceWork;
        this.f18593j = unFavoriteServiceWork;
        f fVar = new f(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, fVar, 3);
        v.D(a0Var, newestServicesWork, new g(this, null));
    }
}
