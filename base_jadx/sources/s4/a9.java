package s4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a9 implements q6.b {

    /* renamed from: a, reason: collision with root package name */
    public final int f14895a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f14896b;

    /* renamed from: c, reason: collision with root package name */
    public Object f14897c;

    public a9(a7 a7Var, int r32) {
        this.f14897c = new m8();
        this.f14896b = a7Var;
        synchronized (e9.class) {
            if (e9.f14967a == null) {
                e9.f14967a = new e9();
            }
        }
        this.f14895a = r32;
    }

    public /* synthetic */ a9(q6.b[] bVarArr) {
        this.f14895a = 1024;
        this.f14896b = bVarArr;
        this.f14897c = new q6.a();
    }

    public final byte[] a(int r10) throws IOException {
        ((m8) this.f14897c).f15093i = Boolean.valueOf(r10 == 0);
        m8 m8Var = (m8) this.f14897c;
        m8Var.f15091g = Boolean.FALSE;
        Object obj = this.f14896b;
        m8Var.getClass();
        ((a7) obj).f14890a = new n8(m8Var);
        try {
            synchronized (e9.class) {
                if (e9.f14967a == null) {
                    e9.f14967a = new e9();
                }
            }
            d9 d9Var = d9.f14955b;
            if (r10 != 0) {
                a7 a7Var = (a7) obj;
                a7Var.getClass();
                b7 b7Var = new b7(a7Var);
                d1 d1Var = new d1();
                d9Var.a(d1Var);
                HashMap map = new HashMap(d1Var.f14948a);
                HashMap map2 = new HashMap(d1Var.f14949b);
                c1 c1Var = d1Var.f14950c;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    new b1(byteArrayOutputStream, map, map2, c1Var).h(b7Var);
                } catch (IOException unused) {
                }
                return byteArrayOutputStream.toByteArray();
            }
            a7 a7Var2 = (a7) obj;
            a7Var2.getClass();
            b7 b7Var2 = new b7(a7Var2);
            v6.e eVar = new v6.e();
            d9Var.a(eVar);
            eVar.f18252d = true;
            StringWriter stringWriter = new StringWriter();
            try {
                v6.f fVar = new v6.f(stringWriter, eVar.f18249a, eVar.f18250b, eVar.f18251c, eVar.f18252d);
                fVar.f(b7Var2);
                fVar.h();
                fVar.f18255b.flush();
            } catch (IOException unused2) {
            }
            return stringWriter.toString().getBytes("utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e10);
        }
    }

    @Override // q6.b
    public final StackTraceElement[] e(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int r12 = this.f14895a;
        if (length <= r12) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrE = stackTraceElementArr;
        for (q6.b bVar : (q6.b[]) this.f14896b) {
            if (stackTraceElementArrE.length <= r12) {
                break;
            }
            stackTraceElementArrE = bVar.e(stackTraceElementArr);
        }
        return stackTraceElementArrE.length > r12 ? ((q6.a) this.f14897c).e(stackTraceElementArrE) : stackTraceElementArrE;
    }
}
