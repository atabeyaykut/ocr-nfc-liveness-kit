package tf;

import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class i extends af.c<h> {

    /* renamed from: h, reason: collision with root package name */
    public final l f15702h;

    public static final class a extends DaggerMvRxViewModelFactory<i, h> {
        public a(kotlin.jvm.internal.d dVar) {
            super(i.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(h state, l institutionCityListWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(institutionCityListWork, "institutionCityListWork");
        this.f15702h = institutionCityListWork;
    }
}
