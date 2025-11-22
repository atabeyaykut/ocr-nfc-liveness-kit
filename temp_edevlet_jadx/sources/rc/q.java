package rc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class q implements Iterable<l9.g<? extends String, ? extends String>>, y9.a {

    /* renamed from: b, reason: collision with root package name */
    public static final b f14511b = new b();

    /* renamed from: a, reason: collision with root package name */
    public final String[] f14512a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f14513a = new ArrayList(20);

        public final void a(String name, String value) {
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(value, "value");
            q.f14511b.getClass();
            b.a(name);
            b.b(value, name);
            b(name, value);
        }

        public final void b(String name, String value) {
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(value, "value");
            ArrayList arrayList = this.f14513a;
            arrayList.add(name);
            arrayList.add(mc.n.i0(value).toString());
        }

        public final q c() {
            Object[] array = this.f14513a.toArray(new String[0]);
            if (array != null) {
                return new q((String[]) array);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }

        public final void d(String str) {
            int r02 = 0;
            while (true) {
                ArrayList arrayList = this.f14513a;
                if (r02 >= arrayList.size()) {
                    return;
                }
                if (mc.j.x(str, (String) arrayList.get(r02))) {
                    arrayList.remove(r02);
                    arrayList.remove(r02);
                    r02 -= 2;
                }
                r02 += 2;
            }
        }
    }

    public static final class b {
        public static void a(String str) {
            if (!(str.length() > 0)) {
                throw new IllegalArgumentException("name is empty".toString());
            }
            int length = str.length();
            for (int r32 = 0; r32 < length; r32++) {
                char cCharAt = str.charAt(r32);
                if (!('!' <= cCharAt && '~' >= cCharAt)) {
                    throw new IllegalArgumentException(sc.c.h("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(r32), str).toString());
                }
            }
        }

        public static void b(String str, String str2) {
            int length = str.length();
            for (int r22 = 0; r22 < length; r22++) {
                char cCharAt = str.charAt(r22);
                if (!(cCharAt == '\t' || (' ' <= cCharAt && '~' >= cCharAt))) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(sc.c.h("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(r22), str2));
                    sb2.append(sc.c.p(str2) ? "" : ": ".concat(str));
                    throw new IllegalArgumentException(sb2.toString().toString());
                }
            }
        }

        public static q c(String... strArr) throws CloneNotSupportedException {
            if (!(strArr.length % 2 == 0)) {
                throw new IllegalArgumentException("Expected alternating header names and values".toString());
            }
            Object objClone = strArr.clone();
            if (objClone == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            String[] strArr2 = (String[]) objClone;
            int length = strArr2.length;
            for (int r42 = 0; r42 < length; r42++) {
                String str = strArr2[r42];
                if (!(str != null)) {
                    throw new IllegalArgumentException("Headers cannot be null".toString());
                }
                if (str == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                }
                strArr2[r42] = mc.n.i0(str).toString();
            }
            ca.b bVarJ0 = b8.f.j0(new ca.d(0, strArr2.length - 1), 2);
            int r12 = bVarJ0.f2246a;
            int r22 = bVarJ0.f2247b;
            int r02 = bVarJ0.f2248c;
            if (r02 < 0 ? r12 >= r22 : r12 <= r22) {
                while (true) {
                    String str2 = strArr2[r12];
                    String str3 = strArr2[r12 + 1];
                    a(str2);
                    b(str3, str2);
                    if (r12 == r22) {
                        break;
                    }
                    r12 += r02;
                }
            }
            return new q(strArr2);
        }
    }

    public q(String[] strArr) {
        this.f14512a = strArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof q) {
            if (Arrays.equals(this.f14512a, ((q) obj).f14512a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f14512a);
    }

    @Override // java.lang.Iterable
    public final Iterator<l9.g<? extends String, ? extends String>> iterator() {
        int length = this.f14512a.length / 2;
        l9.g[] gVarArr = new l9.g[length];
        for (int r22 = 0; r22 < length; r22++) {
            gVarArr[r22] = new l9.g(o(r22), w(r22));
        }
        return b8.f.R(gVarArr);
    }

    public final String l(String name) {
        kotlin.jvm.internal.h.f(name, "name");
        f14511b.getClass();
        String[] strArr = this.f14512a;
        ca.b bVarJ0 = b8.f.j0(new ca.b(strArr.length - 2, 0, -1), 2);
        int r22 = bVarJ0.f2246a;
        int r32 = bVarJ0.f2247b;
        int r12 = bVarJ0.f2248c;
        if (r12 < 0 ? r22 >= r32 : r22 <= r32) {
            while (!mc.j.x(name, strArr[r22])) {
                if (r22 != r32) {
                    r22 += r12;
                }
            }
            return strArr[r22 + 1];
        }
        return null;
    }

    public final Date m(String str) {
        String strL = l(str);
        if (strL != null) {
            return wc.c.a(strL);
        }
        return null;
    }

    public final String o(int r22) {
        return this.f14512a[r22 * 2];
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int length = this.f14512a.length / 2;
        for (int r22 = 0; r22 < length; r22++) {
            String strO = o(r22);
            String strW = w(r22);
            sb2.append(strO);
            sb2.append(": ");
            if (sc.c.p(strO)) {
                strW = "██";
            }
            sb2.append(strW);
            sb2.append("\n");
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final a u() {
        a aVar = new a();
        ArrayList arrayList = aVar.f14513a;
        kotlin.jvm.internal.h.f(arrayList, "<this>");
        String[] elements = this.f14512a;
        kotlin.jvm.internal.h.f(elements, "elements");
        arrayList.addAll(m9.i.g0(elements));
        return aVar;
    }

    public final String w(int r22) {
        return this.f14512a[(r22 * 2) + 1];
    }
}
