package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class b6 extends m5<Double> implements RandomAccess, z7 {

    /* renamed from: b, reason: collision with root package name */
    public double[] f3393b;

    /* renamed from: c, reason: collision with root package name */
    public int f3394c;

    static {
        new b6(new double[0], 0).f3627a = false;
    }

    public b6() {
        this(new double[10], 0);
    }

    public b6(double[] dArr, int r22) {
        this.f3393b = dArr;
        this.f3394c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r72, Object obj) {
        int r82;
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        if (r72 < 0 || r72 > (r82 = this.f3394c)) {
            throw new IndexOutOfBoundsException(m(r72));
        }
        double[] dArr = this.f3393b;
        if (r82 < dArr.length) {
            System.arraycopy(dArr, r72, dArr, r72 + 1, r82 - r72);
        } else {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r82, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r72);
            System.arraycopy(this.f3393b, r72, dArr2, r72 + 1, this.f3394c - r72);
            this.f3393b = dArr2;
        }
        this.f3393b[r72] = dDoubleValue;
        this.f3394c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        h();
        Charset charset = x6.f3835a;
        collection.getClass();
        if (!(collection instanceof b6)) {
            return super.addAll(collection);
        }
        b6 b6Var = (b6) collection;
        int r02 = b6Var.f3394c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3394c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        double[] dArr = this.f3393b;
        if (r23 > dArr.length) {
            this.f3393b = Arrays.copyOf(dArr, r23);
        }
        System.arraycopy(b6Var.f3393b, 0, this.f3393b, this.f3394c, b6Var.f3394c);
        this.f3394c = r23;
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
        if (!(obj instanceof b6)) {
            return super.equals(obj);
        }
        b6 b6Var = (b6) obj;
        if (this.f3394c != b6Var.f3394c) {
            return false;
        }
        double[] dArr = b6Var.f3393b;
        for (int r12 = 0; r12 < this.f3394c; r12++) {
            if (Double.doubleToLongBits(this.f3393b[r12]) != Double.doubleToLongBits(dArr[r12])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r42) {
        o(r42);
        return Double.valueOf(this.f3393b[r42]);
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3394c; r12++) {
            r02 = (r02 * 31) + x6.b(Double.doubleToLongBits(this.f3393b[r12]));
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int r82 = this.f3394c;
        for (int r02 = 0; r02 < r82; r02++) {
            if (this.f3393b[r02] == dDoubleValue) {
                return r02;
            }
        }
        return -1;
    }

    public final void l(double d10) {
        h();
        int r02 = this.f3394c;
        double[] dArr = this.f3393b;
        if (r02 == dArr.length) {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r02);
            this.f3393b = dArr2;
        }
        double[] dArr3 = this.f3393b;
        int r12 = this.f3394c;
        this.f3394c = r12 + 1;
        dArr3[r12] = d10;
    }

    public final String m(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3394c);
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3394c) {
            throw new IndexOutOfBoundsException(m(r22));
        }
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int r6) {
        h();
        o(r6);
        double[] dArr = this.f3393b;
        double d10 = dArr[r6];
        if (r6 < this.f3394c - 1) {
            System.arraycopy(dArr, r6 + 1, dArr, r6, (r3 - r6) - 1);
        }
        this.f3394c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f3393b;
        System.arraycopy(dArr, r42, dArr, r32, this.f3394c - r42);
        this.f3394c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int r52, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        o(r52);
        double[] dArr = this.f3393b;
        double d10 = dArr[r52];
        dArr[r52] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3394c;
    }

    @Override // com.google.android.gms.internal.measurement.w6
    public final /* bridge */ /* synthetic */ w6 v(int r32) {
        if (r32 >= this.f3394c) {
            return new b6(Arrays.copyOf(this.f3393b, r32), this.f3394c);
        }
        throw new IllegalArgumentException();
    }
}
