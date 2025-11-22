package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c3<E> extends j0<E> implements RandomAccess {

    /* renamed from: d, reason: collision with root package name */
    public static final c3<Object> f3919d;

    /* renamed from: b, reason: collision with root package name */
    public E[] f3920b;

    /* renamed from: c, reason: collision with root package name */
    public int f3921c;

    static {
        c3<Object> c3Var = new c3<>(new Object[0], 0);
        f3919d = c3Var;
        c3Var.f4016a = false;
    }

    public c3(E[] eArr, int r22) {
        this.f3920b = eArr;
        this.f3921c = r22;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, E e10) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f3921c)) {
            throw new IndexOutOfBoundsException(m(r6));
        }
        E[] eArr = this.f3920b;
        if (r02 < eArr.length) {
            System.arraycopy(eArr, r6, eArr, r6 + 1, r02 - r6);
        } else {
            E[] eArr2 = (E[]) new Object[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, r6);
            System.arraycopy(this.f3920b, r6, eArr2, r6 + 1, this.f3921c - r6);
            this.f3920b = eArr2;
        }
        this.f3920b[r6] = e10;
        this.f3921c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        h();
        int r02 = this.f3921c;
        E[] eArr = this.f3920b;
        if (r02 == eArr.length) {
            this.f3920b = (E[]) Arrays.copyOf(eArr, ((r02 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f3920b;
        int r12 = this.f3921c;
        this.f3921c = r12 + 1;
        eArr2[r12] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r32) {
        if (r32 >= this.f3921c) {
            return new c3(Arrays.copyOf(this.f3920b, r32), this.f3921c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r22) {
        l(r22);
        return this.f3920b[r22];
    }

    public final void l(int r22) {
        if (r22 < 0 || r22 >= this.f3921c) {
            throw new IndexOutOfBoundsException(m(r22));
        }
    }

    public final String m(int r52) {
        return androidx.appcompat.graphics.drawable.a.e(35, "Index:", r52, ", Size:", this.f3921c);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final E remove(int r52) {
        h();
        l(r52);
        E[] eArr = this.f3920b;
        E e10 = eArr[r52];
        if (r52 < this.f3921c - 1) {
            System.arraycopy(eArr, r52 + 1, eArr, r52, (r2 - r52) - 1);
        }
        this.f3921c--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        h();
        l(r32);
        E[] eArr = this.f3920b;
        E e11 = eArr[r32];
        eArr[r32] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3921c;
    }
}
