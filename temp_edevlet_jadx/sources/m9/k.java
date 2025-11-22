package m9;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes2.dex */
public class k extends i {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements lc.h<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Object[] f10168a;

        public a(Object[] objArr) {
            this.f10168a = objArr;
        }

        @Override // lc.h
        public final Iterator<T> iterator() {
            return b8.f.R(this.f10168a);
        }
    }

    public static final <T> List<T> A0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        int length = tArr.length;
        return length != 0 ? length != 1 ? B0(tArr) : b8.f.S(tArr[0]) : v.f10173a;
    }

    public static final ArrayList B0(Object[] objArr) {
        kotlin.jvm.internal.h.f(objArr, "<this>");
        return new ArrayList(new f(objArr, false));
    }

    public static final <T> Set<T> C0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        int length = tArr.length;
        if (length == 0) {
            return x.f10175a;
        }
        if (length == 1) {
            return x5.a.r(tArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(b8.f.V(tArr.length));
        for (T t10 : tArr) {
            linkedHashSet.add(t10);
        }
        return linkedHashSet;
    }

    public static final <T> lc.h<T> n0(T[] tArr) {
        return tArr.length == 0 ? lc.d.f9709a : new a(tArr);
    }

    public static final <T> boolean o0(T[] tArr, T t10) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        return t0(tArr, t10) >= 0;
    }

    public static final ArrayList p0(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> T q0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        if (tArr.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        return tArr[0];
    }

    public static final <T> T r0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        return tArr[0];
    }

    public static final Integer s0(int[] r12, int r22) {
        kotlin.jvm.internal.h.f(r12, "<this>");
        if (r22 < 0 || r22 > r12.length - 1) {
            return null;
        }
        return Integer.valueOf(r12[r22]);
    }

    public static final <T> int t0(T[] tArr, T t10) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        int r02 = 0;
        if (t10 == null) {
            int length = tArr.length;
            while (r02 < length) {
                if (tArr[r02] == null) {
                    return r02;
                }
                r02++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (r02 < length2) {
            if (kotlin.jvm.internal.h.a(t10, tArr[r02])) {
                return r02;
            }
            r02++;
        }
        return -1;
    }

    public static final void u0(Object[] objArr, StringBuilder sb2, CharSequence separator, CharSequence prefix, CharSequence postfix, int r92, CharSequence truncated, x9.l lVar) {
        kotlin.jvm.internal.h.f(objArr, "<this>");
        kotlin.jvm.internal.h.f(separator, "separator");
        kotlin.jvm.internal.h.f(prefix, "prefix");
        kotlin.jvm.internal.h.f(postfix, "postfix");
        kotlin.jvm.internal.h.f(truncated, "truncated");
        sb2.append(prefix);
        int r12 = 0;
        for (Object obj : objArr) {
            r12++;
            if (r12 > 1) {
                sb2.append(separator);
            }
            if (r92 >= 0 && r12 > r92) {
                break;
            }
            a0.b.g(sb2, obj, lVar);
        }
        if (r92 >= 0 && r12 > r92) {
            sb2.append(truncated);
        }
        sb2.append(postfix);
    }

    public static String v0(Object[] objArr, String str, String str2, String str3, x9.l lVar, int r13) {
        if ((r13 & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String prefix = (r13 & 2) != 0 ? "" : str2;
        String postfix = (r13 & 4) != 0 ? "" : str3;
        int r52 = (r13 & 8) != 0 ? -1 : 0;
        CharSequence truncated = (r13 & 16) != 0 ? "..." : null;
        x9.l lVar2 = (r13 & 32) != 0 ? null : lVar;
        kotlin.jvm.internal.h.f(prefix, "prefix");
        kotlin.jvm.internal.h.f(postfix, "postfix");
        kotlin.jvm.internal.h.f(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        u0(objArr, sb2, str4, prefix, postfix, r52, truncated, lVar2);
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static final <T> T w0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        if (tArr.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        return tArr[tArr.length - 1];
    }

    public static final char x0(char[] cArr) {
        kotlin.jvm.internal.h.f(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static final <T> T y0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        int length = tArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return tArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static final <T> List<T> z0(T[] tArr, Comparator<? super T> comparator) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        if (!(tArr.length == 0)) {
            tArr = (T[]) Arrays.copyOf(tArr, tArr.length);
            kotlin.jvm.internal.h.e(tArr, "copyOf(this, size)");
            if (tArr.length > 1) {
                Arrays.sort(tArr, comparator);
            }
        }
        return i.g0(tArr);
    }
}
