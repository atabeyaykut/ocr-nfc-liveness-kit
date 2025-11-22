package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class r6 extends m5<Integer> implements RandomAccess, u6, z7 {

    /* renamed from: d, reason: collision with root package name */
    public static final r6 f3714d;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3715b;

    /* renamed from: c, reason: collision with root package name */
    public int f3716c;

    static {
        r6 r6Var = new r6(new int[0], 0);
        f3714d = r6Var;
        r6Var.f3627a = false;
    }

    public r6() {
        this(new int[10], 0);
    }

    public r6(int[] r12, int r22) {
        this.f3715b = r12;
        this.f3716c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r6, Object obj) {
        int r02;
        int r72 = ((Integer) obj).intValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f3716c)) {
            throw new IndexOutOfBoundsException(m(r6));
        }
        int[] r12 = this.f3715b;
        if (r02 < r12.length) {
            System.arraycopy(r12, r6, r12, r6 + 1, r02 - r6);
        } else {
            int[] r03 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r03, 0, r6);
            System.arraycopy(this.f3715b, r6, r03, r6 + 1, this.f3716c - r6);
            this.f3715b = r03;
        }
        this.f3715b[r6] = r72;
        this.f3716c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        l(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        h();
        Charset charset = x6.f3835a;
        collection.getClass();
        if (!(collection instanceof r6)) {
            return super.addAll(collection);
        }
        r6 r6Var = (r6) collection;
        int r02 = r6Var.f3716c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f3716c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        int[] r03 = this.f3715b;
        if (r23 > r03.length) {
            this.f3715b = Arrays.copyOf(r03, r23);
        }
        System.arraycopy(r6Var.f3715b, 0, this.f3715b, this.f3716c, r6Var.f3716c);
        this.f3716c = r23;
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
        if (!(obj instanceof r6)) {
            return super.equals(obj);
        }
        r6 r6Var = (r6) obj;
        if (this.f3716c != r6Var.f3716c) {
            return false;
        }
        int[] r6 = r6Var.f3715b;
        for (int r12 = 0; r12 < this.f3716c; r12++) {
            if (this.f3715b[r12] != r6[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        o(r22);
        return Integer.valueOf(this.f3715b[r22]);
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f3716c; r12++) {
            r02 = (r02 * 31) + this.f3715b[r12];
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int r52 = ((Integer) obj).intValue();
        int r02 = this.f3716c;
        for (int r22 = 0; r22 < r02; r22++) {
            if (this.f3715b[r22] == r52) {
                return r22;
            }
        }
        return -1;
    }

    public final void l(int r6) {
        h();
        int r02 = this.f3716c;
        int[] r12 = this.f3715b;
        if (r02 == r12.length) {
            int[] r22 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r22, 0, r02);
            this.f3715b = r22;
        }
        int[] r03 = this.f3715b;
        int r13 = this.f3716c;
        this.f3716c = r13 + 1;
        r03[r13] = r6;
    }

    public final String m(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3716c);
    }

    public final void o(int r22) {
        if (r22 < 0 || r22 >= this.f3716c) {
            throw new IndexOutOfBoundsException(m(r22));
        }
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int r52) {
        h();
        o(r52);
        int[] r02 = this.f3715b;
        int r12 = r02[r52];
        if (r52 < this.f3716c - 1) {
            System.arraycopy(r02, r52 + 1, r02, r52, (r2 - r52) - 1);
        }
        this.f3716c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(r12);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] r02 = this.f3715b;
        System.arraycopy(r02, r42, r02, r32, this.f3716c - r42);
        this.f3716c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int r32, Object obj) {
        int r42 = ((Integer) obj).intValue();
        h();
        o(r32);
        int[] r02 = this.f3715b;
        int r12 = r02[r32];
        r02[r32] = r42;
        return Integer.valueOf(r12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3716c;
    }

    @Override // com.google.android.gms.internal.measurement.w6
    public final w6<Integer> v(int r32) {
        if (r32 >= this.f3716c) {
            return new r6(Arrays.copyOf(this.f3715b, r32), this.f3716c);
        }
        throw new IllegalArgumentException();
    }
}
