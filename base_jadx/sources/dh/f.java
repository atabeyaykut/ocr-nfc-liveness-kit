package dh;

import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class f extends af.c<e> {

    /* renamed from: h, reason: collision with root package name */
    public final n f4942h;

    /* renamed from: i, reason: collision with root package name */
    public final c f4943i;

    /* renamed from: j, reason: collision with root package name */
    public final d f4944j;

    public static final class a extends DaggerMvRxViewModelFactory<f, e> {
        public a(kotlin.jvm.internal.d dVar) {
            super(f.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e state, n mobileAccidentDriverWork, c saveDriverWork, d saveVehicleWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentDriverWork, "mobileAccidentDriverWork");
        kotlin.jvm.internal.h.f(saveDriverWork, "saveDriverWork");
        kotlin.jvm.internal.h.f(saveVehicleWork, "saveVehicleWork");
        this.f4942h = mobileAccidentDriverWork;
        this.f4943i = saveDriverWork;
        this.f4944j = saveVehicleWork;
    }
}
