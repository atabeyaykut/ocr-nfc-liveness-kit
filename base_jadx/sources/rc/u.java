package rc;

import androidx.browser.trusted.sharing.ShareTarget;
import ed.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import rc.t;

/* loaded from: classes2.dex */
public final class u extends a0 {
    public static final t f;

    /* renamed from: g, reason: collision with root package name */
    public static final t f14537g;

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f14538h;

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f14539i;

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f14540j;

    /* renamed from: b, reason: collision with root package name */
    public final t f14541b;

    /* renamed from: c, reason: collision with root package name */
    public long f14542c;

    /* renamed from: d, reason: collision with root package name */
    public final ed.h f14543d;

    /* renamed from: e, reason: collision with root package name */
    public final List<b> f14544e;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final ed.h f14545a;

        /* renamed from: b, reason: collision with root package name */
        public t f14546b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f14547c;

        public a() {
            String string = UUID.randomUUID().toString();
            kotlin.jvm.internal.h.e(string, "UUID.randomUUID().toString()");
            ed.h hVar = ed.h.f5315d;
            this.f14545a = h.a.b(string);
            this.f14546b = u.f;
            this.f14547c = new ArrayList();
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final q f14548a;

        /* renamed from: b, reason: collision with root package name */
        public final a0 f14549b;

        public b(q qVar, a0 a0Var) {
            this.f14548a = qVar;
            this.f14549b = a0Var;
        }
    }

    static {
        t.f.getClass();
        f = t.a.a("multipart/mixed");
        t.a.a("multipart/alternative");
        t.a.a("multipart/digest");
        t.a.a("multipart/parallel");
        f14537g = t.a.a(ShareTarget.ENCODING_TYPE_MULTIPART);
        f14538h = new byte[]{(byte) 58, (byte) 32};
        f14539i = new byte[]{(byte) 13, (byte) 10};
        byte b10 = (byte) 45;
        f14540j = new byte[]{b10, b10};
    }

    public u(ed.h boundaryByteString, t type, List<b> list) {
        kotlin.jvm.internal.h.f(boundaryByteString, "boundaryByteString");
        kotlin.jvm.internal.h.f(type, "type");
        this.f14543d = boundaryByteString;
        this.f14544e = list;
        t.a aVar = t.f;
        String str = type + "; boundary=" + boundaryByteString.G();
        aVar.getClass();
        this.f14541b = t.a.a(str);
        this.f14542c = -1L;
    }

    @Override // rc.a0
    public final long a() throws IOException {
        long j10 = this.f14542c;
        if (j10 != -1) {
            return j10;
        }
        long jD = d(null, true);
        this.f14542c = jD;
        return jD;
    }

    @Override // rc.a0
    public final t b() {
        return this.f14541b;
    }

    @Override // rc.a0
    public final void c(ed.f fVar) throws IOException {
        d(fVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long d(ed.f fVar, boolean z10) throws IOException {
        ed.e eVar;
        ed.f eVar2;
        if (z10) {
            eVar2 = new ed.e();
            eVar = eVar2;
        } else {
            eVar = 0;
            eVar2 = fVar;
        }
        List<b> list = this.f14544e;
        int size = list.size();
        long j10 = 0;
        int r82 = 0;
        while (true) {
            ed.h hVar = this.f14543d;
            byte[] bArr = f14540j;
            byte[] bArr2 = f14539i;
            if (r82 >= size) {
                kotlin.jvm.internal.h.c(eVar2);
                eVar2.write(bArr);
                eVar2.C(hVar);
                eVar2.write(bArr);
                eVar2.write(bArr2);
                if (!z10) {
                    return j10;
                }
                kotlin.jvm.internal.h.c(eVar);
                long j11 = j10 + eVar.f5304b;
                eVar.b();
                return j11;
            }
            b bVar = list.get(r82);
            q qVar = bVar.f14548a;
            kotlin.jvm.internal.h.c(eVar2);
            eVar2.write(bArr);
            eVar2.C(hVar);
            eVar2.write(bArr2);
            if (qVar != null) {
                int length = qVar.f14512a.length / 2;
                for (int r10 = 0; r10 < length; r10++) {
                    eVar2.S(qVar.o(r10)).write(f14538h).S(qVar.w(r10)).write(bArr2);
                }
            }
            a0 a0Var = bVar.f14549b;
            t tVarB = a0Var.b();
            if (tVarB != null) {
                eVar2.S("Content-Type: ").S(tVarB.f14534a).write(bArr2);
            }
            long jA = a0Var.a();
            if (jA != -1) {
                eVar2.S("Content-Length: ").m0(jA).write(bArr2);
            } else if (z10) {
                kotlin.jvm.internal.h.c(eVar);
                eVar.b();
                return -1L;
            }
            eVar2.write(bArr2);
            if (z10) {
                j10 += jA;
            } else {
                a0Var.c(eVar2);
            }
            eVar2.write(bArr2);
            r82++;
        }
    }
}
