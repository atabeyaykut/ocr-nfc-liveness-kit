package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class n1 extends q<Long> implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public long[] f3238b;

    /* renamed from: c, reason: collision with root package name */
    public int f3239c;

    static {
        new n1().f3267a = false;
    }

    public n1() {
        this(new long[10], 0);
    }

    public n1(long[] jArr, int r22) {
        this.f3238b = jArr;
        this.f3239c = r22;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r32) {
        if (r32 >= this.f3239c) {
            return new n1(Arrays.copyOf(this.f3238b, r32), this.f3239c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r32, Object obj) {
        o(r32, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        h();
        Charset charset = x0.f3344a;
        collection.getClass();
        if (!(collection instanceof n1)) {
            return super.addAll(collection);
        }
        n1 n1Var = (n1) collection;
        int r02 = n1Var.f3239c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3239c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        long[] jArr = this.f3238b;
        if (r23 > jArr.length) {
            this.f3238b = Arrays.copyOf(jArr, r23);
        }
        System.arraycopy(n1Var.f3238b, 0, this.f3238b, this.f3239c, n1Var.f3239c);
        this.f3239c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n1)) {
            return super.equals(obj);
        }
        n1 n1Var = (n1) obj;
        if (this.f3239c != n1Var.f3239c) {
            return false;
        }
        long[] jArr = n1Var.f3238b;
        for (int r12 = 0; r12 < this.f3239c; r12++) {
            if (this.f3238b[r12] != jArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r42) {
        l(r42);
        return Long.valueOf(this.f3238b[r42]);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3239c; r12++) {
            r02 = (r02 * 31) + x0.c(this.f3238b[r12]);
        }
        return r02;
    }

    public final void l(int r22) {
        if (r22 < 0 || r22 >= this.f3239c) {
            throw new IndexOutOfBoundsException(m(r22));
        }
    }

    public final String m(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3239c);
    }

    public final void o(int r6, long j10) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f3239c)) {
            throw new IndexOutOfBoundsException(m(r6));
        }
        long[] jArr = this.f3238b;
        if (r02 < jArr.length) {
            System.arraycopy(jArr, r6, jArr, r6 + 1, r02 - r6);
        } else {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r6);
            System.arraycopy(this.f3238b, r6, jArr2, r6 + 1, this.f3239c - r6);
            this.f3238b = jArr2;
        }
        this.f3238b[r6] = j10;
        this.f3239c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r6) {
        h();
        l(r6);
        long[] jArr = this.f3238b;
        long j10 = jArr[r6];
        int r32 = this.f3239c;
        if (r6 < r32 - 1) {
            System.arraycopy(jArr, r6 + 1, jArr, r6, r32 - r6);
        }
        this.f3239c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f3239c; r12++) {
            if (obj.equals(Long.valueOf(this.f3238b[r12]))) {
                long[] jArr = this.f3238b;
                System.arraycopy(jArr, r12 + 1, jArr, r12, this.f3239c - r12);
                this.f3239c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f3238b;
        System.arraycopy(jArr, r42, jArr, r32, this.f3239c - r42);
        this.f3239c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r52, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        h();
        l(r52);
        long[] jArr = this.f3238b;
        long j10 = jArr[r52];
        jArr[r52] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3239c;
    }

    public final void u(long j10) {
        o(this.f3239c, j10);
    }
}
