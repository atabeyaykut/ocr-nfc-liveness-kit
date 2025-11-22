package kh;

import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class e extends af.c<d> {

    /* renamed from: h, reason: collision with root package name */
    public final h f8950h;

    public static final class a extends DaggerMvRxViewModelFactory<e, d> {
        public a(kotlin.jvm.internal.d dVar) {
            super(e.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d state, h mobileAccidentMapWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentMapWork, "mobileAccidentMapWork");
        this.f8950h = mobileAccidentMapWork;
    }
}
