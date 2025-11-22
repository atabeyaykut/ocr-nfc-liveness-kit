package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class b1<E> extends c<E> implements RandomAccess {

    /* renamed from: d, reason: collision with root package name */
    public static final b1<Object> f4238d;

    /* renamed from: b, reason: collision with root package name */
    public E[] f4239b;

    /* renamed from: c, reason: collision with root package name */
    public int f4240c;

    static {
        b1<Object> b1Var = new b1<>(new Object[0], 0);
        f4238d = b1Var;
        b1Var.f4241a = false;
    }

    public b1(E[] eArr, int r22) {
        this.f4239b = eArr;
        this.f4240c = r22;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r32) {
        if (r32 >= this.f4240c) {
            return new b1(Arrays.copyOf(this.f4239b, r32), this.f4240c);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, E e10) {
        int r02;
        h();
        if (r6 < 0 || r6 > (r02 = this.f4240c)) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r6, ", Size:");
            sbE.append(this.f4240c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        E[] eArr = this.f4239b;
        if (r02 < eArr.length) {
            System.arraycopy(eArr, r6, eArr, r6 + 1, r02 - r6);
        } else {
            E[] eArr2 = (E[]) new Object[androidx.camera.camera2.internal.c.a(r02, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, r6);
            System.arraycopy(this.f4239b, r6, eArr2, r6 + 1, this.f4240c - r6);
            this.f4239b = eArr2;
        }
        this.f4239b[r6] = e10;
        this.f4240c++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        h();
        int r02 = this.f4240c;
        E[] eArr = this.f4239b;
        if (r02 == eArr.length) {
            this.f4239b = (E[]) Arrays.copyOf(eArr, ((r02 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f4239b;
        int r12 = this.f4240c;
        this.f4240c = r12 + 1;
        eArr2[r12] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r22) {
        l(r22);
        return this.f4239b[r22];
    }

    public final void l(int r42) {
        if (r42 < 0 || r42 >= this.f4240c) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Index:", r42, ", Size:");
            sbE.append(this.f4240c);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int r52) {
        h();
        l(r52);
        E[] eArr = this.f4239b;
        E e10 = eArr[r52];
        if (r52 < this.f4240c - 1) {
            System.arraycopy(eArr, r52 + 1, eArr, r52, (r2 - r52) - 1);
        }
        this.f4240c--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        h();
        l(r32);
        E[] eArr = this.f4239b;
        E e11 = eArr[r32];
        eArr[r32] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4240c;
    }
}
