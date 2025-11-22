package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c2 extends j0<Long> implements y2, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public long[] f3917b;

    /* renamed from: c, reason: collision with root package name */
    public int f3918c;

    static {
        new c2(new long[0], 0).f4016a = false;
    }

    public c2() {
        this(new long[10], 0);
    }

    public c2(long[] jArr, int r22) {
        this.f3917b = jArr;
        this.f3918c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r72, Object obj) {
        int r82;
        long jLongValue = ((Long) obj).longValue();
        h();
        if (r72 < 0 || r72 > (r82 = this.f3918c)) {
            throw new IndexOutOfBoundsException(o(r72));
        }
        long[] jArr = this.f3917b;
        if (r82 < jArr.length) {
            System.arraycopy(jArr, r72, jArr, r72 + 1, r82 - r72);
        } else {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r82, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r72);
            System.arraycopy(this.f3917b, r72, jArr2, r72 + 1, this.f3918c - r72);
            this.f3917b = jArr2;
        }
        this.f3917b[r72] = jLongValue;
        this.f3918c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        l(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        h();
        Charset charset = m1.f4035a;
        collection.getClass();
        if (!(collection instanceof c2)) {
            return super.addAll(collection);
        }
        c2 c2Var = (c2) collection;
        int r02 = c2Var.f3918c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3918c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        long[] jArr = this.f3917b;
        if (r23 > jArr.length) {
            this.f3917b = Arrays.copyOf(jArr, r23);
        }
        System.arraycopy(c2Var.f3917b, 0, this.f3917b, this.f3918c, c2Var.f3918c);
        this.f3918c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c2)) {
            return super.equals(obj);
        }
        c2 c2Var = (c2) obj;
        if (this.f3918c != c2Var.f3918c) {
            return false;
        }
        long[] jArr = c2Var.f3917b;
        for (int r12 = 0; r12 < this.f3918c; r12++) {
            if (this.f3917b[r12] != jArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r32) {
        if (r32 >= this.f3918c) {
            return new c2(Arrays.copyOf(this.f3917b, r32), this.f3918c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r42) {
        m(r42);
        return Long.valueOf(this.f3917b[r42]);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3918c; r12++) {
            r02 = (r02 * 31) + m1.a(this.f3917b[r12]);
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int r82 = this.f3918c;
        for (int r02 = 0; r02 < r82; r02++) {
            if (this.f3917b[r02] == jLongValue) {
                return r02;
            }
        }
        return -1;
    }

    public final void l(long j10) {
        h();
        int r02 = this.f3918c;
        long[] jArr = this.f3917b;
        if (r02 == jArr.length) {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r02);
            this.f3917b = jArr2;
        }
        long[] jArr3 = this.f3917b;
        int r12 = this.f3918c;
        this.f3918c = r12 + 1;
        jArr3[r12] = j10;
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f3918c) {
            throw new IndexOutOfBoundsException(o(r22));
        }
    }

    public final String o(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3918c);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r6) {
        h();
        m(r6);
        long[] jArr = this.f3917b;
        long j10 = jArr[r6];
        if (r6 < this.f3918c - 1) {
            System.arraycopy(jArr, r6 + 1, jArr, r6, (r3 - r6) - 1);
        }
        this.f3918c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f3917b;
        System.arraycopy(jArr, r42, jArr, r32, this.f3918c - r42);
        this.f3918c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r52, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        h();
        m(r52);
        long[] jArr = this.f3917b;
        long j10 = jArr[r52];
        jArr[r52] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3918c;
    }
}
