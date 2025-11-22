package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class h7 extends m5<Long> implements RandomAccess, v6, z7 {

    /* renamed from: d, reason: collision with root package name */
    public static final h7 f3535d;

    /* renamed from: b, reason: collision with root package name */
    public long[] f3536b;

    /* renamed from: c, reason: collision with root package name */
    public int f3537c;

    static {
        h7 h7Var = new h7(new long[0], 0);
        f3535d = h7Var;
        h7Var.f3627a = false;
    }

    public h7() {
        this(new long[10], 0);
    }

    public h7(long[] jArr, int r22) {
        this.f3536b = jArr;
        this.f3537c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r72, Object obj) {
        int r82;
        long jLongValue = ((Long) obj).longValue();
        h();
        if (r72 < 0 || r72 > (r82 = this.f3537c)) {
            throw new IndexOutOfBoundsException(m(r72));
        }
        long[] jArr = this.f3536b;
        if (r82 < jArr.length) {
            System.arraycopy(jArr, r72, jArr, r72 + 1, r82 - r72);
        } else {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r82, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r72);
            System.arraycopy(this.f3536b, r72, jArr2, r72 + 1, this.f3537c - r72);
            this.f3536b = jArr2;
        }
        this.f3536b[r72] = jLongValue;
        this.f3537c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        h();
        Charset charset = x6.f3835a;
        collection.getClass();
        if (!(collection instanceof h7)) {
            return super.addAll(collection);
        }
        h7 h7Var = (h7) collection;
        int r02 = h7Var.f3537c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3537c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        long[] jArr = this.f3536b;
        if (r23 > jArr.length) {
            this.f3536b = Arrays.copyOf(jArr, r23);
        }
        System.arraycopy(h7Var.f3536b, 0, this.f3536b, this.f3537c, h7Var.f3537c);
        this.f3537c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h7)) {
            return super.equals(obj);
        }
        h7 h7Var = (h7) obj;
        if (this.f3537c != h7Var.f3537c) {
            return false;
        }
        long[] jArr = h7Var.f3536b;
        for (int r12 = 0; r12 < this.f3537c; r12++) {
            if (this.f3536b[r12] != jArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r42) {
        o(r42);
        return Long.valueOf(this.f3536b[r42]);
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3537c; r12++) {
            r02 = (r02 * 31) + x6.b(this.f3536b[r12]);
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int r82 = this.f3537c;
        for (int r02 = 0; r02 < r82; r02++) {
            if (this.f3536b[r02] == jLongValue) {
                return r02;
            }
        }
        return -1;
    }

    public final void l(long j10) {
        h();
        int r02 = this.f3537c;
        long[] jArr = this.f3536b;
        if (r02 == jArr.length) {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r02);
            this.f3536b = jArr2;
        }
        long[] jArr3 = this.f3536b;
        int r12 = this.f3537c;
        this.f3537c = r12 + 1;
        jArr3[r12] = j10;
    }

    public final String m(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3537c);
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3537c) {
            throw new IndexOutOfBoundsException(m(r22));
        }
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int r6) {
        h();
        o(r6);
        long[] jArr = this.f3536b;
        long j10 = jArr[r6];
        if (r6 < this.f3537c - 1) {
            System.arraycopy(jArr, r6 + 1, jArr, r6, (r3 - r6) - 1);
        }
        this.f3537c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f3536b;
        System.arraycopy(jArr, r42, jArr, r32, this.f3537c - r42);
        this.f3537c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int r52, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        h();
        o(r52);
        long[] jArr = this.f3536b;
        long j10 = jArr[r52];
        jArr[r52] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3537c;
    }

    @Override // com.google.android.gms.internal.measurement.w6
    public final w6<Long> v(int r32) {
        if (r32 >= this.f3537c) {
            return new h7(Arrays.copyOf(this.f3536b, r32), this.f3537c);
        }
        throw new IllegalArgumentException();
    }
}
