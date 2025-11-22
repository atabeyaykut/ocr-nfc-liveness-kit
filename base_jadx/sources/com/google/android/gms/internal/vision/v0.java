package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class v0 extends j0<Double> implements y2, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public double[] f4106b;

    /* renamed from: c, reason: collision with root package name */
    public int f4107c;

    static {
        new v0(new double[0], 0).f4016a = false;
    }

    public v0() {
        this(new double[10], 0);
    }

    public v0(double[] dArr, int r22) {
        this.f4106b = dArr;
        this.f4107c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r72, Object obj) {
        int r82;
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        if (r72 < 0 || r72 > (r82 = this.f4107c)) {
            throw new IndexOutOfBoundsException(o(r72));
        }
        double[] dArr = this.f4106b;
        if (r82 < dArr.length) {
            System.arraycopy(dArr, r72, dArr, r72 + 1, r82 - r72);
        } else {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r82, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r72);
            System.arraycopy(this.f4106b, r72, dArr2, r72 + 1, this.f4107c - r72);
            this.f4106b = dArr2;
        }
        this.f4106b[r72] = dDoubleValue;
        this.f4107c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        l(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        h();
        Charset charset = m1.f4035a;
        collection.getClass();
        if (!(collection instanceof v0)) {
            return super.addAll(collection);
        }
        v0 v0Var = (v0) collection;
        int r02 = v0Var.f4107c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4107c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        double[] dArr = this.f4106b;
        if (r23 > dArr.length) {
            this.f4106b = Arrays.copyOf(dArr, r23);
        }
        System.arraycopy(v0Var.f4106b, 0, this.f4106b, this.f4107c, v0Var.f4107c);
        this.f4107c = r23;
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
        if (!(obj instanceof v0)) {
            return super.equals(obj);
        }
        v0 v0Var = (v0) obj;
        if (this.f4107c != v0Var.f4107c) {
            return false;
        }
        double[] dArr = v0Var.f4106b;
        for (int r12 = 0; r12 < this.f4107c; r12++) {
            if (Double.doubleToLongBits(this.f4106b[r12]) != Double.doubleToLongBits(dArr[r12])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r32) {
        if (r32 >= this.f4107c) {
            return new v0(Arrays.copyOf(this.f4106b, r32), this.f4107c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r42) {
        m(r42);
        return Double.valueOf(this.f4106b[r42]);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4107c; r12++) {
            r02 = (r02 * 31) + m1.a(Double.doubleToLongBits(this.f4106b[r12]));
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int r82 = this.f4107c;
        for (int r02 = 0; r02 < r82; r02++) {
            if (this.f4106b[r02] == dDoubleValue) {
                return r02;
            }
        }
        return -1;
    }

    public final void l(double d10) {
        h();
        int r02 = this.f4107c;
        double[] dArr = this.f4106b;
        if (r02 == dArr.length) {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r02);
            this.f4106b = dArr2;
        }
        double[] dArr3 = this.f4106b;
        int r12 = this.f4107c;
        this.f4107c = r12 + 1;
        dArr3[r12] = d10;
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f4107c) {
            throw new IndexOutOfBoundsException(o(r22));
        }
    }

    public final String o(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f4107c);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r6) {
        h();
        m(r6);
        double[] dArr = this.f4106b;
        double d10 = dArr[r6];
        if (r6 < this.f4107c - 1) {
            System.arraycopy(dArr, r6 + 1, dArr, r6, (r3 - r6) - 1);
        }
        this.f4107c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f4106b;
        System.arraycopy(dArr, r42, dArr, r32, this.f4107c - r42);
        this.f4107c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r52, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        m(r52);
        double[] dArr = this.f4106b;
        double d10 = dArr[r52];
        dArr[r52] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4107c;
    }
}
