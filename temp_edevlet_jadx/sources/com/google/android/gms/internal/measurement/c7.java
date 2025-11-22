package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c7 extends m5<String> implements RandomAccess, d7 {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3411b;

    static {
        new c7(10).f3627a = false;
    }

    public c7() {
        this(10);
    }

    public c7(int r22) {
        this.f3411b = new ArrayList(r22);
    }

    public c7(ArrayList<Object> arrayList) {
        this.f3411b = arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final Object J(int r22) {
        return this.f3411b.get(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int r22, Object obj) {
        h();
        this.f3411b.add(r22, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final boolean addAll(int r22, Collection<? extends String> collection) {
        h();
        if (collection instanceof d7) {
            collection = ((d7) collection).i();
        }
        boolean zAddAll = this.f3411b.addAll(r22, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f3411b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final d7 e() {
        return this.f3627a ? new t8(this) : this;
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final List<?> i() {
        return Collections.unmodifiableList(this.f3411b);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final String get(int r6) {
        ArrayList arrayList = this.f3411b;
        Object obj = arrayList.get(r6);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof v5) {
            v5 v5Var = (v5) obj;
            String strW = v5Var.m() == 0 ? "" : v5Var.w(x6.f3835a);
            if (v5Var.y()) {
                arrayList.set(r6, strW);
            }
            return strW;
        }
        byte[] bArr = (byte[]) obj;
        String str = new String(bArr, x6.f3835a);
        vd.d dVar = a9.f3376a;
        int length = bArr.length;
        a9.f3376a.getClass();
        if (vd.d.a(bArr, 0, length)) {
            arrayList.set(r6, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.measurement.m5, java.util.AbstractList, java.util.List
    public final Object remove(int r32) {
        h();
        Object objRemove = this.f3411b.remove(r32);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof v5)) {
            return new String((byte[]) objRemove, x6.f3835a);
        }
        v5 v5Var = (v5) objRemove;
        return v5Var.m() == 0 ? "" : v5Var.w(x6.f3835a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r22, Object obj) {
        h();
        Object obj2 = this.f3411b.set(r22, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof v5)) {
            return new String((byte[]) obj2, x6.f3835a);
        }
        v5 v5Var = (v5) obj2;
        return v5Var.m() == 0 ? "" : v5Var.w(x6.f3835a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3411b.size();
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final void t(v5 v5Var) {
        h();
        this.f3411b.add(v5Var);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.w6
    public final /* bridge */ /* synthetic */ w6 v(int r22) {
        if (r22 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(r22);
        arrayList.addAll(this.f3411b);
        return new c7((ArrayList<Object>) arrayList);
    }
}
