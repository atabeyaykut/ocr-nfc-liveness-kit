package wc;

import ed.p;
import ed.v;
import java.io.IOException;
import m9.u;
import rc.a0;
import rc.b0;
import rc.d0;
import rc.j;
import rc.k;
import rc.q;
import rc.r;
import rc.s;
import rc.t;
import rc.x;

/* loaded from: classes2.dex */
public final class a implements s {

    /* renamed from: a, reason: collision with root package name */
    public final k f18863a;

    public a(k cookieJar) {
        kotlin.jvm.internal.h.f(cookieJar, "cookieJar");
        this.f18863a = cookieJar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // rc.s
    public final b0 a(f fVar) throws IOException {
        boolean z10;
        d0 d0Var;
        x xVar = fVar.f;
        xVar.getClass();
        x.a aVar = new x.a(xVar);
        a0 a0Var = xVar.f14601e;
        if (a0Var != null) {
            t tVarB = a0Var.b();
            if (tVarB != null) {
                aVar.c("Content-Type", tVarB.f14534a);
            }
            long jA = a0Var.a();
            if (jA != -1) {
                aVar.c("Content-Length", String.valueOf(jA));
                aVar.f14604c.d("Transfer-Encoding");
            } else {
                aVar.c("Transfer-Encoding", "chunked");
                aVar.f14604c.d("Content-Length");
            }
        }
        q qVar = xVar.f14600d;
        String strL = qVar.l("Host");
        int r10 = 0;
        r rVar = xVar.f14598b;
        if (strL == null) {
            aVar.c("Host", sc.c.u(rVar, false));
        }
        if (qVar.l("Connection") == null) {
            aVar.c("Connection", "Keep-Alive");
        }
        if (qVar.l("Accept-Encoding") == null && qVar.l("Range") == null) {
            aVar.c("Accept-Encoding", "gzip");
            z10 = true;
        } else {
            z10 = false;
        }
        k kVar = this.f18863a;
        kVar.b(rVar);
        if (!true) {
            StringBuilder sb2 = new StringBuilder();
            u uVar = u.f10172a;
            while (uVar.hasNext()) {
                E next = uVar.next();
                int r17 = r10 + 1;
                if (r10 < 0) {
                    b8.f.k0();
                    throw null;
                }
                j jVar = (j) next;
                if (r10 > 0) {
                    sb2.append("; ");
                }
                sb2.append(jVar.f14483a);
                sb2.append('=');
                sb2.append(jVar.f14484b);
                r10 = r17;
            }
            String string = sb2.toString();
            kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
            aVar.c("Cookie", string);
        }
        if (qVar.l("User-Agent") == null) {
            aVar.c("User-Agent", "okhttp/4.9.3");
        }
        b0 b0VarC = fVar.c(aVar.a());
        q qVar2 = b0VarC.f14390g;
        e.b(kVar, rVar, qVar2);
        b0.a aVar2 = new b0.a(b0VarC);
        aVar2.f14398a = xVar;
        if (z10 && mc.j.x("gzip", b0.b(b0VarC, "Content-Encoding")) && e.a(b0VarC) && (d0Var = b0VarC.f14391h) != null) {
            p pVar = new p(d0Var.c());
            q.a aVarU = qVar2.u();
            aVarU.d("Content-Encoding");
            aVarU.d("Content-Length");
            aVar2.f = aVarU.c().u();
            aVar2.f14403g = new g(b0.b(b0VarC, "Content-Type"), -1L, v.b(pVar));
        }
        return aVar2.a();
    }
}
