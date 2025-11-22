package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class h1 extends j0<Float> implements y2, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public float[] f3977b;

    /* renamed from: c, reason: collision with root package name */
    public int f3978c;

    static {
        new h1(new float[0], 0).f4016a = false;
    }

    public h1() {
        this(new float[10], 0);
    }

    public h1(float[] fArr, int r22) {
        this.f3977b = fArr;
        this.f3978c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r6, Object obj) {
        int r02;
        float fFloatValue = ((Float) obj).floatValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f3978c)) {
            throw new IndexOutOfBoundsException(o(r6));
        }
        float[] fArr = this.f3977b;
        if (r02 < fArr.length) {
            System.arraycopy(fArr, r6, fArr, r6 + 1, r02 - r6);
        } else {
            float[] fArr2 = new float[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, r6);
            System.arraycopy(this.f3977b, r6, fArr2, r6 + 1, this.f3978c - r6);
            this.f3977b = fArr2;
        }
        this.f3977b[r6] = fFloatValue;
        this.f3978c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        l(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        h();
        Charset charset = m1.f4035a;
        collection.getClass();
        if (!(collection instanceof h1)) {
            return super.addAll(collection);
        }
        h1 h1Var = (h1) collection;
        int r02 = h1Var.f3978c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3978c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        float[] fArr = this.f3977b;
        if (r23 > fArr.length) {
            this.f3977b = Arrays.copyOf(fArr, r23);
        }
        System.arraycopy(h1Var.f3977b, 0, this.f3977b, this.f3978c, h1Var.f3978c);
        this.f3978c = r23;
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
        if (!(obj instanceof h1)) {
            return super.equals(obj);
        }
        h1 h1Var = (h1) obj;
        if (this.f3978c != h1Var.f3978c) {
            return false;
        }
        float[] fArr = h1Var.f3977b;
        for (int r12 = 0; r12 < this.f3978c; r12++) {
            if (Float.floatToIntBits(this.f3977b[r12]) != Float.floatToIntBits(fArr[r12])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r32) {
        if (r32 >= this.f3978c) {
            return new h1(Arrays.copyOf(this.f3977b, r32), this.f3978c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        m(r22);
        return Float.valueOf(this.f3977b[r22]);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3978c; r12++) {
            r02 = (r02 * 31) + Float.floatToIntBits(this.f3977b[r12]);
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int r02 = this.f3978c;
        for (int r22 = 0; r22 < r02; r22++) {
            if (this.f3977b[r22] == fFloatValue) {
                return r22;
            }
        }
        return -1;
    }

    public final void l(float f) {
        h();
        int r02 = this.f3978c;
        float[] fArr = this.f3977b;
        if (r02 == fArr.length) {
            float[] fArr2 = new float[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, r02);
            this.f3977b = fArr2;
        }
        float[] fArr3 = this.f3977b;
        int r12 = this.f3978c;
        this.f3978c = r12 + 1;
        fArr3[r12] = f;
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f3978c) {
            throw new IndexOutOfBoundsException(o(r22));
        }
    }

    public final String o(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3978c);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r52) {
        h();
        m(r52);
        float[] fArr = this.f3977b;
        float f = fArr[r52];
        if (r52 < this.f3978c - 1) {
            System.arraycopy(fArr, r52 + 1, fArr, r52, (r2 - r52) - 1);
        }
        this.f3978c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f3977b;
        System.arraycopy(fArr, r42, fArr, r32, this.f3978c - r42);
        this.f3978c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r32, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        h();
        m(r32);
        float[] fArr = this.f3977b;
        float f = fArr[r32];
        fArr[r32] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3978c;
    }
}
