package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class n0 extends j0<Boolean> implements y2, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f4039b;

    /* renamed from: c, reason: collision with root package name */
    public int f4040c;

    static {
        new n0(new boolean[0], 0).f4016a = false;
    }

    public n0() {
        this(new boolean[10], 0);
    }

    public n0(boolean[] zArr, int r22) {
        this.f4039b = zArr;
        this.f4040c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r6, Object obj) {
        int r02;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f4040c)) {
            throw new IndexOutOfBoundsException(o(r6));
        }
        boolean[] zArr = this.f4039b;
        if (r02 < zArr.length) {
            System.arraycopy(zArr, r6, zArr, r6 + 1, r02 - r6);
        } else {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r6);
            System.arraycopy(this.f4039b, r6, zArr2, r6 + 1, this.f4040c - r6);
            this.f4039b = zArr2;
        }
        this.f4039b[r6] = zBooleanValue;
        this.f4040c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        l(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        h();
        Charset charset = m1.f4035a;
        collection.getClass();
        if (!(collection instanceof n0)) {
            return super.addAll(collection);
        }
        n0 n0Var = (n0) collection;
        int r02 = n0Var.f4040c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4040c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        boolean[] zArr = this.f4039b;
        if (r23 > zArr.length) {
            this.f4039b = Arrays.copyOf(zArr, r23);
        }
        System.arraycopy(n0Var.f4039b, 0, this.f4039b, this.f4040c, n0Var.f4040c);
        this.f4040c = r23;
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
        if (!(obj instanceof n0)) {
            return super.equals(obj);
        }
        n0 n0Var = (n0) obj;
        if (this.f4040c != n0Var.f4040c) {
            return false;
        }
        boolean[] zArr = n0Var.f4039b;
        for (int r12 = 0; r12 < this.f4040c; r12++) {
            if (this.f4039b[r12] != zArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r32) {
        if (r32 >= this.f4040c) {
            return new n0(Arrays.copyOf(this.f4039b, r32), this.f4040c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        m(r22);
        return Boolean.valueOf(this.f4039b[r22]);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4040c; r12++) {
            r02 = (r02 * 31) + m1.b(this.f4039b[r12]);
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int r02 = this.f4040c;
        for (int r22 = 0; r22 < r02; r22++) {
            if (this.f4039b[r22] == zBooleanValue) {
                return r22;
            }
        }
        return -1;
    }

    public final void l(boolean z10) {
        h();
        int r02 = this.f4040c;
        boolean[] zArr = this.f4039b;
        if (r02 == zArr.length) {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r02);
            this.f4039b = zArr2;
        }
        boolean[] zArr3 = this.f4039b;
        int r12 = this.f4040c;
        this.f4040c = r12 + 1;
        zArr3[r12] = z10;
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f4040c) {
            throw new IndexOutOfBoundsException(o(r22));
        }
    }

    public final String o(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f4040c);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r52) {
        h();
        m(r52);
        boolean[] zArr = this.f4039b;
        boolean z10 = zArr[r52];
        if (r52 < this.f4040c - 1) {
            System.arraycopy(zArr, r52 + 1, zArr, r52, (r2 - r52) - 1);
        }
        this.f4040c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f4039b;
        System.arraycopy(zArr, r42, zArr, r32, this.f4040c - r42);
        this.f4040c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r32, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        m(r32);
        boolean[] zArr = this.f4039b;
        boolean z10 = zArr[r32];
        zArr[r32] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4040c;
    }
}
