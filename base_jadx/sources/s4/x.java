package s4;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class x<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f15212k = new Object();

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public transient Object f15213a;

    /* renamed from: b, reason: collision with root package name */
    @NullableDecl
    public transient int[] f15214b;

    /* renamed from: c, reason: collision with root package name */
    @NullableDecl
    public transient Object[] f15215c;

    /* renamed from: d, reason: collision with root package name */
    @NullableDecl
    public transient Object[] f15216d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f15217e = Math.min(Math.max(12, 1), 1073741823);
    public transient int f;

    /* renamed from: g, reason: collision with root package name */
    @NullableDecl
    public transient v f15218g;

    /* renamed from: h, reason: collision with root package name */
    @NullableDecl
    public transient u f15219h;

    /* renamed from: j, reason: collision with root package name */
    @NullableDecl
    public transient p4.k0 f15220j;

    @NullableDecl
    public final Map<K, V> a() {
        Object obj = this.f15213a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void b(int r82, int r92) {
        int size = size() - 1;
        if (r82 >= size) {
            this.f15215c[r82] = null;
            this.f15216d[r82] = null;
            this.f15214b[r82] = 0;
            return;
        }
        Object[] objArr = this.f15215c;
        Object obj = objArr[size];
        objArr[r82] = obj;
        Object[] objArr2 = this.f15216d;
        objArr2[r82] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        int[] r22 = this.f15214b;
        r22[r82] = r22[size];
        r22[size] = 0;
        int r12 = y.a(obj) & r92;
        int r23 = d9.f(r12, this.f15213a);
        int r02 = size + 1;
        if (r23 == r02) {
            d9.h(r12, r82 + 1, this.f15213a);
            return;
        }
        while (true) {
            int r24 = r23 - 1;
            int[] r13 = this.f15214b;
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
        return this.f15213a == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (c()) {
            return;
        }
        this.f15217e += 32;
        Map<K, V> mapA = a();
        if (mapA != null) {
            this.f15217e = Math.min(Math.max(size(), 3), 1073741823);
            mapA.clear();
            this.f15213a = null;
        } else {
            Arrays.fill(this.f15215c, 0, this.f, (Object) null);
            Arrays.fill(this.f15216d, 0, this.f, (Object) null);
            Object obj = this.f15213a;
            if (obj instanceof byte[]) {
                Arrays.fill((byte[]) obj, (byte) 0);
            } else if (obj instanceof short[]) {
                Arrays.fill((short[]) obj, (short) 0);
            } else {
                Arrays.fill((int[]) obj, 0);
            }
            Arrays.fill(this.f15214b, 0, this.f, 0);
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
            if (x5.a.A(obj, this.f15216d[r12])) {
                return true;
            }
        }
        return false;
    }

    public final int d(@NullableDecl Object obj) {
        if (c()) {
            return -1;
        }
        int r02 = y.a(obj);
        int r22 = (1 << (this.f15217e & 31)) - 1;
        int r32 = d9.f(r02 & r22, this.f15213a);
        if (r32 != 0) {
            int r42 = ~r22;
            int r03 = r02 & r42;
            do {
                int r33 = r32 - 1;
                int r52 = this.f15214b[r33];
                if ((r52 & r42) == r03 && x5.a.A(obj, this.f15215c[r33])) {
                    return r33;
                }
                r32 = r52 & r22;
            } while (r32 != 0);
        }
        return -1;
    }

    public final int e(int r92, int r10, int r11, int r12) {
        Object objG = d9.g(r10);
        int r102 = r10 - 1;
        if (r12 != 0) {
            d9.h(r11 & r102, r12 + 1, objG);
        }
        Object obj = this.f15213a;
        int[] r122 = this.f15214b;
        for (int r13 = 0; r13 <= r92; r13++) {
            int r22 = d9.f(r13, obj);
            while (r22 != 0) {
                int r32 = r22 - 1;
                int r42 = r122[r32];
                int r52 = ((~r92) & r42) | r13;
                int r6 = r52 & r102;
                int r72 = d9.f(r6, objG);
                d9.h(r6, r22, objG);
                r122[r32] = ((~r102) & r52) | (r72 & r102);
                r22 = r42 & r92;
            }
        }
        this.f15213a = objG;
        this.f15217e = ((32 - Integer.numberOfLeadingZeros(r102)) & 31) | (this.f15217e & (-32));
        return r102;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        u uVar = this.f15219h;
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u(this);
        this.f15219h = uVar2;
        return uVar2;
    }

    @NullableDecl
    public final Object f(@NullableDecl Object obj) {
        boolean zC = c();
        Object obj2 = f15212k;
        if (zC) {
            return obj2;
        }
        int r02 = (1 << (this.f15217e & 31)) - 1;
        int r11 = d9.d(obj, null, r02, this.f15213a, this.f15214b, this.f15215c, null);
        if (r11 == -1) {
            return obj2;
        }
        Object obj3 = this.f15216d[r11];
        b(r11, r02);
        this.f--;
        this.f15217e += 32;
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
        return (V) this.f15216d[r22];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        v vVar = this.f15218g;
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(this);
        this.f15218g = vVar2;
        return vVar2;
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
            int r32 = this.f15217e;
            int r52 = Math.max(r32 + 1, 2);
            int r6 = Integer.highestOneBit(r52);
            if (r52 > r6 && (r6 = r6 + r6) <= 0) {
                r6 = 1073741824;
            }
            int r53 = Math.max(4, r6);
            this.f15213a = d9.g(r53);
            this.f15217e = ((32 - Integer.numberOfLeadingZeros(r53 - 1)) & 31) | (this.f15217e & (-32));
            this.f15214b = new int[r32];
            this.f15215c = new Object[r32];
            this.f15216d = new Object[r32];
        }
        Map<K, V> mapA = a();
        if (mapA != null) {
            return mapA.put(k10, v10);
        }
        int[] r33 = this.f15214b;
        Object[] objArr = this.f15215c;
        Object[] objArr2 = this.f15216d;
        int r72 = this.f;
        int r82 = r72 + 1;
        int r92 = y.a(k10);
        int r10 = (1 << (this.f15217e & 31)) - 1;
        int r12 = r92 & r10;
        int r13 = d9.f(r12, this.f15213a);
        if (r13 != 0) {
            int r122 = ~r10;
            int r15 = r92 & r122;
            int r17 = 0;
            while (true) {
                int r132 = r13 + r43;
                int r18 = r33[r132];
                int r14 = r18 & r122;
                if (r14 == r15 && x5.a.A(k10, objArr[r132])) {
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
                        LinkedHashMap linkedHashMap = new LinkedHashMap(((1 << (this.f15217e & 31)) - 1) + 1, 1.0f);
                        int r16 = isEmpty() ? -1 : 0;
                        while (r16 >= 0) {
                            linkedHashMap.put(this.f15215c[r16], this.f15216d[r16]);
                            int r34 = r16 + 1;
                            r16 = r34 < this.f ? r34 : -1;
                        }
                        this.f15213a = linkedHashMap;
                        this.f15214b = null;
                        this.f15215c = null;
                        this.f15216d = null;
                        this.f15217e += 32;
                        return (V) linkedHashMap.put(k10, v10);
                    }
                    if (r82 <= r10) {
                        r33[r132] = (r82 & r10) | r14;
                    }
                }
            }
        } else if (r82 > r10) {
            r10 = e(r10, d9.b(r10), r92, r72);
        } else {
            d9.h(r12, r82, this.f15213a);
        }
        int length = this.f15214b.length;
        if (r82 > length && (r42 = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f15214b = Arrays.copyOf(this.f15214b, r42);
            this.f15215c = Arrays.copyOf(this.f15215c, r42);
            this.f15216d = Arrays.copyOf(this.f15216d, r42);
        }
        this.f15214b[r72] = (~r10) & r92;
        this.f15215c[r72] = k10;
        this.f15216d[r72] = v10;
        this.f = r82;
        this.f15217e += 32;
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
        if (v10 == f15212k) {
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
        p4.k0 k0Var = this.f15220j;
        if (k0Var != null) {
            return k0Var;
        }
        p4.k0 k0Var2 = new p4.k0(this, 1);
        this.f15220j = k0Var2;
        return k0Var2;
    }
}
