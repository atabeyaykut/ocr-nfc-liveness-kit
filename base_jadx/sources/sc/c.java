package sc;

import androidx.core.location.LocationRequestCompat;
import b8.f;
import ed.e;
import ed.g;
import ed.h;
import ed.j0;
import ed.k0;
import ed.x;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import m9.t;
import mc.d;
import mc.j;
import mc.n;
import org.bouncycastle.asn1.eac.CertificateBody;
import rc.a0;
import rc.b0;
import rc.c0;
import rc.d0;
import rc.q;
import rc.r;
import rc.v;
import rc.z;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f15380a;

    /* renamed from: b, reason: collision with root package name */
    public static final q f15381b;

    /* renamed from: c, reason: collision with root package name */
    public static final c0 f15382c;

    /* renamed from: d, reason: collision with root package name */
    public static final TimeZone f15383d;

    /* renamed from: e, reason: collision with root package name */
    public static final d f15384e;
    public static final String f;

    static {
        byte[] bArr = new byte[0];
        f15380a = bArr;
        q.f14511b.getClass();
        f15381b = q.b.c(new String[0]);
        d0.f14433a.getClass();
        e eVar = new e();
        eVar.m31write(bArr, 0, 0);
        long j10 = 0;
        f15382c = new c0(null, j10, eVar);
        a0.f14383a.getClass();
        if ((j10 | j10) < 0 || j10 > j10 || j10 - j10 < j10) {
            throw new ArrayIndexOutOfBoundsException();
        }
        new z(null, bArr, 0, 0);
        h hVar = h.f5315d;
        x.a.b(h.a.a("efbbbf"), h.a.a("feff"), h.a.a("fffe"), h.a.a("0000ffff"), h.a.a("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        kotlin.jvm.internal.h.c(timeZone);
        f15383d = timeZone;
        f15384e = new d("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        String strU = n.U("okhttp3.", v.class.getName());
        if (j.w(strU, "Client", false)) {
            strU = strU.substring(0, strU.length() - "Client".length());
            kotlin.jvm.internal.h.e(strU, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        f = strU;
    }

    public static final boolean a(r canReuseConnectionFor, r other) {
        kotlin.jvm.internal.h.f(canReuseConnectionFor, "$this$canReuseConnectionFor");
        kotlin.jvm.internal.h.f(other, "other");
        return kotlin.jvm.internal.h.a(canReuseConnectionFor.f14520e, other.f14520e) && canReuseConnectionFor.f == other.f && kotlin.jvm.internal.h.a(canReuseConnectionFor.f14517b, other.f14517b);
    }

    public static final int b(TimeUnit timeUnit) {
        if (!(timeUnit != null)) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(1L);
        if (!(millis <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException("timeout".concat(" too large.").toString());
        }
        if (millis != 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException("timeout".concat(" too small.").toString());
    }

    public static final void c(Closeable closeQuietly) throws IOException {
        kotlin.jvm.internal.h.f(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final void d(Socket socket) {
        try {
            socket.close();
        } catch (AssertionError e10) {
            throw e10;
        } catch (RuntimeException e11) {
            if (!kotlin.jvm.internal.h.a(e11.getMessage(), "bio == null")) {
                throw e11;
            }
        } catch (Exception unused) {
        }
    }

    public static final int e(int r12, int r22, String delimiterOffset, String str) {
        kotlin.jvm.internal.h.f(delimiterOffset, "$this$delimiterOffset");
        while (r12 < r22) {
            if (n.H(str, delimiterOffset.charAt(r12))) {
                return r12;
            }
            r12++;
        }
        return r22;
    }

    public static final int f(String delimiterOffset, char c10, int r32, int r42) {
        kotlin.jvm.internal.h.f(delimiterOffset, "$this$delimiterOffset");
        while (r32 < r42) {
            if (delimiterOffset.charAt(r32) == c10) {
                return r32;
            }
            r32++;
        }
        return r42;
    }

    public static final boolean g(j0 discard, TimeUnit timeUnit) {
        kotlin.jvm.internal.h.f(discard, "$this$discard");
        kotlin.jvm.internal.h.f(timeUnit, "timeUnit");
        try {
            return s(discard, 100, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final String h(String format, Object... objArr) {
        kotlin.jvm.internal.h.f(format, "format");
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String str = String.format(locale, format, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        kotlin.jvm.internal.h.e(str, "java.lang.String.format(locale, format, *args)");
        return str;
    }

    public static final boolean i(String[] hasIntersection, String[] strArr, Comparator<? super String> comparator) {
        kotlin.jvm.internal.h.f(hasIntersection, "$this$hasIntersection");
        kotlin.jvm.internal.h.f(comparator, "comparator");
        if (!(hasIntersection.length == 0) && strArr != null) {
            if (!(strArr.length == 0)) {
                for (String str : hasIntersection) {
                    for (String str2 : strArr) {
                        if (comparator.compare(str, str2) == 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final long j(b0 b0Var) {
        String strL = b0Var.f14390g.l("Content-Length");
        if (strL != null) {
            try {
                return Long.parseLong(strL);
            } catch (NumberFormatException unused) {
            }
        }
        return -1L;
    }

    @SafeVarargs
    public static final <T> List<T> k(T... elements) {
        kotlin.jvm.internal.h.f(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(f.T(Arrays.copyOf(objArr, objArr.length)));
        kotlin.jvm.internal.h.e(listUnmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int l(String str) {
        int length = str.length();
        for (int r12 = 0; r12 < length; r12++) {
            char cCharAt = str.charAt(r12);
            if (kotlin.jvm.internal.h.h(cCharAt, 31) <= 0 || kotlin.jvm.internal.h.h(cCharAt, CertificateBody.profileType) >= 0) {
                return r12;
            }
        }
        return -1;
    }

    public static final int m(int r22, int r32, String indexOfFirstNonAsciiWhitespace) {
        kotlin.jvm.internal.h.f(indexOfFirstNonAsciiWhitespace, "$this$indexOfFirstNonAsciiWhitespace");
        while (r22 < r32) {
            char cCharAt = indexOfFirstNonAsciiWhitespace.charAt(r22);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return r22;
            }
            r22++;
        }
        return r32;
    }

    public static final int n(int r22, int r32, String indexOfLastNonAsciiWhitespace) {
        kotlin.jvm.internal.h.f(indexOfLastNonAsciiWhitespace, "$this$indexOfLastNonAsciiWhitespace");
        int r33 = r32 - 1;
        if (r33 >= r22) {
            while (true) {
                char cCharAt = indexOfLastNonAsciiWhitespace.charAt(r33);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return r33 + 1;
                }
                if (r33 == r22) {
                    break;
                }
                r33--;
            }
        }
        return r22;
    }

    public static final String[] o(String[] strArr, String[] other, Comparator<? super String> comparator) {
        kotlin.jvm.internal.h.f(other, "other");
        kotlin.jvm.internal.h.f(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = other.length;
            int r6 = 0;
            while (true) {
                if (r6 >= length) {
                    break;
                }
                if (comparator.compare(str, other[r6]) == 0) {
                    arrayList.add(str);
                    break;
                }
                r6++;
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public static final boolean p(String name) {
        kotlin.jvm.internal.h.f(name, "name");
        return j.x(name, "Authorization") || j.x(name, "Cookie") || j.x(name, "Proxy-Authorization") || j.x(name, "Set-Cookie");
    }

    public static final int q(char c10) {
        if ('0' <= c10 && '9' >= c10) {
            return c10 - '0';
        }
        char c11 = 'a';
        if ('a' > c10 || 'f' < c10) {
            c11 = 'A';
            if ('A' > c10 || 'F' < c10) {
                return -1;
            }
        }
        return (c10 - c11) + 10;
    }

    public static final int r(g readMedium) throws IOException {
        kotlin.jvm.internal.h.f(readMedium, "$this$readMedium");
        return (readMedium.readByte() & 255) | ((readMedium.readByte() & 255) << 16) | ((readMedium.readByte() & 255) << 8);
    }

    public static final boolean s(j0 skipAll, int r12, TimeUnit timeUnit) throws IOException {
        kotlin.jvm.internal.h.f(skipAll, "$this$skipAll");
        kotlin.jvm.internal.h.f(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jC = skipAll.h().e() ? skipAll.h().c() - jNanoTime : Long.MAX_VALUE;
        skipAll.h().d(Math.min(jC, timeUnit.toNanos(r12)) + jNanoTime);
        try {
            e eVar = new e();
            while (skipAll.w(eVar, 8192L) != -1) {
                eVar.b();
            }
            k0 k0VarH = skipAll.h();
            if (jC == LocationRequestCompat.PASSIVE_INTERVAL) {
                k0VarH.a();
            } else {
                k0VarH.d(jNanoTime + jC);
            }
            return true;
        } catch (InterruptedIOException unused) {
            k0 k0VarH2 = skipAll.h();
            if (jC == LocationRequestCompat.PASSIVE_INTERVAL) {
                k0VarH2.a();
            } else {
                k0VarH2.d(jNanoTime + jC);
            }
            return false;
        } catch (Throwable th2) {
            k0 k0VarH3 = skipAll.h();
            if (jC == LocationRequestCompat.PASSIVE_INTERVAL) {
                k0VarH3.a();
            } else {
                k0VarH3.d(jNanoTime + jC);
            }
            throw th2;
        }
    }

    public static final q t(List<yc.c> list) {
        q.a aVar = new q.a();
        for (yc.c cVar : list) {
            aVar.b(cVar.f19518b.G(), cVar.f19519c.G());
        }
        return aVar.c();
    }

    public static final String u(r toHostHeader, boolean z10) {
        kotlin.jvm.internal.h.f(toHostHeader, "$this$toHostHeader");
        String str = toHostHeader.f14520e;
        if (n.G(str, ":", false)) {
            str = "[" + str + ']';
        }
        int r02 = toHostHeader.f;
        if (!z10) {
            r.f14515l.getClass();
            if (r02 == r.b.b(toHostHeader.f14517b)) {
                return str;
            }
        }
        return str + ':' + r02;
    }

    public static final <T> List<T> v(List<? extends T> toImmutableList) {
        kotlin.jvm.internal.h.f(toImmutableList, "$this$toImmutableList");
        List<T> listUnmodifiableList = Collections.unmodifiableList(t.w1(toImmutableList));
        kotlin.jvm.internal.h.e(listUnmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    public static final int w(int r42, String str) throws NumberFormatException {
        if (str != null) {
            try {
                long j10 = Long.parseLong(str);
                if (j10 > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (j10 < 0) {
                    return 0;
                }
                return (int) j10;
            } catch (NumberFormatException unused) {
            }
        }
        return r42;
    }

    public static final String x(int r02, int r12, String str) {
        int r03 = m(r02, r12, str);
        String strSubstring = str.substring(r03, n(r03, r12, str));
        kotlin.jvm.internal.h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final void y(IOException withSuppressed, List list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kotlin.jvm.internal.h.f(withSuppressed, "$this$withSuppressed");
        if (list.size() > 1) {
            System.out.println(list);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f.k(withSuppressed, (Exception) it.next());
        }
    }
}
