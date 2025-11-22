package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class w3 implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public Object f3339a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f3340b = new ArrayList();

    public final void b() throws IOException {
        if (this.f3339a != null) {
            throw new NoSuchMethodError();
        }
        Iterator it = this.f3340b.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
    }

    public final void c() {
        if (this.f3339a != null) {
            throw new NoSuchMethodError();
        }
        Iterator it = this.f3340b.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NoSuchMethodError();
        }
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final w3 clone() throws CloneNotSupportedException {
        Object objClone;
        w3 w3Var = new w3();
        try {
            ArrayList arrayList = this.f3340b;
            if (arrayList == null) {
                w3Var.f3340b = null;
            } else {
                w3Var.f3340b.addAll(arrayList);
            }
            Object obj = this.f3339a;
            if (obj != null) {
                if (obj instanceof y3) {
                    objClone = (y3) ((y3) obj).clone();
                } else if (obj instanceof byte[]) {
                    objClone = ((byte[]) obj).clone();
                } else {
                    int r32 = 0;
                    if (obj instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) obj;
                        byte[][] bArr2 = new byte[bArr.length][];
                        w3Var.f3339a = bArr2;
                        while (r32 < bArr.length) {
                            bArr2[r32] = (byte[]) bArr[r32].clone();
                            r32++;
                        }
                    } else if (obj instanceof boolean[]) {
                        objClone = ((boolean[]) obj).clone();
                    } else if (obj instanceof int[]) {
                        objClone = ((int[]) obj).clone();
                    } else if (obj instanceof long[]) {
                        objClone = ((long[]) obj).clone();
                    } else if (obj instanceof float[]) {
                        objClone = ((float[]) obj).clone();
                    } else if (obj instanceof double[]) {
                        objClone = ((double[]) obj).clone();
                    } else if (obj instanceof y3[]) {
                        y3[] y3VarArr = (y3[]) obj;
                        y3[] y3VarArr2 = new y3[y3VarArr.length];
                        w3Var.f3339a = y3VarArr2;
                        while (r32 < y3VarArr.length) {
                            y3VarArr2[r32] = (y3) y3VarArr[r32].clone();
                            r32++;
                        }
                    }
                }
                w3Var.f3339a = objClone;
            }
            return w3Var;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public final boolean equals(Object obj) {
        ArrayList arrayList;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w3)) {
            return false;
        }
        w3 w3Var = (w3) obj;
        if (this.f3339a != null && w3Var.f3339a != null) {
            throw null;
        }
        ArrayList arrayList2 = this.f3340b;
        if (arrayList2 != null && (arrayList = w3Var.f3340b) != null) {
            return arrayList2.equals(arrayList);
        }
        try {
            c();
            byte[] bArr = new byte[0];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, 0);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferWrap.order(byteOrder);
            b();
            w3Var.c();
            byte[] bArr2 = new byte[0];
            ByteBuffer.wrap(bArr2, 0, 0).order(byteOrder);
            w3Var.b();
            return Arrays.equals(bArr, bArr2);
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public final int hashCode() {
        try {
            c();
            byte[] bArr = new byte[0];
            ByteBuffer.wrap(bArr, 0, 0).order(ByteOrder.LITTLE_ENDIAN);
            b();
            return Arrays.hashCode(bArr) + 527;
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }
}
