package lh;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class e extends af.c<d> {

    /* renamed from: h, reason: collision with root package name */
    public final j f9836h;

    /* renamed from: i, reason: collision with root package name */
    public final lh.a f9837i;

    public static final class a extends DaggerMvRxViewModelFactory<e, d> {
        public a(kotlin.jvm.internal.d dVar) {
            super(e.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d state, j mobileAccidentGenerateQRWork, lh.a mobileAccidentCheckQRControlWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentGenerateQRWork, "mobileAccidentGenerateQRWork");
        kotlin.jvm.internal.h.f(mobileAccidentCheckQRControlWork, "mobileAccidentCheckQRControlWork");
        this.f9836h = mobileAccidentGenerateQRWork;
        this.f9837i = mobileAccidentCheckQRControlWork;
        h hVar = new h(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, hVar, 3);
        v.D(a0Var, mobileAccidentGenerateQRWork, new i(this, null));
    }
}
