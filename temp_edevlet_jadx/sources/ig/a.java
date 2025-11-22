package ig;

import fg.e;
import fg.l;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class a extends af.c<e> {

    /* renamed from: ig.a$a, reason: collision with other inner class name */
    public static final class C0131a extends DaggerMvRxViewModelFactory<a, e> {
        public C0131a(d dVar) {
            super(a.class);
        }
    }

    static {
        new C0131a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(e state, l profileWork) {
        super(state);
        h.f(state, "state");
        h.f(profileWork, "profileWork");
    }
}
