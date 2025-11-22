package p4;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class l0<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f12461k = new Object();

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public transient Object f12462a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public transient int[] f12463b;

    /* renamed from: c, reason: collision with root package name */
    @NullableDecl
    public transient Object[] f12464c;

    /* renamed from: d, reason: collision with root package name */
    @NullableDecl
    public transient Object[] f12465d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f12466e = Math.min(Math.max(12, 1), 1073741823);
    public transient int f;

    /* renamed from: g, reason: collision with root package name */
    @NullableDecl
    public transient i0 f12467g;

    /* renamed from: h, reason: collision with root package name */
    @NullableDecl
    public transient g0 f12468h;

    /* renamed from: j, reason: collision with root package name */
    @NullableDecl
    public transient k0 f12469j;

    @NullableDecl
    public final Map<K, V> a() {
        Object obj = this.f12462a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void b(int r82, int r92) {
        int size = size() - 1;
        if (r82 >= size) {
            this.f12464c[r82] = null;
            this.f12465d[r82] = null;
            this.f12463b[r82] = 0;
            return;
        }
        Object[] objArr = this.f12464c;
        Object obj = objArr[size];
        objArr[r82] = obj;
        Object[] objArr2 = this.f12465d;
        objArr2[r82] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        int[] r22 = this.f12463b;
        r22[r82] = r22[size];
        r22[size] = 0;
        int r12 = da.a(obj) & r92;
        int r23 = m0.d(r12, this.f12462a);
        int r02 = size + 1;
        if (r23 == r02) {
            m0.f(r12, r82 + 1, this.f12462a);
            return;
        }
        while (true) {
            int r24 = r23 - 1;
            int[] r13 = this.f12463b;
            int r32 = r13[r24];
            int r42 = r32 & r92;
            if (r42 == r02) {
                r13[r24] = ((r82 + 1) & r92) | ((~r92) & r32);
                return;
            }
            r23 = r42;
        }
    }

    public final boolean c() {
        return this.f12462a == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (c()) {
            return;
        }
        this.f12466e += 32;
        Map<K, V> mapA = a();
        if (mapA != null) {
            this.f12466e = Math.min(Math.max(size(), 3), 1073741823);
            mapA.clear();
            this.f12462a = null;
        } else {
            Arrays.fill(this.f12464c, 0, this.f, (Object) null);
            Arrays.fill(this.f12465d, 0, this.f, (Object) null);
            Object obj = this.f12462a;
            if (obj instanceof byte[]) {
                Arrays.fill((byte[]) obj, (byte) 0);
            } else if (obj instanceof short[]) {
                Arrays.fill((short[]) obj, (short) 0);
            } else {
                Arrays.fill((int[]) obj, 0);
            }
            Arrays.fill(this.f12463b, 0, this.f, 0);
        }
        this.f = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@NullableDecl Object obj) {
        Map<K, V> mapA = a();
        return mapA != null ? mapA.containsKey(obj) : d(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(@NullableDecl Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.containsValue(obj);
        }
        for (int r12 = 0; r12 < this.f; r12++) {
            if (m0.b(obj, this.f12465d[r12])) {
                return true;
            }
        }
        return false;
    }

    public final int d(@NullableDecl Object obj) {
        if (c()) {
            return -1;
        }
        int r02 = da.a(obj);
        int r22 = (1 << (this.f12466e & 31)) - 1;
        int r32 = m0.d(r02 & r22, this.f12462a);
        if (r32 != 0) {
            int r42 = ~r22;
            int r03 = r02 & r42;
            do {
                int r33 = r32 - 1;
                int r52 = this.f12463b[r33];
                if ((r52 & r42) == r03 && m0.b(obj, this.f12464c[r33])) {
                    return r33;
                }
                r32 = r52 & r22;
            } while (r32 != 0);
        }
        return -1;
    }

    public final int e(int r92, int r10, int r11, int r12) {
        Object objE = m0.e(r10);
        int r102 = r10 - 1;
        if (r12 != 0) {
            m0.f(r11 & r102, r12 + 1, objE);
        }
        Object obj = this.f12462a;
        int[] r122 = this.f12463b;
        for (int r13 = 0; r13 <= r92; r13++) {
            int r22 = m0.d(r13, obj);
            while (r22 != 0) {
                int r32 = r22 - 1;
                int r42 = r122[r32];
                int r52 = ((~r92) & r42) | r13;
                int r6 = r52 & r102;
                int r72 = m0.d(r6, objE);
                m0.f(r6, r22, objE);
                r122[r32] = ((~r102) & r52) | (r72 & r102);
                r22 = r42 & r92;
            }
        }
        this.f12462a = objE;
        this.f12466e = ((32 - Integer.numberOfLeadingZeros(r102)) & 31) | (this.f12466e & (-32));
        return r102;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        g0 g0Var = this.f12468h;
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(this);
        this.f12468h = g0Var2;
        return g0Var2;
    }

    @NullableDecl
    public final Object f(@NullableDecl Object obj) {
        boolean zC = c();
        Object obj2 = f12461k;
        if (zC) {
            return obj2;
        }
        int r02 = (1 << (this.f12466e & 31)) - 1;
        int r11 = m0.c(obj, null, r02, this.f12462a, this.f12463b, this.f12464c, null);
        if (r11 == -1) {
            return obj2;
        }
        Object obj3 = this.f12465d[r11];
        b(r11, r02);
        this.f--;
        this.f12466e += 32;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(@NullableDecl Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.get(obj);
        }
        int r22 = d(obj);
        if (r22 == -1) {
            return null;
        }
        return (V) this.f12465d[r22];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        i0 i0Var = this.f12467g;
        if (i0Var != null) {
            return i0Var;
        }
        i0 i0Var2 = new i0(this);
        this.f12467g = i0Var2;
        return i0Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public final V put(@NullableDecl K k10, @NullableDecl V v10) {
        int r42;
        int r43 = -1;
        if (c()) {
            if (!c()) {
                throw new IllegalStateException("Arrays already allocated");
            }
            int r32 = this.f12466e;
            int r52 = Math.max(r32 + 1, 2);
            int r6 = Integer.highestOneBit(r52);
            if (r52 > r6 && (r6 = r6 + r6) <= 0) {
                r6 = 1073741824;
            }
            int r53 = Math.max(4, r6);
            this.f12462a = m0.e(r53);
            this.f12466e = ((32 - Integer.numberOfLeadingZeros(r53 - 1)) & 31) | (this.f12466e & (-32));
            this.f12463b = new int[r32];
            this.f12464c = new Object[r32];
            this.f12465d = new Object[r32];
        }
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.put(k10, v10);
        }
        int[] r33 = this.f12463b;
        Object[] objArr = this.f12464c;
        Object[] objArr2 = this.f12465d;
        int r72 = this.f;
        int r82 = r72 + 1;
        int r92 = da.a(k10);
        int r10 = (1 << (this.f12466e & 31)) - 1;
        int r12 = r92 & r10;
        int r13 = m0.d(r12, this.f12462a);
        if (r13 != 0) {
            int r122 = ~r10;
            int r15 = r92 & r122;
            int r17 = 0;
            while (true) {
                int r132 = r13 + r43;
                int r18 = r33[r132];
                int r14 = r18 & r122;
                if (r14 == r15 && m0.b(k10, objArr[r132])) {
                    V v11 = (V) objArr2[r132];
                    objArr2[r132] = v10;
                    return v11;
                }
                int r44 = r18 & r10;
                Object[] objArr3 = objArr;
                int r54 = r17 + 1;
                if (r44 != 0) {
                    r13 = r44;
                    r17 = r54;
                    objArr = objArr3;
                    r43 = -1;
                } else {
                    if (r54 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(((1 << (this.f12466e & 31)) - 1) + 1, 1.0f);
                        int r16 = isEmpty() ? -1 : 0;
                        while (r16 >= 0) {
                            linkedHashMap.put(this.f12464c[r16], this.f12465d[r16]);
                            int r34 = r16 + 1;
                            r16 = r34 < this.f ? r34 : -1;
                        }
                        this.f12462a = linkedHashMap;
                        this.f12463b = null;
                        this.f12464c = null;
                        this.f12465d = null;
                        this.f12466e += 32;
                        return (V) linkedHashMap.put(k10, v10);
                    }
                    if (r82 <= r10) {
                        r33[r132] = (r82 & r10) | r14;
                    }
                }
            }
        } else if (r82 > r10) {
            r10 = e(r10, m0.a(r10), r92, r72);
        } else {
            m0.f(r12, r82, this.f12462a);
        }
        int length = this.f12463b.length;
        if (r82 > length && (r42 = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f12463b = Arrays.copyOf(this.f12463b, r42);
            this.f12464c = Arrays.copyOf(this.f12464c, r42);
            this.f12465d = Arrays.copyOf(this.f12465d, r42);
        }
        this.f12463b[r72] = (~r10) & r92;
        this.f12464c[r72] = k10;
        this.f12465d[r72] = v10;
        this.f = r82;
        this.f12466e += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public final V remove(@NullableDecl Object obj) {
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.remove(obj);
        }
        V v10 = (V) f(obj);
        if (v10 == f12461k) {
            return null;
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> mapA = a();
        return mapA != null ? mapA.size() : this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        k0 k0Var = this.f12469j;
        if (k0Var != null) {
            return k0Var;
        }
        k0 k0Var2 = new k0(this, 0);
        this.f12469j = k0Var2;
        return k0Var2;
    }
}
