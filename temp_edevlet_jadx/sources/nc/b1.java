package nc;

import java.util.concurrent.CancellationException;
import p9.f;
import qc.h;

/* loaded from: classes2.dex */
public interface b1 extends f.b {

    /* renamed from: d0, reason: collision with root package name */
    public static final /* synthetic */ int f10783d0 = 0;

    public static final class a {
        public static /* synthetic */ k0 a(b1 b1Var, boolean z10, f1 f1Var, int r52) {
            if ((r52 & 1) != 0) {
                z10 = false;
            }
            return b1Var.f(z10, (r52 & 2) != 0, f1Var);
        }
    }

    public static final class b implements f.c<b1> {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ b f10784a = new b();
    }

    void a(CancellationException cancellationException);

    boolean b();

    k0 f(boolean z10, boolean z11, x9.l<? super Throwable, l9.m> lVar);

    m i(g1 g1Var);

    boolean isCancelled();

    CancellationException n();

    k0 o(x9.l<? super Throwable, l9.m> lVar);

    Object r(h.a.C0226a.b bVar);

    boolean start();
}
