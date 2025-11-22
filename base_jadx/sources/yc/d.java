package yc;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ed.d0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import org.bouncycastle.asn1.eac.CertificateBody;
import yc.q;
import yc.t;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final c[] f19520a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map<ed.h, Integer> f19521b;

    public static final class a {

        /* renamed from: b, reason: collision with root package name */
        public final d0 f19523b;

        /* renamed from: e, reason: collision with root package name */
        public int f19526e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public final int f19527g = 4096;

        /* renamed from: h, reason: collision with root package name */
        public int f19528h = 4096;

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f19522a = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public c[] f19524c = new c[8];

        /* renamed from: d, reason: collision with root package name */
        public int f19525d = 7;

        public a(q.b bVar) {
            this.f19523b = ed.v.b(bVar);
        }

        public final int a(int r52) {
            int r22;
            int r02 = 0;
            if (r52 > 0) {
                int length = this.f19524c.length;
                while (true) {
                    length--;
                    r22 = this.f19525d;
                    if (length < r22 || r52 <= 0) {
                        break;
                    }
                    c cVar = this.f19524c[length];
                    kotlin.jvm.internal.h.c(cVar);
                    int r23 = cVar.f19517a;
                    r52 -= r23;
                    this.f -= r23;
                    this.f19526e--;
                    r02++;
                }
                c[] cVarArr = this.f19524c;
                System.arraycopy(cVarArr, r22 + 1, cVarArr, r22 + 1 + r02, this.f19526e);
                this.f19525d += r02;
            }
            return r02;
        }

        public final ed.h b(int r52) throws IOException {
            c cVar;
            if (!(r52 >= 0 && r52 <= d.f19520a.length - 1)) {
                int length = this.f19525d + 1 + (r52 - d.f19520a.length);
                if (length >= 0) {
                    c[] cVarArr = this.f19524c;
                    if (length < cVarArr.length) {
                        cVar = cVarArr[length];
                        kotlin.jvm.internal.h.c(cVar);
                    }
                }
                throw new IOException("Header index too large " + (r52 + 1));
            }
            cVar = d.f19520a[r52];
            return cVar.f19518b;
        }

        public final void c(c cVar) {
            this.f19522a.add(cVar);
            int r02 = this.f19528h;
            int r22 = cVar.f19517a;
            if (r22 > r02) {
                m9.i.m0(this.f19524c, null);
                this.f19525d = this.f19524c.length - 1;
                this.f19526e = 0;
                this.f = 0;
                return;
            }
            a((this.f + r22) - r02);
            int r03 = this.f19526e + 1;
            c[] cVarArr = this.f19524c;
            if (r03 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f19525d = this.f19524c.length - 1;
                this.f19524c = cVarArr2;
            }
            int r04 = this.f19525d;
            this.f19525d = r04 - 1;
            this.f19524c[r04] = cVar;
            this.f19526e++;
            this.f += r22;
        }

        public final ed.h d() throws IOException {
            int r52;
            d0 source = this.f19523b;
            byte b10 = source.readByte();
            byte[] bArr = sc.c.f15380a;
            int r12 = b10 & 255;
            int r42 = 0;
            boolean z10 = (r12 & 128) == 128;
            long jE = e(r12, CertificateBody.profileType);
            if (!z10) {
                return source.z(jE);
            }
            ed.e eVar = new ed.e();
            int[] r22 = t.f19642a;
            kotlin.jvm.internal.h.f(source, "source");
            t.a aVar = t.f19644c;
            t.a aVar2 = aVar;
            int r32 = 0;
            for (long j10 = 0; j10 < jE; j10++) {
                byte b11 = source.readByte();
                byte[] bArr2 = sc.c.f15380a;
                r42 = (r42 << 8) | (b11 & 255);
                r32 += 8;
                while (r32 >= 8) {
                    int r10 = r32 - 8;
                    t.a[] aVarArr = aVar2.f19645a;
                    kotlin.jvm.internal.h.c(aVarArr);
                    aVar2 = aVarArr[(r42 >>> r10) & 255];
                    kotlin.jvm.internal.h.c(aVar2);
                    if (aVar2.f19645a == null) {
                        eVar.O(aVar2.f19646b);
                        r32 -= aVar2.f19647c;
                        aVar2 = aVar;
                    } else {
                        r32 = r10;
                    }
                }
            }
            while (r32 > 0) {
                t.a[] aVarArr2 = aVar2.f19645a;
                kotlin.jvm.internal.h.c(aVarArr2);
                t.a aVar3 = aVarArr2[(r42 << (8 - r32)) & 255];
                kotlin.jvm.internal.h.c(aVar3);
                if (aVar3.f19645a != null || (r52 = aVar3.f19647c) > r32) {
                    break;
                }
                eVar.O(aVar3.f19646b);
                r32 -= r52;
                aVar2 = aVar;
            }
            return eVar.n();
        }

        public final int e(int r32, int r42) throws IOException {
            int r33 = r32 & r42;
            if (r33 < r42) {
                return r33;
            }
            int r34 = 0;
            while (true) {
                byte b10 = this.f19523b.readByte();
                byte[] bArr = sc.c.f15380a;
                int r02 = b10 & 255;
                if ((r02 & 128) == 0) {
                    return r42 + (r02 << r34);
                }
                r42 += (r02 & CertificateBody.profileType) << r34;
                r34 += 7;
            }
        }
    }

    public static final class b {

        /* renamed from: b, reason: collision with root package name */
        public boolean f19530b;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f19534g;

        /* renamed from: i, reason: collision with root package name */
        public final ed.e f19536i;

        /* renamed from: h, reason: collision with root package name */
        public final boolean f19535h = true;

        /* renamed from: a, reason: collision with root package name */
        public int f19529a = Integer.MAX_VALUE;

        /* renamed from: c, reason: collision with root package name */
        public int f19531c = 4096;

        /* renamed from: d, reason: collision with root package name */
        public c[] f19532d = new c[8];

        /* renamed from: e, reason: collision with root package name */
        public int f19533e = 7;

        public b(ed.e eVar) {
            this.f19536i = eVar;
        }

        public final void a(int r52) {
            int r22;
            if (r52 > 0) {
                int length = this.f19532d.length - 1;
                int r12 = 0;
                while (true) {
                    r22 = this.f19533e;
                    if (length < r22 || r52 <= 0) {
                        break;
                    }
                    c cVar = this.f19532d[length];
                    kotlin.jvm.internal.h.c(cVar);
                    r52 -= cVar.f19517a;
                    int r23 = this.f19534g;
                    c cVar2 = this.f19532d[length];
                    kotlin.jvm.internal.h.c(cVar2);
                    this.f19534g = r23 - cVar2.f19517a;
                    this.f--;
                    r12++;
                    length--;
                }
                c[] cVarArr = this.f19532d;
                int r24 = r22 + 1;
                System.arraycopy(cVarArr, r24, cVarArr, r24 + r12, this.f);
                c[] cVarArr2 = this.f19532d;
                int r02 = this.f19533e + 1;
                Arrays.fill(cVarArr2, r02, r02 + r12, (Object) null);
                this.f19533e += r12;
            }
        }

        public final void b(c cVar) {
            int r02 = this.f19531c;
            int r22 = cVar.f19517a;
            if (r22 > r02) {
                m9.i.m0(this.f19532d, null);
                this.f19533e = this.f19532d.length - 1;
                this.f = 0;
                this.f19534g = 0;
                return;
            }
            a((this.f19534g + r22) - r02);
            int r03 = this.f + 1;
            c[] cVarArr = this.f19532d;
            if (r03 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f19533e = this.f19532d.length - 1;
                this.f19532d = cVarArr2;
            }
            int r04 = this.f19533e;
            this.f19533e = r04 - 1;
            this.f19532d[r04] = cVar;
            this.f++;
            this.f19534g += r22;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c(ed.h r10) throws java.io.IOException {
            /*
                r9 = this;
                java.lang.String r0 = "data"
                kotlin.jvm.internal.h.f(r10, r0)
                boolean r0 = r9.f19535h
                r1 = 0
                if (r0 == 0) goto L81
                int[] r0 = yc.t.f19642a
                int r0 = r10.r()
                r2 = 0
                r5 = r2
                r4 = 0
            L14:
                if (r4 >= r0) goto L27
                byte r7 = r10.x(r4)
                byte[] r8 = sc.c.f15380a
                r7 = r7 & 255(0xff, float:3.57E-43)
                byte[] r8 = yc.t.f19643b
                r7 = r8[r7]
                long r7 = (long) r7
                long r5 = r5 + r7
                int r4 = r4 + 1
                goto L14
            L27:
                r0 = 7
                long r7 = (long) r0
                long r5 = r5 + r7
                r0 = 3
                long r4 = r5 >> r0
                int r0 = (int) r4
                int r4 = r10.r()
                if (r0 >= r4) goto L81
                ed.e r0 = new ed.e
                r0.<init>()
                int[] r4 = yc.t.f19642a
                int r4 = r10.r()
                r5 = r2
                r2 = 0
            L41:
                if (r1 >= r4) goto L67
                byte r3 = r10.x(r1)
                byte[] r7 = sc.c.f15380a
                r3 = r3 & 255(0xff, float:3.57E-43)
                int[] r7 = yc.t.f19642a
                r7 = r7[r3]
                byte[] r8 = yc.t.f19643b
                r3 = r8[r3]
                long r5 = r5 << r3
                long r7 = (long) r7
                long r5 = r5 | r7
                int r2 = r2 + r3
            L57:
                r3 = 8
                if (r2 < r3) goto L64
                int r2 = r2 + (-8)
                long r7 = r5 >> r2
                int r3 = (int) r7
                r0.O(r3)
                goto L57
            L64:
                int r1 = r1 + 1
                goto L41
            L67:
                if (r2 <= 0) goto L76
                int r10 = 8 - r2
                long r3 = r5 << r10
                r5 = 255(0xff, double:1.26E-321)
                long r1 = r5 >>> r2
                long r1 = r1 | r3
                int r10 = (int) r1
                r0.O(r10)
            L76:
                ed.h r10 = r0.n()
                int r0 = r10.r()
                r1 = 128(0x80, float:1.8E-43)
                goto L85
            L81:
                int r0 = r10.r()
            L85:
                r2 = 127(0x7f, float:1.78E-43)
                r9.e(r0, r2, r1)
                ed.e r0 = r9.f19536i
                r0.F(r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: yc.d.b.c(ed.h):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x006b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void d(java.util.ArrayList r14) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 252
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: yc.d.b.d(java.util.ArrayList):void");
        }

        public final void e(int r22, int r32, int r42) {
            ed.e eVar = this.f19536i;
            if (r22 < r32) {
                eVar.O(r22 | r42);
                return;
            }
            eVar.O(r42 | r32);
            int r23 = r22 - r32;
            while (r23 >= 128) {
                eVar.O(128 | (r23 & CertificateBody.profileType));
                r23 >>>= 7;
            }
            eVar.O(r23);
        }
    }

    static {
        c cVar = new c(c.f19516i, "");
        ed.h hVar = c.f;
        ed.h hVar2 = c.f19514g;
        ed.h hVar3 = c.f19515h;
        ed.h hVar4 = c.f19513e;
        c[] cVarArr = {cVar, new c(hVar, ShareTarget.METHOD_GET), new c(hVar, ShareTarget.METHOD_POST), new c(hVar2, "/"), new c(hVar2, "/index.html"), new c(hVar3, "http"), new c(hVar3, "https"), new c(hVar4, "200"), new c(hVar4, "204"), new c(hVar4, "206"), new c(hVar4, "304"), new c(hVar4, "400"), new c(hVar4, "404"), new c(hVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c(TypedValues.TransitionType.S_FROM, ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f19520a = cVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int r32 = 0; r32 < 61; r32++) {
            if (!linkedHashMap.containsKey(cVarArr[r32].f19518b)) {
                linkedHashMap.put(cVarArr[r32].f19518b, Integer.valueOf(r32));
            }
        }
        Map<ed.h, Integer> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        kotlin.jvm.internal.h.e(mapUnmodifiableMap, "Collections.unmodifiableMap(result)");
        f19521b = mapUnmodifiableMap;
    }

    public static void a(ed.h name) throws IOException {
        kotlin.jvm.internal.h.f(name, "name");
        int r02 = name.r();
        for (int r12 = 0; r12 < r02; r12++) {
            byte b10 = (byte) 65;
            byte b11 = (byte) 90;
            byte bX = name.x(r12);
            if (b10 <= bX && b11 >= bX) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(name.G()));
            }
        }
    }
}
