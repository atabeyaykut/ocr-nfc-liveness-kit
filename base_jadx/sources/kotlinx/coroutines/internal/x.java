package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import kotlinx.coroutines.internal.y;
import nc.o0;

/* loaded from: classes2.dex */
public class x<T extends y & Comparable<? super T>> {
    private volatile /* synthetic */ int _size = 0;

    /* renamed from: a, reason: collision with root package name */
    public T[] f9185a;

    public final void a(T t10) {
        t10.n((o0.c) this);
        T[] tArr = this.f9185a;
        if (tArr == null) {
            tArr = (T[]) new y[4];
            this.f9185a = tArr;
        } else if (this._size >= tArr.length) {
            Object[] objArrCopyOf = Arrays.copyOf(tArr, this._size * 2);
            kotlin.jvm.internal.h.e(objArrCopyOf, "copyOf(this, newSize)");
            tArr = (T[]) ((y[]) objArrCopyOf);
            this.f9185a = tArr;
        }
        int r12 = this._size;
        this._size = r12 + 1;
        tArr[r12] = t10;
        t10.setIndex(r12);
        g(r12);
    }

    public final boolean b() {
        return this._size == 0;
    }

    public final T c() {
        T t10;
        synchronized (this) {
            T[] tArr = this.f9185a;
            t10 = tArr == null ? null : tArr[0];
        }
        return t10;
    }

    public final void d(y yVar) {
        synchronized (this) {
            if (yVar.q() != null) {
                e(yVar.getIndex());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T e(int r8) {
        /*
            r7 = this;
            T extends kotlinx.coroutines.internal.y & java.lang.Comparable<? super T>[] r0 = r7.f9185a
            kotlin.jvm.internal.h.c(r0)
            int r1 = r7._size
            r2 = -1
            int r1 = r1 + r2
            r7._size = r1
            int r1 = r7._size
            if (r8 >= r1) goto L72
            int r1 = r7._size
            r7.h(r8, r1)
            int r1 = r8 + (-1)
            int r1 = r1 / 2
            if (r8 <= 0) goto L33
            r3 = r0[r8]
            kotlin.jvm.internal.h.c(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r0[r1]
            kotlin.jvm.internal.h.c(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L33
            r7.h(r8, r1)
            r7.g(r1)
            goto L72
        L33:
            int r1 = r8 * 2
            int r1 = r1 + 1
            int r3 = r7._size
            if (r1 < r3) goto L3c
            goto L72
        L3c:
            T extends kotlinx.coroutines.internal.y & java.lang.Comparable<? super T>[] r3 = r7.f9185a
            kotlin.jvm.internal.h.c(r3)
            int r4 = r1 + 1
            int r5 = r7._size
            if (r4 >= r5) goto L5a
            r5 = r3[r4]
            kotlin.jvm.internal.h.c(r5)
            java.lang.Comparable r5 = (java.lang.Comparable) r5
            r6 = r3[r1]
            kotlin.jvm.internal.h.c(r6)
            int r5 = r5.compareTo(r6)
            if (r5 >= 0) goto L5a
            r1 = r4
        L5a:
            r4 = r3[r8]
            kotlin.jvm.internal.h.c(r4)
            java.lang.Comparable r4 = (java.lang.Comparable) r4
            r3 = r3[r1]
            kotlin.jvm.internal.h.c(r3)
            int r3 = r4.compareTo(r3)
            if (r3 > 0) goto L6d
            goto L72
        L6d:
            r7.h(r8, r1)
            r8 = r1
            goto L33
        L72:
            int r8 = r7._size
            r8 = r0[r8]
            kotlin.jvm.internal.h.c(r8)
            r1 = 0
            r8.n(r1)
            r8.setIndex(r2)
            int r2 = r7._size
            r0[r2] = r1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.x.e(int):kotlinx.coroutines.internal.y");
    }

    public final T f() {
        T t10;
        synchronized (this) {
            t10 = this._size > 0 ? (T) e(0) : null;
        }
        return t10;
    }

    public final void g(int r42) {
        while (r42 > 0) {
            T[] tArr = this.f9185a;
            kotlin.jvm.internal.h.c(tArr);
            int r12 = (r42 - 1) / 2;
            T t10 = tArr[r12];
            kotlin.jvm.internal.h.c(t10);
            T t11 = tArr[r42];
            kotlin.jvm.internal.h.c(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            h(r42, r12);
            r42 = r12;
        }
    }

    public final void h(int r42, int r52) {
        T[] tArr = this.f9185a;
        kotlin.jvm.internal.h.c(tArr);
        T t10 = tArr[r52];
        kotlin.jvm.internal.h.c(t10);
        T t11 = tArr[r42];
        kotlin.jvm.internal.h.c(t11);
        tArr[r42] = t10;
        tArr[r52] = t11;
        t10.setIndex(r42);
        t11.setIndex(r52);
    }
}
