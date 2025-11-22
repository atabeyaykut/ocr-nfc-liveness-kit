package yg;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class d extends af.c<c> {

    /* renamed from: h, reason: collision with root package name */
    public final i f19705h;

    /* renamed from: i, reason: collision with root package name */
    public final yg.a f19706i;

    public static final class a extends DaggerMvRxViewModelFactory<d, c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c state, i mobileAccidentAgreementWork, yg.a mobileAccidentConfirmClarification) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentAgreementWork, "mobileAccidentAgreementWork");
        kotlin.jvm.internal.h.f(mobileAccidentConfirmClarification, "mobileAccidentConfirmClarification");
        this.f19705h = mobileAccidentAgreementWork;
        this.f19706i = mobileAccidentConfirmClarification;
        g gVar = new g(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, gVar, 3);
        v.D(a0Var, mobileAccidentAgreementWork, new h(this, null));
    }
}
