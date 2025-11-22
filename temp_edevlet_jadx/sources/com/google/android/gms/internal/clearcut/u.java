package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class u extends q<Boolean> implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f3317b;

    /* renamed from: c, reason: collision with root package name */
    public int f3318c;

    static {
        new u().f3267a = false;
    }

    public u() {
        this(new boolean[10], 0);
    }

    public u(boolean[] zArr, int r22) {
        this.f3317b = zArr;
        this.f3318c = r22;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r32) {
        if (r32 >= this.f3318c) {
            return new u(Arrays.copyOf(this.f3317b, r32), this.f3318c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r12, Object obj) {
        m(r12, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        h();
        Charset charset = x0.f3344a;
        collection.getClass();
        if (!(collection instanceof u)) {
            return super.addAll(collection);
        }
        u uVar = (u) collection;
        int r02 = uVar.f3318c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3318c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        boolean[] zArr = this.f3317b;
        if (r23 > zArr.length) {
            this.f3317b = Arrays.copyOf(zArr, r23);
        }
        System.arraycopy(uVar.f3317b, 0, this.f3317b, this.f3318c, uVar.f3318c);
        this.f3318c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return super.equals(obj);
        }
        u uVar = (u) obj;
        if (this.f3318c != uVar.f3318c) {
            return false;
        }
        boolean[] zArr = uVar.f3317b;
        for (int r12 = 0; r12 < this.f3318c; r12++) {
            if (this.f3317b[r12] != zArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        o(r22);
        return Boolean.valueOf(this.f3317b[r22]);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3318c; r12++) {
            r02 = (r02 * 31) + x0.b(this.f3317b[r12]);
        }
        return r02;
    }

    public final void l(boolean z10) {
        m(this.f3318c, z10);
    }

    public final void m(int r6, boolean z10) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f3318c)) {
            throw new IndexOutOfBoundsException(u(r6));
        }
        boolean[] zArr = this.f3317b;
        if (r02 < zArr.length) {
            System.arraycopy(zArr, r6, zArr, r6 + 1, r02 - r6);
        } else {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r6);
            System.arraycopy(this.f3317b, r6, zArr2, r6 + 1, this.f3318c - r6);
            this.f3317b = zArr2;
        }
        this.f3317b[r6] = z10;
        this.f3318c++;
        ((AbstractList) this).modCount++;
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3318c) {
            throw new IndexOutOfBoundsException(u(r22));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r52) {
        h();
        o(r52);
        boolean[] zArr = this.f3317b;
        boolean z10 = zArr[r52];
        int r22 = this.f3318c;
        if (r52 < r22 - 1) {
            System.arraycopy(zArr, r52 + 1, zArr, r52, r22 - r52);
        }
        this.f3318c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f3318c; r12++) {
            if (obj.equals(Boolean.valueOf(this.f3317b[r12]))) {
                boolean[] zArr = this.f3317b;
                System.arraycopy(zArr, r12 + 1, zArr, r12, this.f3318c - r12);
                this.f3318c--;
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
        boolean[] zArr = this.f3317b;
        System.arraycopy(zArr, r42, zArr, r32, this.f3318c - r42);
        this.f3318c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r32, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        o(r32);
        boolean[] zArr = this.f3317b;
        boolean z10 = zArr[r32];
        zArr[r32] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3318c;
    }

    public final String u(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3318c);
    }
}
