package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class b8<E> extends m5<E> implements RandomAccess {

    /* renamed from: d, reason: collision with root package name */
    public static final b8<Object> f3397d;

    /* renamed from: b, reason: collision with root package name */
    public E[] f3398b;

    /* renamed from: c, reason: collision with root package name */
    public int f3399c;

    static {
        b8<Object> b8Var = new b8<>(new Object[0], 0);
        f3397d = b8Var;
        b8Var.f3627a = false;
    }

    public b8(E[] eArr, int r22) {
        this.f3398b = eArr;
        this.f3399c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, E e10) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f3399c)) {
            throw new IndexOutOfBoundsException(l(r6));
        }
        E[] eArr = this.f3398b;
        if (r02 < eArr.length) {
            System.arraycopy(eArr, r6, eArr, r6 + 1, r02 - r6);
        } else {
            E[] eArr2 = (E[]) new Object[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, r6);
            System.arraycopy(this.f3398b, r6, eArr2, r6 + 1, this.f3399c - r6);
            this.f3398b = eArr2;
        }
        this.f3398b[r6] = e10;
        this.f3399c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        h();
        int r02 = this.f3399c;
        E[] eArr = this.f3398b;
        if (r02 == eArr.length) {
            this.f3398b = (E[]) Arrays.copyOf(eArr, ((r02 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f3398b;
        int r12 = this.f3399c;
        this.f3399c = r12 + 1;
        eArr2[r12] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r22) {
        m(r22);
        return this.f3398b[r22];
    }

    public final String l(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3399c);
    }

    public final void m(int r22) {
        if (r22 < 0 || r22 >= this.f3399c) {
            throw new IndexOutOfBoundsException(l(r22));
        }
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final E remove(int r52) {
        h();
        m(r52);
        E[] eArr = this.f3398b;
        E e10 = eArr[r52];
        if (r52 < this.f3399c - 1) {
            System.arraycopy(eArr, r52 + 1, eArr, r52, (r2 - r52) - 1);
        }
        this.f3399c--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        h();
        m(r32);
        E[] eArr = this.f3398b;
        E e11 = eArr[r32];
        eArr[r32] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3399c;
    }

    @Override // com.google.android.gms.internal.measurement.w6
    public final /* bridge */ /* synthetic */ w6 v(int r32) {
        if (r32 >= this.f3399c) {
            return new b8(Arrays.copyOf(this.f3398b, r32), this.f3399c);
        }
        throw new IllegalArgumentException();
    }
}
