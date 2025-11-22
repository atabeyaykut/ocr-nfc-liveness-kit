package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class y extends c<Integer> implements RandomAccess, z0 {

    /* renamed from: b, reason: collision with root package name */
    public int[] f4403b;

    /* renamed from: c, reason: collision with root package name */
    public int f4404c;

    static {
        new y(new int[0], 0).f4241a = false;
    }

    public y() {
        this(new int[10], 0);
    }

    public y(int[] r12, int r22) {
        this.f4403b = r12;
        this.f4404c = r22;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r32) {
        if (r32 >= this.f4404c) {
            return new y(Arrays.copyOf(this.f4403b, r32), this.f4404c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, Object obj) {
        int r02;
        int r72 = ((Integer) obj).intValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f4404c)) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r6, ", Size:");
            sbE.append(this.f4404c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        int[] r12 = this.f4403b;
        if (r02 < r12.length) {
            System.arraycopy(r12, r6, r12, r6 + 1, r02 - r6);
        } else {
            int[] r03 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r03, 0, r6);
            System.arraycopy(this.f4403b, r6, r03, r6 + 1, this.f4404c - r6);
            this.f4403b = r03;
        }
        this.f4403b[r6] = r72;
        this.f4404c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        h();
        Charset charset = z.f4405a;
        collection.getClass();
        if (!(collection instanceof y)) {
            return super.addAll(collection);
        }
        y yVar = (y) collection;
        int r02 = yVar.f4404c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4404c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        int[] r03 = this.f4403b;
        if (r23 > r03.length) {
            this.f4403b = Arrays.copyOf(r03, r23);
        }
        System.arraycopy(yVar.f4403b, 0, this.f4403b, this.f4404c, yVar.f4404c);
        this.f4404c = r23;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return super.equals(obj);
        }
        y yVar = (y) obj;
        if (this.f4404c != yVar.f4404c) {
            return false;
        }
        int[] r6 = yVar.f4403b;
        for (int r12 = 0; r12 < this.f4404c; r12++) {
            if (this.f4403b[r12] != r6[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        m(r22);
        return Integer.valueOf(this.f4403b[r22]);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4404c; r12++) {
            r02 = (r02 * 31) + this.f4403b[r12];
        }
        return r02;
    }

    public final void l(int r6) {
        h();
        int r02 = this.f4404c;
        int[] r12 = this.f4403b;
        if (r02 == r12.length) {
            int[] r22 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r22, 0, r02);
            this.f4403b = r22;
        }
        int[] r03 = this.f4403b;
        int r13 = this.f4404c;
        this.f4404c = r13 + 1;
        r03[r13] = r6;
    }

    public final void m(int r42) {
        if (r42 < 0 || r42 >= this.f4404c) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r42, ", Size:");
            sbE.append(this.f4404c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r52) {
        h();
        m(r52);
        int[] r02 = this.f4403b;
        int r12 = r02[r52];
        if (r52 < this.f4404c - 1) {
            System.arraycopy(r02, r52 + 1, r02, r52, (r2 - r52) - 1);
        }
        this.f4404c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        h();
        for (int r12 = 0; r12 < this.f4404c; r12++) {
            if (obj.equals(Integer.valueOf(this.f4403b[r12]))) {
                int[] r52 = this.f4403b;
                System.arraycopy(r52, r12 + 1, r52, r12, (this.f4404c - r12) - 1);
                this.f4404c--;
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
        int[] r02 = this.f4403b;
        System.arraycopy(r02, r42, r02, r32, this.f4404c - r42);
        this.f4404c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r32, Object obj) {
        int r42 = ((Integer) obj).intValue();
        h();
        m(r32);
        int[] r02 = this.f4403b;
        int r12 = r02[r32];
        r02[r32] = r42;
        return Integer.valueOf(r12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4404c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        l(((Integer) obj).intValue());
        return true;
    }
}
