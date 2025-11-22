package nf;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class e extends af.c<d> {

    /* renamed from: h, reason: collision with root package name */
    public final m f10909h;

    /* renamed from: i, reason: collision with root package name */
    public final rf.d f10910i;

    /* renamed from: j, reason: collision with root package name */
    public final rf.n f10911j;

    public static final class a extends DaggerMvRxViewModelFactory<e, d> {
        public a(kotlin.jvm.internal.d dVar) {
            super(e.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d state, m barcodeServicesWork, rf.d favoriteServiceWork, rf.n unFavoriteServiceWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(barcodeServicesWork, "barcodeServicesWork");
        kotlin.jvm.internal.h.f(favoriteServiceWork, "favoriteServiceWork");
        kotlin.jvm.internal.h.f(unFavoriteServiceWork, "unFavoriteServiceWork");
        this.f10909h = barcodeServicesWork;
        this.f10910i = favoriteServiceWork;
        this.f10911j = unFavoriteServiceWork;
        h hVar = new h(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, hVar, 3);
        v.D(a0Var, barcodeServicesWork, new i(this, null));
    }
}
