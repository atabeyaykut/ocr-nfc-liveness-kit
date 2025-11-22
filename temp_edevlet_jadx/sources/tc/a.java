package tc;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import kotlin.jvm.internal.h;
import mc.j;
import rc.b0;
import rc.d0;
import rc.n;
import rc.q;
import rc.s;
import rc.w;
import rc.x;
import sc.c;
import vc.e;
import wc.f;

/* loaded from: classes2.dex */
public final class a implements s {

    /* renamed from: a, reason: collision with root package name */
    public static final C0255a f15668a = new C0255a();

    /* renamed from: tc.a$a, reason: collision with other inner class name */
    public static final class C0255a {
        public static final b0 a(C0255a c0255a, b0 b0Var) {
            c0255a.getClass();
            if ((b0Var != null ? b0Var.f14391h : null) == null) {
                return b0Var;
            }
            b0Var.getClass();
            b0.a aVar = new b0.a(b0Var);
            aVar.f14403g = null;
            return aVar.a();
        }

        public static boolean b(String str) {
            return (j.x("Connection", str) || j.x("Keep-Alive", str) || j.x("Proxy-Authenticate", str) || j.x("Proxy-Authorization", str) || j.x("TE", str) || j.x("Trailers", str) || j.x("Transfer-Encoding", str) || j.x("Upgrade", str)) ? false : true;
        }
    }

    @Override // rc.s
    public final b0 a(f fVar) throws IOException {
        Object obj;
        q qVar;
        int r17;
        System.currentTimeMillis();
        x request = fVar.f;
        h.f(request, "request");
        b bVar = new b(request, null);
        if (request.a().f14421j) {
            bVar = new b(null, null);
        }
        e call = fVar.f18869b;
        e eVar = !(call instanceof e) ? null : call;
        if (eVar == null || (obj = eVar.f18499b) == null) {
            obj = n.f14497a;
        }
        x xVar = bVar.f15669a;
        b0 b0Var = bVar.f15670b;
        if (xVar == null && b0Var == null) {
            b0.a aVar = new b0.a();
            h.f(request, "request");
            aVar.f14398a = request;
            aVar.f14399b = w.HTTP_1_1;
            aVar.f14400c = TypedValues.PositionType.TYPE_PERCENT_HEIGHT;
            aVar.f14401d = "Unsatisfiable Request (only-if-cached)";
            aVar.f14403g = c.f15382c;
            aVar.f14407k = -1L;
            aVar.f14408l = System.currentTimeMillis();
            b0 b0VarA = aVar.a();
            obj.getClass();
            h.f(call, "call");
            return b0VarA;
        }
        C0255a c0255a = f15668a;
        if (xVar == null) {
            h.c(b0Var);
            b0.a aVar2 = new b0.a(b0Var);
            b0 b0VarA2 = C0255a.a(c0255a, b0Var);
            b0.a.b("cacheResponse", b0VarA2);
            aVar2.f14405i = b0VarA2;
            b0 b0VarA3 = aVar2.a();
            obj.getClass();
            h.f(call, "call");
            return b0VarA3;
        }
        if (b0Var != null) {
            obj.getClass();
            h.f(call, "call");
        }
        b0 b0VarC = fVar.c(xVar);
        if (b0Var != null) {
            if (b0VarC.f14389e == 304) {
                b0.a aVar3 = new b0.a(b0Var);
                c0255a.getClass();
                q.a aVar4 = new q.a();
                q qVar2 = b0Var.f14390g;
                int length = qVar2.f14512a.length / 2;
                int r11 = 0;
                while (true) {
                    qVar = b0VarC.f14390g;
                    if (r11 >= length) {
                        break;
                    }
                    String strO = qVar2.o(r11);
                    String strW = qVar2.w(r11);
                    q qVar3 = qVar2;
                    if (j.x("Warning", strO)) {
                        r17 = length;
                        if (j.D(strW, "1", false)) {
                        }
                        r11++;
                        qVar2 = qVar3;
                        length = r17;
                    } else {
                        r17 = length;
                    }
                    if ((j.x("Content-Length", strO) || j.x("Content-Encoding", strO) || j.x("Content-Type", strO)) || !C0255a.b(strO) || qVar.l(strO) == null) {
                        aVar4.b(strO, strW);
                    }
                    r11++;
                    qVar2 = qVar3;
                    length = r17;
                }
                int length2 = qVar.f14512a.length / 2;
                for (int r82 = 0; r82 < length2; r82++) {
                    String strO2 = qVar.o(r82);
                    if (!(j.x("Content-Length", strO2) || j.x("Content-Encoding", strO2) || j.x("Content-Type", strO2)) && C0255a.b(strO2)) {
                        aVar4.b(strO2, qVar.w(r82));
                    }
                }
                aVar3.f = aVar4.c().u();
                aVar3.f14407k = b0VarC.f14395m;
                aVar3.f14408l = b0VarC.f14396n;
                b0 b0VarA4 = C0255a.a(c0255a, b0Var);
                b0.a.b("cacheResponse", b0VarA4);
                aVar3.f14405i = b0VarA4;
                b0 b0VarA5 = C0255a.a(c0255a, b0VarC);
                b0.a.b("networkResponse", b0VarA5);
                aVar3.f14404h = b0VarA5;
                aVar3.a();
                d0 d0Var = b0VarC.f14391h;
                h.c(d0Var);
                d0Var.close();
                h.c(null);
                throw null;
            }
            d0 d0Var2 = b0Var.f14391h;
            if (d0Var2 != null) {
                c.c(d0Var2);
            }
        }
        b0.a aVar5 = new b0.a(b0VarC);
        b0 b0VarA6 = C0255a.a(c0255a, b0Var);
        b0.a.b("cacheResponse", b0VarA6);
        aVar5.f14405i = b0VarA6;
        b0 b0VarA7 = C0255a.a(c0255a, b0VarC);
        b0.a.b("networkResponse", b0VarA7);
        aVar5.f14404h = b0VarA7;
        return aVar5.a();
    }
}
