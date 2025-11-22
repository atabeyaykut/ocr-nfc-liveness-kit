package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class t0 extends q<Float> implements RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public float[] f3315b;

    /* renamed from: c, reason: collision with root package name */
    public int f3316c;

    static {
        new t0().f3267a = false;
    }

    public t0() {
        this(new float[10], 0);
    }

    public t0(float[] fArr, int r22) {
        this.f3315b = fArr;
        this.f3316c = r22;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r32) {
        if (r32 >= this.f3316c) {
            return new t0(Arrays.copyOf(this.f3315b, r32), this.f3316c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r12, Object obj) {
        m(((Float) obj).floatValue(), r12);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        h();
        Charset charset = x0.f3344a;
        collection.getClass();
        if (!(collection instanceof t0)) {
            return super.addAll(collection);
        }
        t0 t0Var = (t0) collection;
        int r02 = t0Var.f3316c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3316c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        float[] fArr = this.f3315b;
        if (r23 > fArr.length) {
            this.f3315b = Arrays.copyOf(fArr, r23);
        }
        System.arraycopy(t0Var.f3315b, 0, this.f3315b, this.f3316c, t0Var.f3316c);
        this.f3316c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t0)) {
            return super.equals(obj);
        }
        t0 t0Var = (t0) obj;
        if (this.f3316c != t0Var.f3316c) {
            return false;
        }
        float[] fArr = t0Var.f3315b;
        for (int r12 = 0; r12 < this.f3316c; r12++) {
            if (this.f3315b[r12] != fArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        o(r22);
        return Float.valueOf(this.f3315b[r22]);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3316c; r12++) {
            r02 = (r02 * 31) + Float.floatToIntBits(this.f3315b[r12]);
        }
        return r02;
    }

    public final void l(float f) {
        m(f, this.f3316c);
    }

    public final void m(float f, int r72) {
        int r02;
        h();
        if (r72 < 0 || r72 > (r02 = this.f3316c)) {
            throw new IndexOutOfBoundsException(u(r72));
        }
        float[] fArr = this.f3315b;
        if (r02 < fArr.length) {
            System.arraycopy(fArr, r72, fArr, r72 + 1, r02 - r72);
        } else {
            float[] fArr2 = new float[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, r72);
            System.arraycopy(this.f3315b, r72, fArr2, r72 + 1, this.f3316c - r72);
            this.f3315b = fArr2;
        }
        this.f3315b[r72] = f;
        this.f3316c++;
        ((AbstractList) this).modCount++;
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3316c) {
            throw new IndexOutOfBoundsException(u(r22));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r52) {
        h();
        o(r52);
        float[] fArr = this.f3315b;
        float f = fArr[r52];
        int r22 = this.f3316c;
        if (r52 < r22 - 1) {
            System.arraycopy(fArr, r52 + 1, fArr, r52, r22 - r52);
        }
        this.f3316c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f3316c; r12++) {
            if (obj.equals(Float.valueOf(this.f3315b[r12]))) {
                float[] fArr = this.f3315b;
                System.arraycopy(fArr, r12 + 1, fArr, r12, this.f3316c - r12);
                this.f3316c--;
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
        float[] fArr = this.f3315b;
        System.arraycopy(fArr, r42, fArr, r32, this.f3316c - r42);
        this.f3316c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r32, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        h();
        o(r32);
        float[] fArr = this.f3315b;
        float f = fArr[r32];
        fArr[r32] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3316c;
    }

    public final String u(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3316c);
    }
}
