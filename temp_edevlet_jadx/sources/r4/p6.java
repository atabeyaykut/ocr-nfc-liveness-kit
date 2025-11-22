package r4;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class p6 implements l6 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final c6.t f14228a;

    /* renamed from: b, reason: collision with root package name */
    public final c6.t f14229b;

    /* renamed from: c, reason: collision with root package name */
    public final i6 f14230c;

    public p6(Context context, i6 i6Var) {
        this.f14230c = i6Var;
        s2.a aVar = s2.a.f14855e;
        u2.w.b(context);
        final u2.t tVarC = u2.w.a().c(aVar);
        if (s2.a.f14854d.contains(new r2.b("json"))) {
            this.f14228a = new c6.t(new a7.b() { // from class: r4.n6
                @Override // a7.b
                public final Object get() {
                    return tVarC.a("FIREBASE_ML_SDK", new r2.b("json"), c5.y.f2137q);
                }
            });
        }
        this.f14229b = new c6.t(new a7.b() { // from class: r4.o6
            @Override // a7.b
            public final Object get() {
                return tVarC.a("FIREBASE_ML_SDK", new r2.b("proto"), c5.z.f2174b);
            }
        });
    }

    @VisibleForTesting
    public static r2.a b(i6 i6Var, p4.c7 c7Var) throws IOException {
        byte[] byteArray;
        int r82 = i6Var.a();
        ((a6) c7Var.f12290b).f14078i = Boolean.valueOf(r82 == 0);
        a6 a6Var = (a6) c7Var.f12290b;
        a6Var.f14076g = Boolean.FALSE;
        ((pf.k) c7Var.f12289a).f13190a = new b6(a6Var);
        try {
            t6.a();
            c5.e0 e0Var = c5.e0.f1497m;
            if (r82 == 0) {
                pf.k kVar = (pf.k) c7Var.f12289a;
                kVar.getClass();
                r4 r4Var = new r4(kVar);
                v6.e eVar = new v6.e();
                e0Var.d(eVar);
                eVar.f18252d = true;
                StringWriter stringWriter = new StringWriter();
                try {
                    v6.f fVar = new v6.f(stringWriter, eVar.f18249a, eVar.f18250b, eVar.f18251c, eVar.f18252d);
                    fVar.f(r4Var);
                    fVar.h();
                    fVar.f18255b.flush();
                } catch (IOException unused) {
                }
                byteArray = stringWriter.toString().getBytes("utf-8");
            } else {
                pf.k kVar2 = (pf.k) c7Var.f12289a;
                kVar2.getClass();
                r4 r4Var2 = new r4(kVar2);
                b bVar = new b();
                e0Var.d(bVar);
                HashMap map = new HashMap(bVar.f14082a);
                HashMap map2 = new HashMap(bVar.f14083b);
                a aVar = bVar.f14084c;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    new g7(byteArrayOutputStream, map, map2, aVar).h(r4Var2);
                } catch (IOException unused2) {
                }
                byteArray = byteArrayOutputStream.toByteArray();
            }
            return new r2.a(byteArray, r2.d.VERY_LOW);
        } catch (UnsupportedEncodingException e10) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e10);
        }
    }

    @Override // r4.l6
    public final void a(p4.c7 c7Var) {
        c6.t tVar;
        i6 i6Var = this.f14230c;
        if (i6Var.a() == 0) {
            tVar = this.f14228a;
            if (tVar == null) {
                return;
            }
        } else {
            tVar = this.f14229b;
        }
        ((r2.f) tVar.get()).a(b(i6Var, c7Var));
    }
}
