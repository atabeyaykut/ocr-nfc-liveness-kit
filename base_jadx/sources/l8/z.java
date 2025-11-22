package l8;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes2.dex */
public final class z<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: j, reason: collision with root package name */
    public static final a f9550j = new a();

    /* renamed from: g, reason: collision with root package name */
    public z<K, V>.c f9556g;

    /* renamed from: h, reason: collision with root package name */
    public z<K, V>.d f9557h;

    /* renamed from: d, reason: collision with root package name */
    public int f9554d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f9555e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Comparator<? super K> f9551a = f9550j;

    /* renamed from: c, reason: collision with root package name */
    public final f<K, V> f9553c = new f<>();

    /* renamed from: b, reason: collision with root package name */
    public f<K, V>[] f9552b = new f[16];
    public int f = 12;

    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public static final class b<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public f<K, V> f9558a;

        /* renamed from: b, reason: collision with root package name */
        public int f9559b;

        /* renamed from: c, reason: collision with root package name */
        public int f9560c;

        /* renamed from: d, reason: collision with root package name */
        public int f9561d;

        public final void a(f<K, V> fVar) {
            fVar.f9570c = null;
            fVar.f9568a = null;
            fVar.f9569b = null;
            fVar.f9575j = 1;
            int r12 = this.f9559b;
            if (r12 > 0) {
                int r22 = this.f9561d;
                if ((r22 & 1) == 0) {
                    this.f9561d = r22 + 1;
                    this.f9559b = r12 - 1;
                    this.f9560c++;
                }
            }
            fVar.f9568a = this.f9558a;
            this.f9558a = fVar;
            int r6 = this.f9561d + 1;
            this.f9561d = r6;
            int r13 = this.f9559b;
            if (r13 > 0 && (r6 & 1) == 0) {
                this.f9561d = r6 + 1;
                this.f9559b = r13 - 1;
                this.f9560c++;
            }
            int r62 = 4;
            while (true) {
                int r23 = r62 - 1;
                if ((this.f9561d & r23) != r23) {
                    return;
                }
                int r14 = this.f9560c;
                if (r14 == 0) {
                    f<K, V> fVar2 = this.f9558a;
                    f<K, V> fVar3 = fVar2.f9568a;
                    f<K, V> fVar4 = fVar3.f9568a;
                    fVar3.f9568a = fVar4.f9568a;
                    this.f9558a = fVar3;
                    fVar3.f9569b = fVar4;
                    fVar3.f9570c = fVar2;
                    fVar3.f9575j = fVar2.f9575j + 1;
                    fVar4.f9568a = fVar3;
                    fVar2.f9568a = fVar3;
                } else {
                    if (r14 == 1) {
                        f<K, V> fVar5 = this.f9558a;
                        f<K, V> fVar6 = fVar5.f9568a;
                        this.f9558a = fVar6;
                        fVar6.f9570c = fVar5;
                        fVar6.f9575j = fVar5.f9575j + 1;
                        fVar5.f9568a = fVar6;
                    } else if (r14 == 2) {
                    }
                    this.f9560c = 0;
                }
                r62 *= 2;
            }
        }
    }

    public final class c extends AbstractSet<Map.Entry<K, V>> {

        public class a extends z<K, V>.e<Map.Entry<K, V>> {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public final Object next() {
                return a();
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            z.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && z.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            z zVar;
            f<K, V> fVarB;
            if (!(obj instanceof Map.Entry) || (fVarB = (zVar = z.this).b((Map.Entry) obj)) == null) {
                return false;
            }
            zVar.d(fVarB, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return z.this.f9554d;
        }
    }

    public final class d extends AbstractSet<K> {

        public class a extends z<K, V>.e<K> {
            public a(d dVar) {
                super();
            }

            @Override // java.util.Iterator
            public final K next() {
                return a().f;
            }
        }

        public d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            z.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return z.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            f<K, V> fVarA;
            z zVar = z.this;
            zVar.getClass();
            if (obj != null) {
                try {
                    fVarA = zVar.a(obj, false);
                } catch (ClassCastException unused) {
                }
            } else {
                fVarA = null;
            }
            if (fVarA != null) {
                zVar.d(fVarA, true);
            }
            return fVarA != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return z.this.f9554d;
        }
    }

    public abstract class e<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public f<K, V> f9564a;

        /* renamed from: b, reason: collision with root package name */
        public f<K, V> f9565b = null;

        /* renamed from: c, reason: collision with root package name */
        public int f9566c;

        public e() {
            this.f9564a = z.this.f9553c.f9571d;
            this.f9566c = z.this.f9555e;
        }

        public final f<K, V> a() {
            f<K, V> fVar = this.f9564a;
            z zVar = z.this;
            if (fVar == zVar.f9553c) {
                throw new NoSuchElementException();
            }
            if (zVar.f9555e != this.f9566c) {
                throw new ConcurrentModificationException();
            }
            this.f9564a = fVar.f9571d;
            this.f9565b = fVar;
            return fVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f9564a != z.this.f9553c;
        }

        @Override // java.util.Iterator
        public final void remove() {
            f<K, V> fVar = this.f9565b;
            if (fVar == null) {
                throw new IllegalStateException();
            }
            z zVar = z.this;
            zVar.d(fVar, true);
            this.f9565b = null;
            this.f9566c = zVar.f9555e;
        }
    }

    public static final class f<K, V> implements Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public f<K, V> f9568a;

        /* renamed from: b, reason: collision with root package name */
        public f<K, V> f9569b;

        /* renamed from: c, reason: collision with root package name */
        public f<K, V> f9570c;

        /* renamed from: d, reason: collision with root package name */
        public f<K, V> f9571d;

        /* renamed from: e, reason: collision with root package name */
        public f<K, V> f9572e;
        public final K f;

        /* renamed from: g, reason: collision with root package name */
        public final int f9573g;

        /* renamed from: h, reason: collision with root package name */
        public V f9574h;

        /* renamed from: j, reason: collision with root package name */
        public int f9575j;

        public f() {
            this.f = null;
            this.f9573g = -1;
            this.f9572e = this;
            this.f9571d = this;
        }

        public f(f<K, V> fVar, K k10, int r32, f<K, V> fVar2, f<K, V> fVar3) {
            this.f9568a = fVar;
            this.f = k10;
            this.f9573g = r32;
            this.f9575j = 1;
            this.f9571d = fVar2;
            this.f9572e = fVar3;
            fVar3.f9571d = this;
            fVar2.f9572e = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f9574h;
            Object value = entry.getValue();
            if (v10 == null) {
                if (value != null) {
                    return false;
                }
            } else if (!v10.equals(value)) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f9574h;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f;
            int r12 = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f9574h;
            return (v10 != null ? v10.hashCode() : 0) ^ r12;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            V v11 = this.f9574h;
            this.f9574h = v10;
            return v11;
        }

        public final String toString() {
            return this.f + "=" + this.f9574h;
        }
    }

    public final f<K, V> a(K k10, boolean z10) {
        f<K, V> fVar;
        int r13;
        f<K, V> fVar2;
        f<K, V> fVar3;
        f<K, V> fVar4;
        f<K, V> fVar5;
        f<K, V> fVar6;
        f<K, V>[] fVarArr = this.f9552b;
        int r12 = k10.hashCode();
        int r14 = r12 ^ ((r12 >>> 20) ^ (r12 >>> 12));
        int r42 = (r14 >>> 4) ^ ((r14 >>> 7) ^ r14);
        int length = r42 & (fVarArr.length - 1);
        f<K, V> fVar7 = fVarArr[length];
        a aVar = f9550j;
        f<K, V> fVar8 = null;
        Comparator<? super K> comparator = this.f9551a;
        if (fVar7 != null) {
            Comparable comparable = comparator == aVar ? (Comparable) k10 : null;
            while (true) {
                K k11 = fVar7.f;
                int r122 = comparable != null ? comparable.compareTo(k11) : comparator.compare(k10, k11);
                if (r122 == 0) {
                    return fVar7;
                }
                f<K, V> fVar9 = r122 < 0 ? fVar7.f9569b : fVar7.f9570c;
                if (fVar9 == null) {
                    r13 = r122;
                    fVar = fVar7;
                    break;
                }
                fVar7 = fVar9;
            }
        } else {
            fVar = fVar7;
            r13 = 0;
        }
        if (!z10) {
            return null;
        }
        f<K, V> fVar10 = this.f9553c;
        if (fVar != null) {
            f<K, V> fVar11 = new f<>(fVar, k10, r42, fVar10, fVar10.f9572e);
            if (r13 < 0) {
                fVar.f9569b = fVar11;
            } else {
                fVar.f9570c = fVar11;
            }
            c(fVar, true);
            fVar2 = fVar11;
        } else {
            if (comparator == aVar && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName().concat(" is not Comparable"));
            }
            fVar2 = new f<>(fVar, k10, r42, fVar10, fVar10.f9572e);
            fVarArr[length] = fVar2;
        }
        int r15 = this.f9554d;
        this.f9554d = r15 + 1;
        if (r15 > this.f) {
            f<K, V>[] fVarArr2 = this.f9552b;
            int length2 = fVarArr2.length;
            int r32 = length2 * 2;
            f<K, V>[] fVarArr3 = new f[r32];
            b bVar = new b();
            b bVar2 = new b();
            for (int r72 = 0; r72 < length2; r72++) {
                f<K, V> fVar12 = fVarArr2[r72];
                if (fVar12 != null) {
                    f<K, V> fVar13 = fVar8;
                    for (f<K, V> fVar14 = fVar12; fVar14 != null; fVar14 = fVar14.f9569b) {
                        fVar14.f9568a = fVar13;
                        fVar13 = fVar14;
                    }
                    int r123 = 0;
                    int r152 = 0;
                    while (true) {
                        if (fVar13 == null) {
                            fVar3 = fVar13;
                            fVar13 = fVar8;
                        } else {
                            fVar3 = fVar13.f9568a;
                            fVar13.f9568a = fVar8;
                            f<K, V> fVar15 = fVar13.f9570c;
                            while (fVar15 != null) {
                                fVar15.f9568a = fVar3;
                                f<K, V> fVar16 = fVar15;
                                fVar15 = fVar15.f9569b;
                                fVar3 = fVar16;
                            }
                        }
                        if (fVar13 == null) {
                            break;
                        }
                        if ((fVar13.f9573g & length2) == 0) {
                            r123++;
                        } else {
                            r152++;
                        }
                        fVar13 = fVar3;
                        fVar8 = null;
                    }
                    bVar.f9559b = ((Integer.highestOneBit(r123) * 2) - 1) - r123;
                    bVar.f9561d = 0;
                    bVar.f9560c = 0;
                    bVar.f9558a = null;
                    bVar2.f9559b = ((Integer.highestOneBit(r152) * 2) - 1) - r152;
                    bVar2.f9561d = 0;
                    bVar2.f9560c = 0;
                    bVar2.f9558a = null;
                    f<K, V> fVar17 = null;
                    while (fVar12 != null) {
                        fVar12.f9568a = fVar17;
                        f<K, V> fVar18 = fVar12;
                        fVar12 = fVar12.f9569b;
                        fVar17 = fVar18;
                    }
                    while (true) {
                        if (fVar17 != null) {
                            f<K, V> fVar19 = fVar17.f9568a;
                            fVar8 = null;
                            fVar17.f9568a = null;
                            f<K, V> fVar20 = fVar17.f9570c;
                            while (true) {
                                f<K, V> fVar21 = fVar20;
                                fVar4 = fVar19;
                                fVar19 = fVar21;
                                if (fVar19 == null) {
                                    break;
                                }
                                fVar19.f9568a = fVar4;
                                fVar20 = fVar19.f9569b;
                            }
                        } else {
                            fVar4 = fVar17;
                            fVar17 = null;
                            fVar8 = null;
                        }
                        if (fVar17 == null) {
                            break;
                        }
                        if ((fVar17.f9573g & length2) == 0) {
                            bVar.a(fVar17);
                        } else {
                            bVar2.a(fVar17);
                        }
                        fVar17 = fVar4;
                    }
                    if (r123 > 0) {
                        fVar5 = bVar.f9558a;
                        if (fVar5.f9568a != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        fVar5 = fVar8;
                    }
                    fVarArr3[r72] = fVar5;
                    int r82 = r72 + length2;
                    if (r152 > 0) {
                        fVar6 = bVar2.f9558a;
                        if (fVar6.f9568a != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        fVar6 = fVar8;
                    }
                    fVarArr3[r82] = fVar6;
                }
            }
            this.f9552b = fVarArr3;
            this.f = (r32 / 4) + (r32 / 2);
        }
        this.f9555e++;
        return fVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final f<K, V> b(Map.Entry<?, ?> entry) {
        f<K, V> fVarA;
        Object key = entry.getKey();
        boolean z10 = false;
        if (key != null) {
            try {
                fVarA = a(key, false);
            } catch (ClassCastException unused) {
            }
        } else {
            fVarA = null;
        }
        if (fVarA != null) {
            V v10 = fVarA.f9574h;
            Object value = entry.getValue();
            if (v10 == value || (v10 != null && v10.equals(value))) {
                z10 = true;
            }
        }
        if (z10) {
            return fVarA;
        }
        return null;
    }

    public final void c(f<K, V> fVar, boolean z10) {
        while (fVar != null) {
            f<K, V> fVar2 = fVar.f9569b;
            f<K, V> fVar3 = fVar.f9570c;
            int r32 = fVar2 != null ? fVar2.f9575j : 0;
            int r42 = fVar3 != null ? fVar3.f9575j : 0;
            int r52 = r32 - r42;
            if (r52 == -2) {
                f<K, V> fVar4 = fVar3.f9569b;
                f<K, V> fVar5 = fVar3.f9570c;
                int r22 = (fVar4 != null ? fVar4.f9575j : 0) - (fVar5 != null ? fVar5.f9575j : 0);
                if (r22 != -1 && (r22 != 0 || z10)) {
                    g(fVar3);
                }
                f(fVar);
                if (z10) {
                    return;
                }
            } else if (r52 == 2) {
                f<K, V> fVar6 = fVar2.f9569b;
                f<K, V> fVar7 = fVar2.f9570c;
                int r23 = (fVar6 != null ? fVar6.f9575j : 0) - (fVar7 != null ? fVar7.f9575j : 0);
                if (r23 != 1 && (r23 != 0 || z10)) {
                    f(fVar2);
                }
                g(fVar);
                if (z10) {
                    return;
                }
            } else if (r52 == 0) {
                fVar.f9575j = r32 + 1;
                if (z10) {
                    return;
                }
            } else {
                fVar.f9575j = Math.max(r32, r42) + 1;
                if (!z10) {
                    return;
                }
            }
            fVar = fVar.f9568a;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.f9552b, (Object) null);
        this.f9554d = 0;
        this.f9555e++;
        f<K, V> fVar = this.f9553c;
        f<K, V> fVar2 = fVar.f9571d;
        while (fVar2 != fVar) {
            f<K, V> fVar3 = fVar2.f9571d;
            fVar2.f9572e = null;
            fVar2.f9571d = null;
            fVar2 = fVar3;
        }
        fVar.f9572e = fVar;
        fVar.f9571d = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        f<K, V> fVarA;
        if (obj != 0) {
            try {
                fVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            fVarA = null;
        }
        return fVarA != null;
    }

    public final void d(f<K, V> fVar, boolean z10) {
        f<K, V> fVar2;
        f<K, V> fVar3;
        int r22;
        if (z10) {
            f<K, V> fVar4 = fVar.f9572e;
            fVar4.f9571d = fVar.f9571d;
            fVar.f9571d.f9572e = fVar4;
            fVar.f9572e = null;
            fVar.f9571d = null;
        }
        f<K, V> fVar5 = fVar.f9569b;
        f<K, V> fVar6 = fVar.f9570c;
        f<K, V> fVar7 = fVar.f9568a;
        int r32 = 0;
        if (fVar5 == null || fVar6 == null) {
            if (fVar5 != null) {
                e(fVar, fVar5);
                fVar.f9569b = null;
            } else if (fVar6 != null) {
                e(fVar, fVar6);
                fVar.f9570c = null;
            } else {
                e(fVar, null);
            }
            c(fVar7, false);
            this.f9554d--;
            this.f9555e++;
            return;
        }
        if (fVar5.f9575j > fVar6.f9575j) {
            do {
                fVar3 = fVar5;
                fVar5 = fVar5.f9570c;
            } while (fVar5 != null);
        } else {
            do {
                fVar2 = fVar6;
                fVar6 = fVar6.f9569b;
            } while (fVar6 != null);
            fVar3 = fVar2;
        }
        d(fVar3, false);
        f<K, V> fVar8 = fVar.f9569b;
        if (fVar8 != null) {
            r22 = fVar8.f9575j;
            fVar3.f9569b = fVar8;
            fVar8.f9568a = fVar3;
            fVar.f9569b = null;
        } else {
            r22 = 0;
        }
        f<K, V> fVar9 = fVar.f9570c;
        if (fVar9 != null) {
            r32 = fVar9.f9575j;
            fVar3.f9570c = fVar9;
            fVar9.f9568a = fVar3;
            fVar.f9570c = null;
        }
        fVar3.f9575j = Math.max(r22, r32) + 1;
        e(fVar, fVar3);
    }

    public final void e(f<K, V> fVar, f<K, V> fVar2) {
        f<K, V> fVar3 = fVar.f9568a;
        fVar.f9568a = null;
        if (fVar2 != null) {
            fVar2.f9568a = fVar3;
        }
        if (fVar3 == null) {
            this.f9552b[fVar.f9573g & (r0.length - 1)] = fVar2;
        } else if (fVar3.f9569b == fVar) {
            fVar3.f9569b = fVar2;
        } else {
            fVar3.f9570c = fVar2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        z<K, V>.c cVar = this.f9556g;
        if (cVar != null) {
            return cVar;
        }
        z<K, V>.c cVar2 = new c();
        this.f9556g = cVar2;
        return cVar2;
    }

    public final void f(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.f9569b;
        f<K, V> fVar3 = fVar.f9570c;
        f<K, V> fVar4 = fVar3.f9569b;
        f<K, V> fVar5 = fVar3.f9570c;
        fVar.f9570c = fVar4;
        if (fVar4 != null) {
            fVar4.f9568a = fVar;
        }
        e(fVar, fVar3);
        fVar3.f9569b = fVar;
        fVar.f9568a = fVar3;
        int r02 = Math.max(fVar2 != null ? fVar2.f9575j : 0, fVar4 != null ? fVar4.f9575j : 0) + 1;
        fVar.f9575j = r02;
        fVar3.f9575j = Math.max(r02, fVar5 != null ? fVar5.f9575j : 0) + 1;
    }

    public final void g(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.f9569b;
        f<K, V> fVar3 = fVar.f9570c;
        f<K, V> fVar4 = fVar2.f9569b;
        f<K, V> fVar5 = fVar2.f9570c;
        fVar.f9569b = fVar5;
        if (fVar5 != null) {
            fVar5.f9568a = fVar;
        }
        e(fVar, fVar2);
        fVar2.f9570c = fVar;
        fVar.f9568a = fVar2;
        int r12 = Math.max(fVar3 != null ? fVar3.f9575j : 0, fVar5 != null ? fVar5.f9575j : 0) + 1;
        fVar.f9575j = r12;
        fVar2.f9575j = Math.max(r12, fVar4 != null ? fVar4.f9575j : 0) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        f<K, V> fVarA;
        if (obj != 0) {
            try {
                fVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            fVarA = null;
        }
        if (fVarA != null) {
            return fVarA.f9574h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        z<K, V>.d dVar = this.f9557h;
        if (dVar != null) {
            return dVar;
        }
        z<K, V>.d dVar2 = new d();
        this.f9557h = dVar2;
        return dVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        f<K, V> fVarA = a(k10, true);
        V v11 = fVarA.f9574h;
        fVarA.f9574h = v10;
        return v11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        f<K, V> fVarA;
        if (obj != 0) {
            try {
                fVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            fVarA = null;
        }
        if (fVarA != null) {
            d(fVarA, true);
        }
        if (fVarA != null) {
            return fVarA.f9574h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f9554d;
    }
}
