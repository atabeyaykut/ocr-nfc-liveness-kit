package n9;

import c5.w;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class b<K, V> implements Map<K, V>, Serializable, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public K[] f10613a;

    /* renamed from: b, reason: collision with root package name */
    public V[] f10614b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f10615c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f10616d;

    /* renamed from: e, reason: collision with root package name */
    public int f10617e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f10618g;

    /* renamed from: h, reason: collision with root package name */
    public int f10619h;

    /* renamed from: j, reason: collision with root package name */
    public n9.d<K> f10620j;

    /* renamed from: k, reason: collision with root package name */
    public n9.e<V> f10621k;

    /* renamed from: l, reason: collision with root package name */
    public n9.c<K, V> f10622l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f10623m;

    public static final class a {
    }

    /* renamed from: n9.b$b, reason: collision with other inner class name */
    public static final class C0200b<K, V> extends d<K, V> implements Iterator<Map.Entry<K, V>>, y9.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0200b(b<K, V> map) {
            super(map);
            h.f(map, "map");
        }

        @Override // java.util.Iterator
        public final Object next() {
            int r02 = this.f10627b;
            b<K, V> bVar = this.f10626a;
            if (r02 >= bVar.f) {
                throw new NoSuchElementException();
            }
            this.f10627b = r02 + 1;
            this.f10628c = r02;
            c cVar = new c(bVar, r02);
            a();
            return cVar;
        }
    }

    public static final class c<K, V> implements Map.Entry<K, V>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final b<K, V> f10624a;

        /* renamed from: b, reason: collision with root package name */
        public final int f10625b;

        public c(b<K, V> map, int r32) {
            h.f(map, "map");
            this.f10624a = map;
            this.f10625b = r32;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (h.a(entry.getKey(), getKey()) && h.a(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f10624a.f10613a[this.f10625b];
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            V[] vArr = this.f10624a.f10614b;
            h.c(vArr);
            return vArr[this.f10625b];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K key = getKey();
            int r02 = key != null ? key.hashCode() : 0;
            V value = getValue();
            return r02 ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            b<K, V> bVar = this.f10624a;
            bVar.b();
            V[] vArr = bVar.f10614b;
            if (vArr == null) {
                vArr = (V[]) w.b(bVar.f10613a.length);
                bVar.f10614b = vArr;
            }
            int r02 = this.f10625b;
            V v11 = vArr[r02];
            vArr[r02] = v10;
            return v11;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getKey());
            sb2.append('=');
            sb2.append(getValue());
            return sb2.toString();
        }
    }

    public static class d<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final b<K, V> f10626a;

        /* renamed from: b, reason: collision with root package name */
        public int f10627b;

        /* renamed from: c, reason: collision with root package name */
        public int f10628c;

        public d(b<K, V> map) {
            h.f(map, "map");
            this.f10626a = map;
            this.f10628c = -1;
            a();
        }

        public final void a() {
            while (true) {
                int r02 = this.f10627b;
                b<K, V> bVar = this.f10626a;
                if (r02 >= bVar.f || bVar.f10615c[r02] >= 0) {
                    return;
                } else {
                    this.f10627b = r02 + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.f10627b < this.f10626a.f;
        }

        public final void remove() {
            if (!(this.f10628c != -1)) {
                throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
            }
            b<K, V> bVar = this.f10626a;
            bVar.b();
            bVar.j(this.f10628c);
            this.f10628c = -1;
        }
    }

    public static final class e<K, V> extends d<K, V> implements Iterator<K>, y9.a {
        public e(b<K, V> bVar) {
            super(bVar);
        }

        @Override // java.util.Iterator
        public final K next() {
            int r02 = this.f10627b;
            b<K, V> bVar = this.f10626a;
            if (r02 >= bVar.f) {
                throw new NoSuchElementException();
            }
            this.f10627b = r02 + 1;
            this.f10628c = r02;
            K k10 = bVar.f10613a[r02];
            a();
            return k10;
        }
    }

    public static final class f<K, V> extends d<K, V> implements Iterator<V>, y9.a {
        public f(b<K, V> bVar) {
            super(bVar);
        }

        @Override // java.util.Iterator
        public final V next() {
            int r02 = this.f10627b;
            b<K, V> bVar = this.f10626a;
            if (r02 >= bVar.f) {
                throw new NoSuchElementException();
            }
            this.f10627b = r02 + 1;
            this.f10628c = r02;
            V[] vArr = bVar.f10614b;
            h.c(vArr);
            V v10 = vArr[this.f10628c];
            a();
            return v10;
        }
    }

    static {
        new a();
    }

    public b() {
        K[] kArr = (K[]) w.b(8);
        int r22 = Integer.highestOneBit(24);
        this.f10613a = kArr;
        this.f10614b = null;
        this.f10615c = new int[8];
        this.f10616d = new int[r22];
        this.f10617e = 2;
        this.f = 0;
        this.f10618g = Integer.numberOfLeadingZeros(r22) + 1;
    }

    public final int a(K k10) {
        b();
        while (true) {
            int length = g(k10);
            int r12 = this.f10617e * 2;
            int length2 = this.f10616d.length / 2;
            if (r12 > length2) {
                r12 = length2;
            }
            int r22 = 0;
            while (true) {
                int[] r32 = this.f10616d;
                int r42 = r32[length];
                if (r42 <= 0) {
                    int r13 = this.f;
                    K[] kArr = this.f10613a;
                    if (r13 < kArr.length) {
                        int r6 = r13 + 1;
                        this.f = r6;
                        kArr[r13] = k10;
                        this.f10615c[r13] = length;
                        r32[length] = r6;
                        this.f10619h++;
                        if (r22 > this.f10617e) {
                            this.f10617e = r22;
                        }
                        return r13;
                    }
                    e(1);
                } else {
                    if (h.a(this.f10613a[r42 - 1], k10)) {
                        return -r42;
                    }
                    r22++;
                    if (r22 > r12) {
                        i(this.f10616d.length * 2);
                        break;
                    }
                    length = length == 0 ? this.f10616d.length - 1 : length - 1;
                }
            }
        }
    }

    public final void b() {
        if (this.f10623m) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean c(Collection<?> m10) {
        h.f(m10, "m");
        for (Object obj : m10) {
            if (obj != null) {
                try {
                    if (!d((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final void clear() {
        b();
        ca.d dVar = new ca.d(0, this.f - 1);
        ca.c cVar = new ca.c(0, dVar.f2247b, dVar.f2248c);
        while (cVar.f2251c) {
            int r02 = cVar.nextInt();
            int[] r42 = this.f10615c;
            int r52 = r42[r02];
            if (r52 >= 0) {
                this.f10616d[r52] = 0;
                r42[r02] = -1;
            }
        }
        w.C(this.f10613a, 0, this.f);
        V[] vArr = this.f10614b;
        if (vArr != null) {
            w.C(vArr, 0, this.f);
        }
        this.f10619h = 0;
        this.f = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return f(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        int r12;
        int r02 = this.f;
        while (true) {
            r12 = -1;
            r02--;
            if (r02 < 0) {
                break;
            }
            if (this.f10615c[r02] >= 0) {
                V[] vArr = this.f10614b;
                h.c(vArr);
                if (h.a(vArr[r02], obj)) {
                    r12 = r02;
                    break;
                }
            }
        }
        return r12 >= 0;
    }

    public final boolean d(Map.Entry<? extends K, ? extends V> entry) {
        h.f(entry, "entry");
        int r02 = f(entry.getKey());
        if (r02 < 0) {
            return false;
        }
        V[] vArr = this.f10614b;
        h.c(vArr);
        return h.a(vArr[r02], entry.getValue());
    }

    public final void e(int r42) {
        int length;
        V[] vArr;
        int r02 = this.f;
        int r43 = r42 + r02;
        if (r43 < 0) {
            throw new OutOfMemoryError();
        }
        K[] kArr = this.f10613a;
        if (r43 > kArr.length) {
            int length2 = (kArr.length * 3) / 2;
            if (r43 <= length2) {
                r43 = length2;
            }
            K[] kArr2 = (K[]) Arrays.copyOf(kArr, r43);
            h.e(kArr2, "copyOf(this, newSize)");
            this.f10613a = kArr2;
            V[] vArr2 = this.f10614b;
            if (vArr2 != null) {
                vArr = (V[]) Arrays.copyOf(vArr2, r43);
                h.e(vArr, "copyOf(this, newSize)");
            } else {
                vArr = null;
            }
            this.f10614b = vArr;
            int[] r03 = Arrays.copyOf(this.f10615c, r43);
            h.e(r03, "copyOf(this, newSize)");
            this.f10615c = r03;
            if (r43 < 1) {
                r43 = 1;
            }
            length = Integer.highestOneBit(r43 * 3);
            if (length <= this.f10616d.length) {
                return;
            }
        } else if ((r02 + r43) - this.f10619h <= kArr.length) {
            return;
        } else {
            length = this.f10616d.length;
        }
        i(length);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        n9.c<K, V> cVar = this.f10622l;
        if (cVar != null) {
            return cVar;
        }
        n9.c<K, V> cVar2 = new n9.c<>(this);
        this.f10622l = cVar2;
        return cVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f10619h == map.size() && c(map.entrySet())) {
                return true;
            }
        }
        return false;
    }

    public final int f(K k10) {
        int length = g(k10);
        int r12 = this.f10617e;
        while (true) {
            int r22 = this.f10616d[length];
            if (r22 == 0) {
                return -1;
            }
            if (r22 > 0) {
                int r23 = r22 - 1;
                if (h.a(this.f10613a[r23], k10)) {
                    return r23;
                }
            }
            r12--;
            if (r12 < 0) {
                return -1;
            }
            length = length == 0 ? this.f10616d.length - 1 : length - 1;
        }
    }

    public final int g(K k10) {
        return ((k10 != null ? k10.hashCode() : 0) * (-1640531527)) >>> this.f10618g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V get(Object obj) {
        int r22 = f(obj);
        if (r22 < 0) {
            return null;
        }
        V[] vArr = this.f10614b;
        h.c(vArr);
        return vArr[r22];
    }

    @Override // java.util.Map
    public final int hashCode() {
        C0200b c0200b = new C0200b(this);
        int r22 = 0;
        while (c0200b.hasNext()) {
            int r32 = c0200b.f10627b;
            b<K, V> bVar = c0200b.f10626a;
            if (r32 >= bVar.f) {
                throw new NoSuchElementException();
            }
            c0200b.f10627b = r32 + 1;
            c0200b.f10628c = r32;
            K k10 = bVar.f10613a[r32];
            int r33 = k10 != null ? k10.hashCode() : 0;
            V[] vArr = bVar.f10614b;
            h.c(vArr);
            V v10 = vArr[c0200b.f10628c];
            int r42 = v10 != null ? v10.hashCode() : 0;
            c0200b.a();
            r22 += r33 ^ r42;
        }
        return r22;
    }

    public final void i(int r82) {
        boolean z10;
        int r42;
        if (this.f > this.f10619h) {
            V[] vArr = this.f10614b;
            int r12 = 0;
            int r32 = 0;
            while (true) {
                r42 = this.f;
                if (r12 >= r42) {
                    break;
                }
                if (this.f10615c[r12] >= 0) {
                    K[] kArr = this.f10613a;
                    kArr[r32] = kArr[r12];
                    if (vArr != null) {
                        vArr[r32] = vArr[r12];
                    }
                    r32++;
                }
                r12++;
            }
            w.C(this.f10613a, r32, r42);
            if (vArr != null) {
                w.C(vArr, r32, this.f);
            }
            this.f = r32;
        }
        int[] r02 = this.f10616d;
        if (r82 != r02.length) {
            this.f10616d = new int[r82];
            this.f10618g = Integer.numberOfLeadingZeros(r82) + 1;
        } else {
            int length = r02.length;
            h.f(r02, "<this>");
            Arrays.fill(r02, 0, length, 0);
        }
        int r83 = 0;
        while (r83 < this.f) {
            int r03 = r83 + 1;
            int length2 = g(this.f10613a[r83]);
            int r43 = this.f10617e;
            while (true) {
                int[] r52 = this.f10616d;
                if (r52[length2] == 0) {
                    r52[length2] = r03;
                    this.f10615c[r83] = length2;
                    z10 = true;
                    break;
                } else {
                    r43--;
                    if (r43 < 0) {
                        z10 = false;
                        break;
                    }
                    length2 = length2 == 0 ? r52.length - 1 : length2 - 1;
                }
            }
            if (!z10) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            r83 = r03;
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f10619h == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[LOOP:0: B:6:0x001e->B:30:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(int r12) {
        /*
            r11 = this;
            K[] r0 = r11.f10613a
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.h.f(r0, r1)
            r1 = 0
            r0[r12] = r1
            int[] r0 = r11.f10615c
            r0 = r0[r12]
            int r1 = r11.f10617e
            int r1 = r1 * 2
            int[] r2 = r11.f10616d
            int r2 = r2.length
            int r2 = r2 / 2
            if (r1 <= r2) goto L1a
            r1 = r2
        L1a:
            r2 = 0
            r3 = r1
            r4 = 0
            r1 = r0
        L1e:
            int r5 = r0 + (-1)
            r6 = -1
            if (r0 != 0) goto L28
            int[] r0 = r11.f10616d
            int r0 = r0.length
            int r0 = r0 + r6
            goto L29
        L28:
            r0 = r5
        L29:
            int r4 = r4 + 1
            int r5 = r11.f10617e
            if (r4 <= r5) goto L34
            int[] r0 = r11.f10616d
            r0[r1] = r2
            goto L63
        L34:
            int[] r5 = r11.f10616d
            r7 = r5[r0]
            if (r7 != 0) goto L3d
            r5[r1] = r2
            goto L63
        L3d:
            if (r7 >= 0) goto L42
            r5[r1] = r6
            goto L5a
        L42:
            K[] r5 = r11.f10613a
            int r8 = r7 + (-1)
            r5 = r5[r8]
            int r5 = r11.g(r5)
            int r5 = r5 - r0
            int[] r9 = r11.f10616d
            int r10 = r9.length
            int r10 = r10 + r6
            r5 = r5 & r10
            if (r5 < r4) goto L5c
            r9[r1] = r7
            int[] r4 = r11.f10615c
            r4[r8] = r1
        L5a:
            r1 = r0
            r4 = 0
        L5c:
            int r3 = r3 + r6
            if (r3 >= 0) goto L1e
            int[] r0 = r11.f10616d
            r0[r1] = r6
        L63:
            int[] r0 = r11.f10615c
            r0[r12] = r6
            int r12 = r11.f10619h
            int r12 = r12 + r6
            r11.f10619h = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n9.b.j(int):void");
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        n9.d<K> dVar = this.f10620j;
        if (dVar != null) {
            return dVar;
        }
        n9.d<K> dVar2 = new n9.d<>(this);
        this.f10620j = dVar2;
        return dVar2;
    }

    @Override // java.util.Map
    public final V put(K k10, V v10) {
        b();
        int r32 = a(k10);
        V[] vArr = this.f10614b;
        if (vArr == null) {
            vArr = (V[]) w.b(this.f10613a.length);
            this.f10614b = vArr;
        }
        if (r32 >= 0) {
            vArr[r32] = v10;
            return null;
        }
        int r33 = (-r32) - 1;
        V v11 = vArr[r33];
        vArr[r33] = v10;
        return v11;
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> from) {
        h.f(from, "from");
        b();
        Set<Map.Entry<? extends K, ? extends V>> setEntrySet = from.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        e(setEntrySet.size());
        for (Map.Entry<? extends K, ? extends V> entry : setEntrySet) {
            int r12 = a(entry.getKey());
            V[] vArr = this.f10614b;
            if (vArr == null) {
                vArr = (V[]) w.b(this.f10613a.length);
                this.f10614b = vArr;
            }
            if (r12 >= 0) {
                vArr[r12] = entry.getValue();
            } else {
                int r13 = (-r12) - 1;
                if (!h.a(entry.getValue(), vArr[r13])) {
                    vArr[r13] = entry.getValue();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V remove(Object obj) {
        b();
        int r42 = f(obj);
        if (r42 < 0) {
            r42 = -1;
        } else {
            j(r42);
        }
        if (r42 < 0) {
            return null;
        }
        V[] vArr = this.f10614b;
        h.c(vArr);
        V v10 = vArr[r42];
        vArr[r42] = null;
        return v10;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f10619h;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder((this.f10619h * 3) + 2);
        sb2.append("{");
        C0200b c0200b = new C0200b(this);
        int r22 = 0;
        while (c0200b.hasNext()) {
            if (r22 > 0) {
                sb2.append(", ");
            }
            int r32 = c0200b.f10627b;
            b<K, V> bVar = c0200b.f10626a;
            if (r32 >= bVar.f) {
                throw new NoSuchElementException();
            }
            c0200b.f10627b = r32 + 1;
            c0200b.f10628c = r32;
            K k10 = bVar.f10613a[r32];
            if (h.a(k10, bVar)) {
                sb2.append("(this Map)");
            } else {
                sb2.append(k10);
            }
            sb2.append('=');
            V[] vArr = bVar.f10614b;
            h.c(vArr);
            V v10 = vArr[c0200b.f10628c];
            if (h.a(v10, bVar)) {
                sb2.append("(this Map)");
            } else {
                sb2.append(v10);
            }
            c0200b.a();
            r22++;
        }
        sb2.append("}");
        String string = sb2.toString();
        h.e(string, "sb.toString()");
        return string;
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        n9.e<V> eVar = this.f10621k;
        if (eVar != null) {
            return eVar;
        }
        n9.e<V> eVar2 = new n9.e<>(this);
        this.f10621k = eVar2;
        return eVar2;
    }
}
