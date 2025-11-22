package vc;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.IOException;
import rc.b0;
import rc.s;
import rc.v;

/* loaded from: classes2.dex */
public final class a implements s {

    /* renamed from: a, reason: collision with root package name */
    public static final a f18470a = new a();

    @Override // rc.s
    public final b0 a(wc.f fVar) throws IOException {
        e eVar = fVar.f18869b;
        eVar.getClass();
        synchronized (eVar) {
            if (!eVar.f18508m) {
                throw new IllegalStateException("released".toString());
            }
            if (!(!eVar.f18507l)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (!(!eVar.f18506k)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            l9.m mVar = l9.m.f9594a;
        }
        d dVar = eVar.f;
        kotlin.jvm.internal.h.c(dVar);
        v client = eVar.f18512r;
        kotlin.jvm.internal.h.f(client, "client");
        try {
            c cVar = new c(eVar, eVar.f18499b, dVar, dVar.a(fVar.f18873g, fVar.f18874h, fVar.f18875i, client.f, !kotlin.jvm.internal.h.a(fVar.f.f14599c, ShareTarget.METHOD_GET)).k(client, fVar));
            eVar.f18505j = cVar;
            eVar.f18510p = cVar;
            synchronized (eVar) {
                eVar.f18506k = true;
                eVar.f18507l = true;
            }
            if (eVar.f18509n) {
                throw new IOException("Canceled");
            }
            return wc.f.b(fVar, 0, cVar, null, 61).c(fVar.f);
        } catch (IOException e10) {
            dVar.c(e10);
            throw new l(e10);
        } catch (l e11) {
            dVar.c(e11.f18546a);
            throw e11;
        }
    }
}
