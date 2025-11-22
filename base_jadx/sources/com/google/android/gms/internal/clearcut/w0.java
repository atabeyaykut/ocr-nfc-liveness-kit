package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class w0 extends q<Integer> implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public int[] f3333b;

    /* renamed from: c, reason: collision with root package name */
    public int f3334c;

    static {
        new w0().f3267a = false;
    }

    public w0() {
        this(new int[10], 0);
    }

    public w0(int[] r12, int r22) {
        this.f3333b = r12;
        this.f3334c = r22;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r32) {
        if (r32 >= this.f3334c) {
            return new w0(Arrays.copyOf(this.f3333b, r32), this.f3334c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r12, Object obj) {
        u(r12, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        h();
        Charset charset = x0.f3344a;
        collection.getClass();
        if (!(collection instanceof w0)) {
            return super.addAll(collection);
        }
        w0 w0Var = (w0) collection;
        int r02 = w0Var.f3334c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3334c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        int[] r03 = this.f3333b;
        if (r23 > r03.length) {
            this.f3333b = Arrays.copyOf(r03, r23);
        }
        System.arraycopy(w0Var.f3333b, 0, this.f3333b, this.f3334c, w0Var.f3334c);
        this.f3334c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w0)) {
            return super.equals(obj);
        }
        w0 w0Var = (w0) obj;
        if (this.f3334c != w0Var.f3334c) {
            return false;
        }
        int[] r6 = w0Var.f3333b;
        for (int r12 = 0; r12 < this.f3334c; r12++) {
            if (this.f3333b[r12] != r6[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        m(r22);
        return Integer.valueOf(this.f3333b[r22]);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3334c; r12++) {
            r02 = (r02 * 31) + this.f3333b[r12];
        }
        return r02;
    }

    public final void l(int r22) {
        u(this.f3334c, r22);
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f3334c) {
            throw new IndexOutOfBoundsException(o(r22));
        }
    }

    public final String o(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3334c);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r52) {
        h();
        m(r52);
        int[] r02 = this.f3333b;
        int r12 = r02[r52];
        int r22 = this.f3334c;
        if (r52 < r22 - 1) {
            System.arraycopy(r02, r52 + 1, r02, r52, r22 - r52);
        }
        this.f3334c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(r12);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f3334c; r12++) {
            if (obj.equals(Integer.valueOf(this.f3333b[r12]))) {
                int[] r42 = this.f3333b;
                System.arraycopy(r42, r12 + 1, r42, r12, this.f3334c - r12);
                this.f3334c--;
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
        int[] r02 = this.f3333b;
        System.arraycopy(r02, r42, r02, r32, this.f3334c - r42);
        this.f3334c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r32, Object obj) {
        int r42 = ((Integer) obj).intValue();
        h();
        m(r32);
        int[] r02 = this.f3333b;
        int r12 = r02[r32];
        r02[r32] = r42;
        return Integer.valueOf(r12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3334c;
    }

    public final void u(int r6, int r72) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f3334c)) {
            throw new IndexOutOfBoundsException(o(r6));
        }
        int[] r12 = this.f3333b;
        if (r02 < r12.length) {
            System.arraycopy(r12, r6, r12, r6 + 1, r02 - r6);
        } else {
            int[] r03 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r03, 0, r6);
            System.arraycopy(this.f3333b, r6, r03, r6 + 1, this.f3334c - r6);
            this.f3333b = r03;
        }
        this.f3333b[r6] = r72;
        this.f3334c++;
        ((AbstractList) this).modCount++;
    }
}
