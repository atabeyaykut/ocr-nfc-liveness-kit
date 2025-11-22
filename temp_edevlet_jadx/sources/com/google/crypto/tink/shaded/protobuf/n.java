package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class n extends c<Double> implements RandomAccess, z0 {

    /* renamed from: b, reason: collision with root package name */
    public double[] f4324b;

    /* renamed from: c, reason: collision with root package name */
    public int f4325c;

    static {
        new n(new double[0], 0).f4241a = false;
    }

    public n() {
        this(new double[10], 0);
    }

    public n(double[] dArr, int r22) {
        this.f4324b = dArr;
        this.f4325c = r22;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r32) {
        if (r32 >= this.f4325c) {
            return new n(Arrays.copyOf(this.f4324b, r32), this.f4325c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r72, Object obj) {
        int r82;
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        if (r72 < 0 || r72 > (r82 = this.f4325c)) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r72, ", Size:");
            sbE.append(this.f4325c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        double[] dArr = this.f4324b;
        if (r82 < dArr.length) {
            System.arraycopy(dArr, r72, dArr, r72 + 1, r82 - r72);
        } else {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r82, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r72);
            System.arraycopy(this.f4324b, r72, dArr2, r72 + 1, this.f4325c - r72);
            this.f4324b = dArr2;
        }
        this.f4324b[r72] = dDoubleValue;
        this.f4325c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        h();
        Charset charset = z.f4405a;
        collection.getClass();
        if (!(collection instanceof n)) {
            return super.addAll(collection);
        }
        n nVar = (n) collection;
        int r02 = nVar.f4325c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4325c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        double[] dArr = this.f4324b;
        if (r23 > dArr.length) {
            this.f4324b = Arrays.copyOf(dArr, r23);
        }
        System.arraycopy(nVar.f4324b, 0, this.f4324b, this.f4325c, nVar.f4325c);
        this.f4325c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return super.equals(obj);
        }
        n nVar = (n) obj;
        if (this.f4325c != nVar.f4325c) {
            return false;
        }
        double[] dArr = nVar.f4324b;
        for (int r12 = 0; r12 < this.f4325c; r12++) {
            if (Double.doubleToLongBits(this.f4324b[r12]) != Double.doubleToLongBits(dArr[r12])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r42) {
        m(r42);
        return Double.valueOf(this.f4324b[r42]);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4325c; r12++) {
            r02 = (r02 * 31) + z.b(Double.doubleToLongBits(this.f4324b[r12]));
        }
        return r02;
    }

    public final void l(double d10) {
        h();
        int r02 = this.f4325c;
        double[] dArr = this.f4324b;
        if (r02 == dArr.length) {
            double[] dArr2 = new double[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, r02);
            this.f4324b = dArr2;
        }
        double[] dArr3 = this.f4324b;
        int r12 = this.f4325c;
        this.f4325c = r12 + 1;
        dArr3[r12] = d10;
    }

    public final void m(int r42) {
        if (r42 < 0 || r42 >= this.f4325c) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r42, ", Size:");
            sbE.append(this.f4325c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r6) {
        h();
        m(r6);
        double[] dArr = this.f4324b;
        double d10 = dArr[r6];
        if (r6 < this.f4325c - 1) {
            System.arraycopy(dArr, r6 + 1, dArr, r6, (r3 - r6) - 1);
        }
        this.f4325c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f4325c; r12++) {
            if (obj.equals(Double.valueOf(this.f4324b[r12]))) {
                double[] dArr = this.f4324b;
                System.arraycopy(dArr, r12 + 1, dArr, r12, (this.f4325c - r12) - 1);
                this.f4325c--;
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
        double[] dArr = this.f4324b;
        System.arraycopy(dArr, r42, dArr, r32, this.f4325c - r42);
        this.f4325c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r52, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        h();
        m(r52);
        double[] dArr = this.f4324b;
        double d10 = dArr[r52];
        dArr[r52] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4325c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        l(((Double) obj).doubleValue());
        return true;
    }
}
