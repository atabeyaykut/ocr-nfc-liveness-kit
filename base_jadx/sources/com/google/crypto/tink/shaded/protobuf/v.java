package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class v extends c<Float> implements RandomAccess, z0 {

    /* renamed from: b, reason: collision with root package name */
    public float[] f4389b;

    /* renamed from: c, reason: collision with root package name */
    public int f4390c;

    static {
        new v(new float[0], 0).f4241a = false;
    }

    public v() {
        this(new float[10], 0);
    }

    public v(float[] fArr, int r22) {
        this.f4389b = fArr;
        this.f4390c = r22;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r32) {
        if (r32 >= this.f4390c) {
            return new v(Arrays.copyOf(this.f4389b, r32), this.f4390c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, Object obj) {
        int r02;
        float fFloatValue = ((Float) obj).floatValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f4390c)) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r6, ", Size:");
            sbE.append(this.f4390c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        float[] fArr = this.f4389b;
        if (r02 < fArr.length) {
            System.arraycopy(fArr, r6, fArr, r6 + 1, r02 - r6);
        } else {
            float[] fArr2 = new float[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, r6);
            System.arraycopy(this.f4389b, r6, fArr2, r6 + 1, this.f4390c - r6);
            this.f4389b = fArr2;
        }
        this.f4389b[r6] = fFloatValue;
        this.f4390c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        h();
        Charset charset = z.f4405a;
        collection.getClass();
        if (!(collection instanceof v)) {
            return super.addAll(collection);
        }
        v vVar = (v) collection;
        int r02 = vVar.f4390c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4390c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        float[] fArr = this.f4389b;
        if (r23 > fArr.length) {
            this.f4389b = Arrays.copyOf(fArr, r23);
        }
        System.arraycopy(vVar.f4389b, 0, this.f4389b, this.f4390c, vVar.f4390c);
        this.f4390c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return super.equals(obj);
        }
        v vVar = (v) obj;
        if (this.f4390c != vVar.f4390c) {
            return false;
        }
        float[] fArr = vVar.f4389b;
        for (int r12 = 0; r12 < this.f4390c; r12++) {
            if (Float.floatToIntBits(this.f4389b[r12]) != Float.floatToIntBits(fArr[r12])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        m(r22);
        return Float.valueOf(this.f4389b[r22]);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4390c; r12++) {
            r02 = (r02 * 31) + Float.floatToIntBits(this.f4389b[r12]);
        }
        return r02;
    }

    public final void l(float f) {
        h();
        int r02 = this.f4390c;
        float[] fArr = this.f4389b;
        if (r02 == fArr.length) {
            float[] fArr2 = new float[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, r02);
            this.f4389b = fArr2;
        }
        float[] fArr3 = this.f4389b;
        int r12 = this.f4390c;
        this.f4390c = r12 + 1;
        fArr3[r12] = f;
    }

    public final void m(int r42) {
        if (r42 < 0 || r42 >= this.f4390c) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r42, ", Size:");
            sbE.append(this.f4390c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r52) {
        h();
        m(r52);
        float[] fArr = this.f4389b;
        float f = fArr[r52];
        if (r52 < this.f4390c - 1) {
            System.arraycopy(fArr, r52 + 1, fArr, r52, (r2 - r52) - 1);
        }
        this.f4390c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f4390c; r12++) {
            if (obj.equals(Float.valueOf(this.f4389b[r12]))) {
                float[] fArr = this.f4389b;
                System.arraycopy(fArr, r12 + 1, fArr, r12, (this.f4390c - r12) - 1);
                this.f4390c--;
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
        float[] fArr = this.f4389b;
        System.arraycopy(fArr, r42, fArr, r32, this.f4390c - r42);
        this.f4390c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r32, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        h();
        m(r32);
        float[] fArr = this.f4389b;
        float f = fArr[r32];
        fArr[r32] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4390c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        l(((Float) obj).floatValue());
        return true;
    }
}
