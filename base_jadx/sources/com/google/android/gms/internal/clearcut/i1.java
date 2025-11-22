package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class i1 extends q<String> implements j1, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3159b;

    static {
        new i1(10).f3267a = false;
    }

    public i1(int r22) {
        this((ArrayList<Object>) new ArrayList(r22));
    }

    public i1(ArrayList<Object> arrayList) {
        this.f3159b = arrayList;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r22) {
        if (r22 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(r22);
        arrayList.addAll(this.f3159b);
        return new i1((ArrayList<Object>) arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int r22, Object obj) {
        h();
        this.f3159b.add(r22, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.List
    public final boolean addAll(int r22, Collection<? extends String> collection) {
        h();
        if (collection instanceof j1) {
            collection = ((j1) collection).g();
        }
        boolean zAddAll = this.f3159b.addAll(r22, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.clearcut.q, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f3159b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.clearcut.j1
    public final List<?> g() {
        return Collections.unmodifiableList(this.f3159b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r72) {
        ArrayList arrayList = this.f3159b;
        Object obj = arrayList.get(r72);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof x) {
            x xVar = (x) obj;
            xVar.getClass();
            String strL = xVar.size() == 0 ? "" : xVar.l(x0.f3344a);
            if (xVar.o()) {
                arrayList.set(r72, strL);
            }
            return strL;
        }
        byte[] bArr = (byte[]) obj;
        String str = new String(bArr, x0.f3344a);
        w wVar = i3.f3160a;
        if (i3.f3160a.b(0, bArr, bArr.length) == 0) {
            arrayList.set(r72, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.clearcut.j1
    public final j1 i0() {
        return this.f3267a ? new d3(this) : this;
    }

    @Override // com.google.android.gms.internal.clearcut.j1
    public final Object r(int r22) {
        return this.f3159b.get(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r32) {
        h();
        Object objRemove = this.f3159b.remove(r32);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof x)) {
            return new String((byte[]) objRemove, x0.f3344a);
        }
        x xVar = (x) objRemove;
        xVar.getClass();
        return xVar.size() == 0 ? "" : xVar.l(x0.f3344a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r22, Object obj) {
        h();
        Object obj2 = this.f3159b.set(r22, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof x)) {
            return new String((byte[]) obj2, x0.f3344a);
        }
        x xVar = (x) obj2;
        xVar.getClass();
        return xVar.size() == 0 ? "" : xVar.l(x0.f3344a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3159b.size();
    }
}
