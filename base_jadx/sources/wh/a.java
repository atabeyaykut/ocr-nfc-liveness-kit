package wh;

import af.c;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import uh.e;

/* loaded from: classes3.dex */
public final class a extends c<uh.c> {

    /* renamed from: wh.a$a, reason: collision with other inner class name */
    public static final class C0297a extends DaggerMvRxViewModelFactory<a, uh.c> {
        public C0297a(d dVar) {
            super(a.class);
        }
    }

    static {
        new C0297a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(uh.c state, e mobileAccidentDriverWork) {
        super(state);
        h.f(state, "state");
        h.f(mobileAccidentDriverWork, "mobileAccidentDriverWork");
    }
}
