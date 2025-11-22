package okhttp3.internal.publicsuffix;

import a0.b;
import b8.f;
import ed.d0;
import ed.p;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import lc.w;
import m9.t;
import m9.v;
import mc.n;
import sc.c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "", "<init>", "()V", "a", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class PublicSuffixDatabase {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f11339e;
    public static final List<String> f;

    /* renamed from: g, reason: collision with root package name */
    public static final PublicSuffixDatabase f11340g;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f11341a = new AtomicBoolean(false);

    /* renamed from: b, reason: collision with root package name */
    public final CountDownLatch f11342b = new CountDownLatch(1);

    /* renamed from: c, reason: collision with root package name */
    public byte[] f11343c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f11344d;

    public static final class a {
        public static final String a(byte[] bArr, byte[][] bArr2, int r20) {
            int r10;
            boolean z10;
            int r92;
            int r93;
            byte[] bArr3 = PublicSuffixDatabase.f11339e;
            int length = bArr.length;
            int r42 = 0;
            while (r42 < length) {
                int r52 = (r42 + length) / 2;
                while (r52 > -1 && bArr[r52] != ((byte) 10)) {
                    r52--;
                }
                int r53 = r52 + 1;
                int r94 = 1;
                while (true) {
                    r10 = r53 + r94;
                    if (bArr[r10] == ((byte) 10)) {
                        break;
                    }
                    r94++;
                }
                int r72 = r10 - r53;
                int r11 = r20;
                boolean z11 = false;
                int r12 = 0;
                int r13 = 0;
                while (true) {
                    if (z11) {
                        r92 = 46;
                        z10 = false;
                    } else {
                        byte b10 = bArr2[r11][r12];
                        byte[] bArr4 = c.f15380a;
                        int r14 = b10 & 255;
                        z10 = z11;
                        r92 = r14;
                    }
                    byte b11 = bArr[r53 + r13];
                    byte[] bArr5 = c.f15380a;
                    r93 = r92 - (b11 & 255);
                    if (r93 != 0) {
                        break;
                    }
                    r13++;
                    r12++;
                    if (r13 == r72) {
                        break;
                    }
                    if (bArr2[r11].length != r12) {
                        z11 = z10;
                    } else {
                        if (r11 == bArr2.length - 1) {
                            break;
                        }
                        r11++;
                        z11 = true;
                        r12 = -1;
                    }
                }
                if (r93 >= 0) {
                    if (r93 <= 0) {
                        int r6 = r72 - r13;
                        int length2 = bArr2[r11].length - r12;
                        int length3 = bArr2.length;
                        for (int r112 = r11 + 1; r112 < length3; r112++) {
                            length2 += bArr2[r112].length;
                        }
                        if (length2 >= r6) {
                            if (length2 <= r6) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                h.e(UTF_8, "UTF_8");
                                return new String(bArr, r53, r72, UTF_8);
                            }
                        }
                    }
                    r42 = r10 + 1;
                }
                length = r53 - 1;
            }
            return null;
        }
    }

    static {
        new a();
        f11339e = new byte[]{(byte) 42};
        f = f.S("*");
        f11340g = new PublicSuffixDatabase();
    }

    public static List c(String str) {
        List listX = n.X(str, new char[]{'.'});
        return h.a((String) t.i1(listX), "") ? t.X0(listX) : listX;
    }

    public final String a(String str) throws InterruptedException {
        String strA;
        String strA2;
        String strA3;
        List<String> listX;
        String unicodeDomain = IDN.toUnicode(str);
        h.e(unicodeDomain, "unicodeDomain");
        List listC = c(unicodeDomain);
        int r32 = 0;
        if (this.f11341a.get() || !this.f11341a.compareAndSet(false, true)) {
            try {
                this.f11342b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z10 = false;
            while (true) {
                try {
                    try {
                        try {
                            b();
                            break;
                        } catch (IOException e10) {
                            zc.h.f20045c.getClass();
                            zc.h.f20043a.getClass();
                            zc.h.i(5, "Failed to read public suffix list", e10);
                            if (z10) {
                            }
                        }
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z10 = true;
                    }
                } catch (Throwable th2) {
                    if (z10) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
        }
        if (!(this.f11343c != null)) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.".toString());
        }
        int size = listC.size();
        byte[][] bArr = new byte[size][];
        for (int r52 = 0; r52 < size; r52++) {
            String str2 = (String) listC.get(r52);
            Charset UTF_8 = StandardCharsets.UTF_8;
            h.e(UTF_8, "UTF_8");
            if (str2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = str2.getBytes(UTF_8);
            h.e(bytes, "(this as java.lang.String).getBytes(charset)");
            bArr[r52] = bytes;
        }
        int r53 = 0;
        while (true) {
            if (r53 >= size) {
                strA = null;
                break;
            }
            byte[] bArr2 = this.f11343c;
            if (bArr2 == null) {
                h.n("publicSuffixListBytes");
                throw null;
            }
            strA = a.a(bArr2, bArr, r53);
            if (strA != null) {
                break;
            }
            r53++;
        }
        if (size > 1) {
            byte[][] bArr3 = (byte[][]) bArr.clone();
            int length = bArr3.length - 1;
            for (int r10 = 0; r10 < length; r10++) {
                bArr3[r10] = f11339e;
                byte[] bArr4 = this.f11343c;
                if (bArr4 == null) {
                    h.n("publicSuffixListBytes");
                    throw null;
                }
                strA2 = a.a(bArr4, bArr3, r10);
                if (strA2 != null) {
                    break;
                }
            }
            strA2 = null;
        } else {
            strA2 = null;
        }
        if (strA2 != null) {
            int r12 = size - 1;
            for (int r54 = 0; r54 < r12; r54++) {
                byte[] bArr5 = this.f11344d;
                if (bArr5 == null) {
                    h.n("publicSuffixExceptionListBytes");
                    throw null;
                }
                strA3 = a.a(bArr5, bArr, r54);
                if (strA3 != null) {
                    break;
                }
            }
            strA3 = null;
        } else {
            strA3 = null;
        }
        if (strA3 != null) {
            listX = n.X("!".concat(strA3), new char[]{'.'});
        } else if (strA == null && strA2 == null) {
            listX = f;
        } else {
            v vVar = v.f10173a;
            List<String> listX2 = strA != null ? n.X(strA, new char[]{'.'}) : vVar;
            listX = strA2 != null ? n.X(strA2, new char[]{'.'}) : vVar;
            if (listX2.size() > listX.size()) {
                listX = listX2;
            }
        }
        if (listC.size() == listX.size() && listX.get(0).charAt(0) != '!') {
            return null;
        }
        char cCharAt = listX.get(0).charAt(0);
        int size2 = listC.size();
        int size3 = listX.size();
        if (cCharAt != '!') {
            size3++;
        }
        lc.h hVarU0 = w.U0(t.U0(c(str)), size2 - size3);
        h.f(hVarU0, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        for (Object obj : hVarU0) {
            r32++;
            if (r32 > 1) {
                sb2.append((CharSequence) ".");
            }
            b.g(sb2, obj, null);
        }
        sb2.append((CharSequence) "");
        String string = sb2.toString();
        h.e(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public final void b() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        d0 d0VarB = ed.v.b(new p(ed.v.f(resourceAsStream)));
        try {
            long j10 = d0VarB.readInt();
            d0VarB.l0(j10);
            byte[] bArrK = d0VarB.f5301b.k(j10);
            long j11 = d0VarB.readInt();
            d0VarB.l0(j11);
            byte[] bArrK2 = d0VarB.f5301b.k(j11);
            m mVar = m.f9594a;
            x5.a.f(d0VarB, null);
            synchronized (this) {
                this.f11343c = bArrK;
                this.f11344d = bArrK2;
            }
            this.f11342b.countDown();
        } finally {
        }
    }
}
