package mb;

import java.io.UnsupportedEncodingException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class m extends AbstractList<String> implements RandomAccess, n {

    /* renamed from: b, reason: collision with root package name */
    public static final v f10303b = new v(new m());

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10304a;

    public m() {
        this.f10304a = new ArrayList();
    }

    public m(n nVar) {
        this.f10304a = new ArrayList(nVar.size());
        addAll(nVar);
    }

    @Override // mb.n
    public final void O(o oVar) {
        this.f10304a.add(oVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r22, Object obj) {
        this.f10304a.add(r22, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int r22, Collection<? extends String> collection) {
        if (collection instanceof n) {
            collection = ((n) collection).k();
        }
        boolean zAddAll = this.f10304a.addAll(r22, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // mb.n
    public final c c0(int r72) {
        c oVar;
        ArrayList arrayList = this.f10304a;
        Object obj = arrayList.get(r72);
        if (obj instanceof c) {
            oVar = (c) obj;
        } else if (obj instanceof String) {
            String str = (String) obj;
            o oVar2 = c.f10255a;
            try {
                oVar = new o(str.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e10) {
                throw new RuntimeException("UTF-8 not supported?", e10);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            o oVar3 = c.f10255a;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            oVar = new o(bArr2);
        }
        if (oVar != obj) {
            arrayList.set(r72, oVar);
        }
        return oVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f10304a.clear();
        ((AbstractList) this).modCount++;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040 A[PHI: r2
      0x0040: PHI (r2v4 java.lang.String) = (r2v3 java.lang.String), (r2v6 java.lang.String) binds: [B:20:0x003e, B:10:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.util.AbstractList, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(int r6) {
        /*
            r5 = this;
            java.util.ArrayList r0 = r5.f10304a
            java.lang.Object r1 = r0.get(r6)
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto Ld
            java.lang.String r1 = (java.lang.String) r1
            goto L44
        Ld:
            boolean r2 = r1 instanceof mb.c
            java.lang.String r3 = "UTF-8 not supported?"
            if (r2 == 0) goto L2a
            mb.c r1 = (mb.c) r1
            r1.getClass()
            java.lang.String r2 = r1.E()     // Catch: java.io.UnsupportedEncodingException -> L23
            boolean r1 = r1.x()
            if (r1 == 0) goto L43
            goto L40
        L23:
            r6 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r3, r6)
            throw r0
        L2a:
            byte[] r1 = (byte[]) r1
            byte[] r2 = mb.i.f10297a
            java.lang.String r2 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L45
            java.lang.String r4 = "UTF-8"
            r2.<init>(r1, r4)     // Catch: java.io.UnsupportedEncodingException -> L45
            int r3 = r1.length
            r4 = 0
            int r1 = b8.f.a0(r1, r4, r3)
            if (r1 != 0) goto L3e
            r4 = 1
        L3e:
            if (r4 == 0) goto L43
        L40:
            r0.set(r6, r2)
        L43:
            r1 = r2
        L44:
            return r1
        L45:
            r6 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>(r3, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mb.m.get(int):java.lang.Object");
    }

    @Override // mb.n
    public final List<?> k() {
        return Collections.unmodifiableList(this.f10304a);
    }

    @Override // mb.n
    public final v p() {
        return new v(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int r42) {
        Object objRemove = this.f10304a.remove(r42);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (objRemove instanceof c) {
            c cVar = (c) objRemove;
            cVar.getClass();
            try {
                return cVar.E();
            } catch (UnsupportedEncodingException e10) {
                throw new RuntimeException("UTF-8 not supported?", e10);
            }
        }
        byte[] bArr = (byte[]) objRemove;
        byte[] bArr2 = i.f10297a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException("UTF-8 not supported?", e11);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int r32, Object obj) {
        Object obj2 = this.f10304a.set(r32, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof c) {
            c cVar = (c) obj2;
            cVar.getClass();
            try {
                return cVar.E();
            } catch (UnsupportedEncodingException e10) {
                throw new RuntimeException("UTF-8 not supported?", e10);
            }
        }
        byte[] bArr = (byte[]) obj2;
        byte[] bArr2 = i.f10297a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException("UTF-8 not supported?", e11);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10304a.size();
    }
}
