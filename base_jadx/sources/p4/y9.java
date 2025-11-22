package p4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class y9 {

    /* renamed from: a, reason: collision with root package name */
    public final q7 f12793a;

    /* renamed from: b, reason: collision with root package name */
    public f9 f12794b = new f9();

    /* renamed from: c, reason: collision with root package name */
    public final int f12795c;

    public y9(q7 q7Var, int r32) {
        this.f12793a = q7Var;
        synchronized (fa.class) {
            if (fa.f12353a == null) {
                fa.f12353a = new fa();
            }
        }
        this.f12795c = r32;
    }

    public final byte[] a(int r10) throws IOException {
        this.f12794b.f12351i = Boolean.valueOf(r10 == 0);
        f9 f9Var = this.f12794b;
        f9Var.f12349g = Boolean.FALSE;
        g9 g9Var = new g9(f9Var);
        q7 q7Var = this.f12793a;
        q7Var.f12617a = g9Var;
        try {
            synchronized (fa.class) {
                if (fa.f12353a == null) {
                    fa.f12353a = new fa();
                }
            }
            com.google.android.gms.internal.clearcut.d0 d0Var = com.google.android.gms.internal.clearcut.d0.f3069d;
            if (r10 != 0) {
                r7 r7Var = new r7(q7Var);
                r1 r1Var = new r1();
                d0Var.l(r1Var);
                HashMap map = new HashMap(r1Var.f12635a);
                HashMap map2 = new HashMap(r1Var.f12636b);
                q1 q1Var = r1Var.f12637c;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    new p1(byteArrayOutputStream, map, map2, q1Var).h(r7Var);
                } catch (IOException unused) {
                }
                return byteArrayOutputStream.toByteArray();
            }
            r7 r7Var2 = new r7(q7Var);
            v6.e eVar = new v6.e();
            d0Var.l(eVar);
            eVar.f18252d = true;
            StringWriter stringWriter = new StringWriter();
            try {
                v6.f fVar = new v6.f(stringWriter, eVar.f18249a, eVar.f18250b, eVar.f18251c, eVar.f18252d);
                fVar.f(r7Var2);
                fVar.h();
                fVar.f18255b.flush();
            } catch (IOException unused2) {
            }
            return stringWriter.toString().getBytes("utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e10);
        }
    }
}
