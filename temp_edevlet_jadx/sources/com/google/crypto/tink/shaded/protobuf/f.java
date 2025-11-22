package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class f extends c<Boolean> implements RandomAccess, z0 {

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f4257b;

    /* renamed from: c, reason: collision with root package name */
    public int f4258c;

    static {
        new f(new boolean[0], 0).f4241a = false;
    }

    public f() {
        this(new boolean[10], 0);
    }

    public f(boolean[] zArr, int r22) {
        this.f4257b = zArr;
        this.f4258c = r22;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r32) {
        if (r32 >= this.f4258c) {
            return new f(Arrays.copyOf(this.f4257b, r32), this.f4258c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, Object obj) {
        int r02;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f4258c)) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r6, ", Size:");
            sbE.append(this.f4258c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        boolean[] zArr = this.f4257b;
        if (r02 < zArr.length) {
            System.arraycopy(zArr, r6, zArr, r6 + 1, r02 - r6);
        } else {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r6);
            System.arraycopy(this.f4257b, r6, zArr2, r6 + 1, this.f4258c - r6);
            this.f4257b = zArr2;
        }
        this.f4257b[r6] = zBooleanValue;
        this.f4258c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        h();
        Charset charset = z.f4405a;
        collection.getClass();
        if (!(collection instanceof f)) {
            return super.addAll(collection);
        }
        f fVar = (f) collection;
        int r02 = fVar.f4258c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4258c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        boolean[] zArr = this.f4257b;
        if (r23 > zArr.length) {
            this.f4257b = Arrays.copyOf(zArr, r23);
        }
        System.arraycopy(fVar.f4257b, 0, this.f4257b, this.f4258c, fVar.f4258c);
        this.f4258c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return super.equals(obj);
        }
        f fVar = (f) obj;
        if (this.f4258c != fVar.f4258c) {
            return false;
        }
        boolean[] zArr = fVar.f4257b;
        for (int r12 = 0; r12 < this.f4258c; r12++) {
            if (this.f4257b[r12] != zArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        m(r22);
        return Boolean.valueOf(this.f4257b[r22]);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4258c; r12++) {
            r02 = (r02 * 31) + z.a(this.f4257b[r12]);
        }
        return r02;
    }

    public final void l(boolean z10) {
        h();
        int r02 = this.f4258c;
        boolean[] zArr = this.f4257b;
        if (r02 == zArr.length) {
            boolean[] zArr2 = new boolean[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, r02);
            this.f4257b = zArr2;
        }
        boolean[] zArr3 = this.f4257b;
        int r12 = this.f4258c;
        this.f4258c = r12 + 1;
        zArr3[r12] = z10;
    }

    public final void m(int r42) {
        if (r42 < 0 || r42 >= this.f4258c) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r42, ", Size:");
            sbE.append(this.f4258c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r52) {
        h();
        m(r52);
        boolean[] zArr = this.f4257b;
        boolean z10 = zArr[r52];
        if (r52 < this.f4258c - 1) {
            System.arraycopy(zArr, r52 + 1, zArr, r52, (r2 - r52) - 1);
        }
        this.f4258c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f4258c; r12++) {
            if (obj.equals(Boolean.valueOf(this.f4257b[r12]))) {
                boolean[] zArr = this.f4257b;
                System.arraycopy(zArr, r12 + 1, zArr, r12, (this.f4258c - r12) - 1);
                this.f4258c--;
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
        boolean[] zArr = this.f4257b;
        System.arraycopy(zArr, r42, zArr, r32, this.f4258c - r42);
        this.f4258c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r32, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        h();
        m(r32);
        boolean[] zArr = this.f4257b;
        boolean z10 = zArr[r32];
        zArr[r32] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4258c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        l(((Boolean) obj).booleanValue());
        return true;
    }
}
