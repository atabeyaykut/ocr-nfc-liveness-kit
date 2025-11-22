package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class x1 extends j0<String> implements a2, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4121b;

    static {
        new x1(10).f4016a = false;
    }

    public x1(int r22) {
        this((ArrayList<Object>) new ArrayList(r22));
    }

    public x1(ArrayList<Object> arrayList) {
        this.f4121b = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r22, Object obj) {
        h();
        this.f4121b.add(r22, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final boolean addAll(int r22, Collection<? extends String> collection) {
        h();
        if (collection instanceof a2) {
            collection = ((a2) collection).d();
        }
        boolean zAddAll = this.f4121b.addAll(r22, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f4121b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final List<?> d() {
        return Collections.unmodifiableList(this.f4121b);
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final void d0(p0 p0Var) {
        h();
        this.f4121b.add(p0Var);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final a2 e() {
        return this.f4016a ? new s3(this) : this;
    }

    @Override // com.google.android.gms.internal.vision.r1
    public final /* synthetic */ r1 f(int r22) {
        if (r22 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(r22);
        arrayList.addAll(this.f4121b);
        return new x1((ArrayList<Object>) arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r72) {
        ArrayList arrayList = this.f4121b;
        Object obj = arrayList.get(r72);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof p0) {
            p0 p0Var = (p0) obj;
            p0Var.getClass();
            String strU = p0Var.x() == 0 ? "" : p0Var.u(m1.f4035a);
            if (p0Var.c()) {
                arrayList.set(r72, strU);
            }
            return strU;
        }
        byte[] bArr = (byte[]) obj;
        String str = new String(bArr, m1.f4035a);
        m0 m0Var = w3.f4119a;
        if (w3.f4119a.a(0, bArr, bArr.length) == 0) {
            arrayList.set(r72, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final Object j(int r22) {
        return this.f4121b.get(r22);
    }

    @Override // com.google.android.gms.internal.vision.j0, java.util.AbstractList, java.util.List
    public final Object remove(int r32) {
        h();
        Object objRemove = this.f4121b.remove(r32);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof p0)) {
            return new String((byte[]) objRemove, m1.f4035a);
        }
        p0 p0Var = (p0) objRemove;
        p0Var.getClass();
        return p0Var.x() == 0 ? "" : p0Var.u(m1.f4035a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r22, Object obj) {
        h();
        Object obj2 = this.f4121b.set(r22, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof p0)) {
            return new String((byte[]) obj2, m1.f4035a);
        }
        p0 p0Var = (p0) obj2;
        p0Var.getClass();
        return p0Var.x() == 0 ? "" : p0Var.u(m1.f4035a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4121b.size();
    }
}
