package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class e0 extends c<String> implements f0, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4256b;

    static {
        new e0(10).f4241a = false;
    }

    public e0(int r22) {
        this((ArrayList<Object>) new ArrayList(r22));
    }

    public e0(ArrayList<Object> arrayList) {
        this.f4256b = arrayList;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.c
    public final z.c F(int r22) {
        if (r22 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(r22);
        arrayList.addAll(this.f4256b);
        return new e0((ArrayList<Object>) arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r22, Object obj) {
        h();
        this.f4256b.add(r22, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.List
    public final boolean addAll(int r22, Collection<? extends String> collection) {
        h();
        if (collection instanceof f0) {
            collection = ((f0) collection).k();
        }
        boolean zAddAll = this.f4256b.addAll(r22, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f4256b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final void e0(i iVar) {
        h();
        this.f4256b.add(iVar);
        ((AbstractList) this).modCount++;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044 A[PHI: r2
      0x0044: PHI (r2v3 java.lang.String) = (r2v2 java.lang.String), (r2v7 java.lang.String) binds: [B:17:0x0042, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.util.AbstractList, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(int r7) {
        /*
            r6 = this;
            java.util.ArrayList r0 = r6.f4256b
            java.lang.Object r1 = r0.get(r7)
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto Ld
            java.lang.String r1 = (java.lang.String) r1
            goto L48
        Ld:
            boolean r2 = r1 instanceof com.google.crypto.tink.shaded.protobuf.i
            if (r2 == 0) goto L2c
            com.google.crypto.tink.shaded.protobuf.i r1 = (com.google.crypto.tink.shaded.protobuf.i) r1
            r1.getClass()
            java.nio.charset.Charset r2 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            int r3 = r1.size()
            if (r3 != 0) goto L21
            java.lang.String r2 = ""
            goto L25
        L21:
            java.lang.String r2 = r1.C(r2)
        L25:
            boolean r1 = r1.w()
            if (r1 == 0) goto L47
            goto L44
        L2c:
            byte[] r1 = (byte[]) r1
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            r2.<init>(r1, r3)
            com.google.crypto.tink.shaded.protobuf.o1$b r3 = com.google.crypto.tink.shaded.protobuf.o1.f4337a
            int r3 = r1.length
            com.google.crypto.tink.shaded.protobuf.o1$b r4 = com.google.crypto.tink.shaded.protobuf.o1.f4337a
            r5 = 0
            int r1 = r4.c(r5, r1, r3)
            if (r1 != 0) goto L42
            r5 = 1
        L42:
            if (r5 == 0) goto L47
        L44:
            r0.set(r7, r2)
        L47:
            r1 = r2
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e0.get(int):java.lang.Object");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final List<?> k() {
        return Collections.unmodifiableList(this.f4256b);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final f0 p() {
        return this.f4241a ? new m1(this) : this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final Object r(int r22) {
        return this.f4256b.get(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r32) {
        h();
        Object objRemove = this.f4256b.remove(r32);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof i)) {
            return new String((byte[]) objRemove, z.f4405a);
        }
        i iVar = (i) objRemove;
        iVar.getClass();
        return iVar.size() == 0 ? "" : iVar.C(z.f4405a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r22, Object obj) {
        h();
        Object obj2 = this.f4256b.set(r22, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof i)) {
            return new String((byte[]) obj2, z.f4405a);
        }
        i iVar = (i) obj2;
        iVar.getClass();
        return iVar.size() == 0 ? "" : iVar.C(z.f4405a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4256b.size();
    }
}
