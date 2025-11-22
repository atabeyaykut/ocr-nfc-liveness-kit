package wc;

import ed.v;
import java.io.IOException;
import java.net.ProtocolException;
import mc.j;
import rc.a0;
import rc.b0;
import rc.d0;
import rc.n;
import rc.s;
import rc.x;
import vc.c;

/* loaded from: classes2.dex */
public final class b implements s {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18864a;

    public b(boolean z10) {
        this.f18864a = z10;
    }

    @Override // rc.s
    public final b0 a(f fVar) throws Throwable {
        b0.a aVarB;
        Long lValueOf;
        boolean z10;
        boolean z11;
        b0.a aVar;
        d0 gVar;
        vc.c cVar = fVar.f18872e;
        kotlin.jvm.internal.h.c(cVar);
        d dVar = cVar.f;
        n nVar = cVar.f18478d;
        vc.e call = cVar.f18477c;
        x xVar = fVar.f;
        a0 a0Var = xVar.f14601e;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            nVar.getClass();
            kotlin.jvm.internal.h.f(call, "call");
            dVar.b(xVar);
            boolean zO = a0.b.o(xVar.f14599c);
            vc.i iVar = cVar.f18476b;
            if (!zO || a0Var == null) {
                aVarB = null;
                call.g(cVar, true, false, null);
                lValueOf = null;
                z10 = false;
                z11 = true;
            } else {
                if (j.x("100-continue", xVar.f14600d.l("Expect"))) {
                    try {
                        dVar.g();
                        aVarB = cVar.b(true);
                        nVar.getClass();
                        kotlin.jvm.internal.h.f(call, "call");
                        z11 = false;
                    } catch (IOException e10) {
                        nVar.getClass();
                        kotlin.jvm.internal.h.f(call, "call");
                        cVar.c(e10);
                        throw e10;
                    }
                } else {
                    aVarB = null;
                    z11 = true;
                }
                if (aVarB == null) {
                    cVar.f18475a = false;
                    a0 a0Var2 = xVar.f14601e;
                    kotlin.jvm.internal.h.c(a0Var2);
                    long jA = a0Var2.a();
                    nVar.getClass();
                    kotlin.jvm.internal.h.f(call, "call");
                    ed.b0 b0VarA = v.a(new c.a(cVar, dVar.f(xVar, jA), jA));
                    a0Var.c(b0VarA);
                    b0VarA.close();
                } else {
                    call.g(cVar, true, false, null);
                    if (!(iVar.f != null)) {
                        dVar.d().l();
                    }
                }
                lValueOf = null;
                z10 = false;
            }
            try {
                dVar.a();
                if (aVarB == null) {
                    aVarB = cVar.b(z10);
                    kotlin.jvm.internal.h.c(aVarB);
                    if (z11) {
                        nVar.getClass();
                        kotlin.jvm.internal.h.f(call, "call");
                        z11 = false;
                    }
                }
                aVarB.f14398a = xVar;
                aVarB.f14402e = iVar.f18527d;
                aVarB.f14407k = jCurrentTimeMillis;
                aVarB.f14408l = System.currentTimeMillis();
                b0 b0VarA2 = aVarB.a();
                int r11 = b0VarA2.f14389e;
                if (r11 == 100) {
                    b0.a aVarB2 = cVar.b(false);
                    kotlin.jvm.internal.h.c(aVarB2);
                    if (z11) {
                        nVar.getClass();
                        kotlin.jvm.internal.h.f(call, "call");
                    }
                    aVarB2.f14398a = xVar;
                    aVarB2.f14402e = iVar.f18527d;
                    aVarB2.f14407k = jCurrentTimeMillis;
                    aVarB2.f14408l = System.currentTimeMillis();
                    b0VarA2 = aVarB2.a();
                    r11 = b0VarA2.f14389e;
                }
                if (this.f18864a && r11 == 101) {
                    aVar = new b0.a(b0VarA2);
                    gVar = sc.c.f15382c;
                } else {
                    aVar = new b0.a(b0VarA2);
                    try {
                        String strB = b0.b(b0VarA2, "Content-Type");
                        long jE = dVar.e(b0VarA2);
                        gVar = new g(strB, jE, v.b(new c.b(cVar, dVar.h(b0VarA2), jE)));
                    } catch (IOException e11) {
                        cVar.c(e11);
                        throw e11;
                    }
                }
                aVar.f14403g = gVar;
                b0 b0VarA3 = aVar.a();
                if (j.x("close", b0VarA3.f14386b.f14600d.l("Connection")) || j.x("close", b0.b(b0VarA3, "Connection"))) {
                    dVar.d().l();
                }
                if (r11 == 204 || r11 == 205) {
                    d0 d0Var = b0VarA3.f14391h;
                    if ((d0Var != null ? d0Var.a() : -1L) > 0) {
                        StringBuilder sbE = androidx.appcompat.widget.v.e("HTTP ", r11, " had non-zero Content-Length: ");
                        if (d0Var != null) {
                            lValueOf = Long.valueOf(d0Var.a());
                        }
                        sbE.append(lValueOf);
                        throw new ProtocolException(sbE.toString());
                    }
                }
                return b0VarA3;
            } catch (IOException e12) {
                cVar.c(e12);
                throw e12;
            }
        } catch (IOException e13) {
            nVar.getClass();
            kotlin.jvm.internal.h.f(call, "call");
            cVar.c(e13);
            throw e13;
        }
    }
}
