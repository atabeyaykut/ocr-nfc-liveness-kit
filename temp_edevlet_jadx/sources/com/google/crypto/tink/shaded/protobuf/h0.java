package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class h0 extends c<Long> implements RandomAccess, z0 {

    /* renamed from: b, reason: collision with root package name */
    public long[] f4269b;

    /* renamed from: c, reason: collision with root package name */
    public int f4270c;

    static {
        new h0(new long[0], 0).f4241a = false;
    }

    public h0() {
        this(new long[10], 0);
    }

    public h0(long[] jArr, int r22) {
        this.f4269b = jArr;
        this.f4270c = r22;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r32) {
        if (r32 >= this.f4270c) {
            return new h0(Arrays.copyOf(this.f4269b, r32), this.f4270c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r72, Object obj) {
        int r82;
        long jLongValue = ((Long) obj).longValue();
        h();
        if (r72 < 0 || r72 > (r82 = this.f4270c)) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r72, ", Size:");
            sbE.append(this.f4270c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        long[] jArr = this.f4269b;
        if (r82 < jArr.length) {
            System.arraycopy(jArr, r72, jArr, r72 + 1, r82 - r72);
        } else {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r82, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r72);
            System.arraycopy(this.f4269b, r72, jArr2, r72 + 1, this.f4270c - r72);
            this.f4269b = jArr2;
        }
        this.f4269b[r72] = jLongValue;
        this.f4270c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        h();
        Charset charset = z.f4405a;
        collection.getClass();
        if (!(collection instanceof h0)) {
            return super.addAll(collection);
        }
        h0 h0Var = (h0) collection;
        int r02 = h0Var.f4270c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4270c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        long[] jArr = this.f4269b;
        if (r23 > jArr.length) {
            this.f4269b = Arrays.copyOf(jArr, r23);
        }
        System.arraycopy(h0Var.f4269b, 0, this.f4269b, this.f4270c, h0Var.f4270c);
        this.f4270c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return super.equals(obj);
        }
        h0 h0Var = (h0) obj;
        if (this.f4270c != h0Var.f4270c) {
            return false;
        }
        long[] jArr = h0Var.f4269b;
        for (int r12 = 0; r12 < this.f4270c; r12++) {
            if (this.f4269b[r12] != jArr[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r42) {
        m(r42);
        return Long.valueOf(this.f4269b[r42]);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4270c; r12++) {
            r02 = (r02 * 31) + z.b(this.f4269b[r12]);
        }
        return r02;
    }

    public final void l(long j10) {
        h();
        int r02 = this.f4270c;
        long[] jArr = this.f4269b;
        if (r02 == jArr.length) {
            long[] jArr2 = new long[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, r02);
            this.f4269b = jArr2;
        }
        long[] jArr3 = this.f4269b;
        int r12 = this.f4270c;
        this.f4270c = r12 + 1;
        jArr3[r12] = j10;
    }

    public final void m(int r42) {
        if (r42 < 0 || r42 >= this.f4270c) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r42, ", Size:");
            sbE.append(this.f4270c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r6) {
        h();
        m(r6);
        long[] jArr = this.f4269b;
        long j10 = jArr[r6];
        if (r6 < this.f4270c - 1) {
            System.arraycopy(jArr, r6 + 1, jArr, r6, (r3 - r6) - 1);
        }
        this.f4270c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f4270c; r12++) {
            if (obj.equals(Long.valueOf(this.f4269b[r12]))) {
                long[] jArr = this.f4269b;
                System.arraycopy(jArr, r12 + 1, jArr, r12, (this.f4270c - r12) - 1);
                this.f4270c--;
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
        long[] jArr = this.f4269b;
        System.arraycopy(jArr, r42, jArr, r32, this.f4270c - r42);
        this.f4270c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r52, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        h();
        m(r52);
        long[] jArr = this.f4269b;
        long j10 = jArr[r52];
        jArr[r52] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4270c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        l(((Long) obj).longValue());
        return true;
    }
}
