package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class g0 extends q<Double> implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public double[] f3136b;

    /* renamed from: c, reason: collision with root package name */
    public int f3137c;

    static {
        new g0().f3267a = false;
    }

    public g0() {
        this(new double[10], 0);
    }

    public g0(double[] dArr, int r22) {
        this.f3136b = dArr;
        this.f3137c = r22;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r32) {
        if (r32 >= this.f3137c) {
            return new g0(Arrays.copyOf(this.f3136b, r32), this.f3137c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r32, Object obj) {
        m(r32, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        h();
        Charset charset = x0.f3344a;
        collection.getClass();
        if (!(collection instanceof g0)) {
            return super.addAll(collection);
        }
        g0 g0Var = (g0) collection;
        int r02 = g0Var.f3137c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3137c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        double[] dArr = this.f3136b;
        if (r23 > dArr.length) {
            this.f3136b = Arrays.copyOf(dArr, r23);
        }
        System.arraycopy(g0Var.f3136b, 0, this.f3136b, this.f3137c, g0Var.f3137c);
        this.f3137c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return super.equals(obj);
        }
        g0 g0Var = (g0) obj;
        if (this.f3137c != g0Var.f3137c) {
            return false;
        }
        double[] dArr = g0Var.f3136b;
        for (int r12 = 0; r12 < this.f3137c; r12++) {
            if (this.f3136b[r12] != dArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r42) {
        o(r42);
        return Double.valueOf(this.f3136b[r42]);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3137c; r12++) {
            r02 = (r02 * 31) + x0.c(Double.doubleToLongBits(this.f3136b[r12]));
        }
        return r02;
    }

    public final void l(double d10) {
        m(this.f3137c, d10);
    }

    public final void m(int r6, double d10) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f3137c)) {
            throw new IndexOutOfBoundsException(u(r6));
        }
        double[] dArr = this.f3136b;
        if (r02 < dArr.length) {
            System.arraycopy(dArr, r6, dArr, r6 + 1, r02 - r6);
        } else {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r6);
            System.arraycopy(this.f3136b, r6, dArr2, r6 + 1, this.f3137c - r6);
            this.f3136b = dArr2;
        }
        this.f3136b[r6] = d10;
        this.f3137c++;
        ((AbstractList) this).modCount++;
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3137c) {
            throw new IndexOutOfBoundsException(u(r22));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r6) {
        h();
        o(r6);
        double[] dArr = this.f3136b;
        double d10 = dArr[r6];
        int r32 = this.f3137c;
        if (r6 < r32 - 1) {
            System.arraycopy(dArr, r6 + 1, dArr, r6, r32 - r6);
        }
        this.f3137c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f3137c; r12++) {
            if (obj.equals(Double.valueOf(this.f3136b[r12]))) {
                double[] dArr = this.f3136b;
                System.arraycopy(dArr, r12 + 1, dArr, r12, this.f3137c - r12);
                this.f3137c--;
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
        double[] dArr = this.f3136b;
        System.arraycopy(dArr, r42, dArr, r32, this.f3137c - r42);
        this.f3137c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r52, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        o(r52);
        double[] dArr = this.f3136b;
        double d10 = dArr[r52];
        dArr[r52] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3137c;
    }

    public final String u(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3137c);
    }
}
