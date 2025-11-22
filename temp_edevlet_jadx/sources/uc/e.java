package uc;

import com.google.android.gms.internal.clearcut.d0;
import java.util.logging.Level;
import kotlin.jvm.internal.h;
import l9.m;

/* loaded from: classes2.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f17937a;

    public e(d dVar) {
        this.f17937a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVarC;
        long jC;
        while (true) {
            synchronized (this.f17937a) {
                aVarC = this.f17937a.c();
            }
            if (aVarC == null) {
                return;
            }
            c cVar = aVarC.f17917a;
            h.c(cVar);
            d dVar = d.f17927h;
            boolean zIsLoggable = d.f17928i.isLoggable(Level.FINE);
            if (zIsLoggable) {
                jC = cVar.f17926e.f17935g.c();
                d0.e(aVarC, cVar, "starting");
            } else {
                jC = -1;
            }
            try {
                try {
                    d.a(this.f17937a, aVarC);
                    m mVar = m.f9594a;
                    if (zIsLoggable) {
                        d0.e(aVarC, cVar, "finished run in ".concat(d0.o(cVar.f17926e.f17935g.c() - jC)));
                    }
                } finally {
                }
            } catch (Throwable th2) {
                if (zIsLoggable) {
                    d0.e(aVarC, cVar, "failed a run in ".concat(d0.o(cVar.f17926e.f17935g.c() - jC)));
                }
                throw th2;
            }
        }
    }
}
