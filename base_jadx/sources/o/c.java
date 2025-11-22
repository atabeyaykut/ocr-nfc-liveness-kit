package o;

import c5.y;
import ed.b0;
import ed.d0;
import java.io.IOException;
import kotlin.jvm.internal.h;
import mc.n;
import rc.q;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final l9.e f11022a = y.v(3, new a(this));

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f11023b = y.v(3, new b(this));

    /* renamed from: c, reason: collision with root package name */
    public final long f11024c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11025d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11026e;
    public final q f;

    public c(d0 d0Var) throws NumberFormatException {
        this.f11024c = Long.parseLong(d0Var.a0());
        this.f11025d = Long.parseLong(d0Var.a0());
        this.f11026e = Integer.parseInt(d0Var.a0()) > 0;
        int r02 = Integer.parseInt(d0Var.a0());
        q.a aVar = new q.a();
        int r42 = 0;
        while (r42 < r02) {
            r42++;
            String strA0 = d0Var.a0();
            int r6 = n.M(strA0, ':', 0, false, 6);
            if (!(r6 != -1)) {
                throw new IllegalArgumentException("Unexpected header: ".concat(strA0).toString());
            }
            String strSubstring = strA0.substring(0, r6);
            h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String string = n.i0(strSubstring).toString();
            String strSubstring2 = strA0.substring(r6 + 1);
            h.e(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            aVar.a(string, strSubstring2);
        }
        this.f = aVar.c();
    }

    public final void a(b0 b0Var) throws IOException {
        b0Var.m0(this.f11024c);
        b0Var.writeByte(10);
        b0Var.m0(this.f11025d);
        b0Var.writeByte(10);
        b0Var.m0(this.f11026e ? 1L : 0L);
        b0Var.writeByte(10);
        q qVar = this.f;
        b0Var.m0(qVar.f14512a.length / 2);
        b0Var.writeByte(10);
        int length = qVar.f14512a.length / 2;
        for (int r32 = 0; r32 < length; r32++) {
            b0Var.S(qVar.o(r32));
            b0Var.S(": ");
            b0Var.S(qVar.w(r32));
            b0Var.writeByte(10);
        }
    }

    public c(rc.b0 b0Var) {
        this.f11024c = b0Var.f14395m;
        this.f11025d = b0Var.f14396n;
        this.f11026e = b0Var.f != null;
        this.f = b0Var.f14390g;
    }
}
