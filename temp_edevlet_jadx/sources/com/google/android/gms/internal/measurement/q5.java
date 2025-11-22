package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class q5 extends m5<Boolean> implements RandomAccess, z7 {

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f3693b;

    /* renamed from: c, reason: collision with root package name */
    public int f3694c;

    static {
        new q5(new boolean[0], 0).f3627a = false;
    }

    public q5() {
        this(new boolean[10], 0);
    }

    public q5(boolean[] zArr, int r22) {
        this.f3693b = zArr;
        this.f3694c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r6, Object obj) {
        int r02;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f3694c)) {
            throw new IndexOutOfBoundsException(m(r6));
        }
        boolean[] zArr = this.f3693b;
        if (r02 < zArr.length) {
            System.arraycopy(zArr, r6, zArr, r6 + 1, r02 - r6);
        } else {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r6);
            System.arraycopy(this.f3693b, r6, zArr2, r6 + 1, this.f3694c - r6);
            this.f3693b = zArr2;
        }
        this.f3693b[r6] = zBooleanValue;
        this.f3694c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        h();
        Charset charset = x6.f3835a;
        collection.getClass();
        if (!(collection instanceof q5)) {
            return super.addAll(collection);
        }
        q5 q5Var = (q5) collection;
        int r02 = q5Var.f3694c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3694c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        boolean[] zArr = this.f3693b;
        if (r23 > zArr.length) {
            this.f3693b = Arrays.copyOf(zArr, r23);
        }
        System.arraycopy(q5Var.f3693b, 0, this.f3693b, this.f3694c, q5Var.f3694c);
        this.f3694c = r23;
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
        if (!(obj instanceof q5)) {
            return super.equals(obj);
        }
        q5 q5Var = (q5) obj;
        if (this.f3694c != q5Var.f3694c) {
            return false;
        }
        boolean[] zArr = q5Var.f3693b;
        for (int r12 = 0; r12 < this.f3694c; r12++) {
            if (this.f3693b[r12] != zArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        o(r22);
        return Boolean.valueOf(this.f3693b[r22]);
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3694c; r12++) {
            r02 = (r02 * 31) + x6.a(this.f3693b[r12]);
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int r02 = this.f3694c;
        for (int r22 = 0; r22 < r02; r22++) {
            if (this.f3693b[r22] == zBooleanValue) {
                return r22;
            }
        }
        return -1;
    }

    public final void l(boolean z10) {
        h();
        int r02 = this.f3694c;
        boolean[] zArr = this.f3693b;
        if (r02 == zArr.length) {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r02);
            this.f3693b = zArr2;
        }
        boolean[] zArr3 = this.f3693b;
        int r12 = this.f3694c;
        this.f3694c = r12 + 1;
        zArr3[r12] = z10;
    }

    public final String m(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3694c);
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3694c) {
            throw new IndexOutOfBoundsException(m(r22));
        }
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int r52) {
        h();
        o(r52);
        boolean[] zArr = this.f3693b;
        boolean z10 = zArr[r52];
        if (r52 < this.f3694c - 1) {
            System.arraycopy(zArr, r52 + 1, zArr, r52, (r2 - r52) - 1);
        }
        this.f3694c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f3693b;
        System.arraycopy(zArr, r42, zArr, r32, this.f3694c - r42);
        this.f3694c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int r32, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        o(r32);
        boolean[] zArr = this.f3693b;
        boolean z10 = zArr[r32];
        zArr[r32] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3694c;
    }

    @Override // com.google.android.gms.internal.measurement.w6
    public final /* bridge */ /* synthetic */ w6 v(int r32) {
        if (r32 >= this.f3694c) {
            return new q5(Arrays.copyOf(this.f3693b, r32), this.f3694c);
        }
        throw new IllegalArgumentException();
    }
}
