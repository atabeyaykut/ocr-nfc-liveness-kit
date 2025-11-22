package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class k1 extends j0<Integer> implements y2, RandomAccess {

    /* renamed from: d, reason: collision with root package name */
    public static final k1 f4018d;

    /* renamed from: b, reason: collision with root package name */
    public int[] f4019b;

    /* renamed from: c, reason: collision with root package name */
    public int f4020c;

    static {
        k1 k1Var = new k1(new int[0], 0);
        f4018d = k1Var;
        k1Var.f4016a = false;
    }

    public k1() {
        this(new int[10], 0);
    }

    public k1(int[] r12, int r22) {
        this.f4019b = r12;
        this.f4020c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r6, Object obj) {
        int r02;
        int r72 = ((Integer) obj).intValue();
        h();
        if (r6 < 0 || r6 > (r02 = this.f4020c)) {
            throw new IndexOutOfBoundsException(o(r6));
        }
        int[] r12 = this.f4019b;
        if (r02 < r12.length) {
            System.arraycopy(r12, r6, r12, r6 + 1, r02 - r6);
        } else {
            int[] r03 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r03, 0, r6);
            System.arraycopy(this.f4019b, r6, r03, r6 + 1, this.f4020c - r6);
            this.f4019b = r03;
        }
        this.f4019b[r6] = r72;
        this.f4020c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        l(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        h();
        Charset charset = m1.f4035a;
        collection.getClass();
        if (!(collection instanceof k1)) {
            return super.addAll(collection);
        }
        k1 k1Var = (k1) collection;
        int r02 = k1Var.f4020c;
        if (r02 == 0) {
            return false;
        }
        int r22 = this.f4020c;
        if (Integer.MAX_VALUE - r22 < r02) {
            throw new OutOfMemoryError();
        }
        int r23 = r22 + r02;
        int[] r03 = this.f4019b;
        if (r23 > r03.length) {
            this.f4019b = Arrays.copyOf(r03, r23);
        }
        System.arraycopy(k1Var.f4019b, 0, this.f4019b, this.f4020c, k1Var.f4020c);
        this.f4020c = r23;
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
        if (!(obj instanceof k1)) {
            return super.equals(obj);
        }
        k1 k1Var = (k1) obj;
        if (this.f4020c != k1Var.f4020c) {
            return false;
        }
        int[] r6 = k1Var.f4019b;
        for (int r12 = 0; r12 < this.f4020c; r12++) {
            if (this.f4019b[r12] != r6[r12]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r32) {
        if (r32 >= this.f4020c) {
            return new k1(Arrays.copyOf(this.f4019b, r32), this.f4020c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        m(r22);
        return Integer.valueOf(this.f4019b[r22]);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int r02 = 1;
        for (int r12 = 0; r12 < this.f4020c; r12++) {
            r02 = (r02 * 31) + this.f4019b[r12];
        }
        return r02;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int r52 = ((Integer) obj).intValue();
        int r02 = this.f4020c;
        for (int r22 = 0; r22 < r02; r22++) {
            if (this.f4019b[r22] == r52) {
                return r22;
            }
        }
        return -1;
    }

    public final void l(int r6) {
        h();
        int r02 = this.f4020c;
        int[] r12 = this.f4019b;
        if (r02 == r12.length) {
            int[] r22 = new int[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(r12, 0, r22, 0, r02);
            this.f4019b = r22;
        }
        int[] r03 = this.f4019b;
        int r13 = this.f4020c;
        this.f4020c = r13 + 1;
        r03[r13] = r6;
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f4020c) {
            throw new IndexOutOfBoundsException(o(r22));
        }
    }

    public final String o(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f4020c);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int r52) {
        h();
        m(r52);
        int[] r02 = this.f4019b;
        int r12 = r02[r52];
        if (r52 < this.f4020c - 1) {
            System.arraycopy(r02, r52 + 1, r02, r52, (r2 - r52) - 1);
        }
        this.f4020c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(r12);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int r32, int r42) {
        h();
        if (r42 < r32) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] r02 = this.f4019b;
        System.arraycopy(r02, r42, r02, r32, this.f4020c - r42);
        this.f4020c -= r42 - r32;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int r32, Object obj) {
        int r42 = ((Integer) obj).intValue();
        h();
        m(r32);
        int[] r02 = this.f4019b;
        int r12 = r02[r32];
        r02[r32] = r42;
        return Integer.valueOf(r12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4020c;
    }
}
