package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes.dex */
public final class f implements Iterable<p>, p, l {

    /* renamed from: a, reason: collision with root package name */
    public final TreeMap f3465a;

    /* renamed from: b, reason: collision with root package name */
    public final TreeMap f3466b;

    public f() {
        this.f3465a = new TreeMap();
        this.f3466b = new TreeMap();
    }

    public f(List<p> list) {
        this();
        if (list != null) {
            for (int r02 = 0; r02 < list.size(); r02++) {
                G(r02, list.get(r02));
            }
        }
    }

    public final String A(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (!this.f3465a.isEmpty()) {
            for (int r22 = 0; r22 < y(); r22++) {
                p pVarZ = z(r22);
                sb2.append(str);
                if (!(pVarZ instanceof u) && !(pVarZ instanceof n)) {
                    sb2.append(pVarZ.h());
                }
            }
            sb2.delete(0, str.length());
        }
        return sb2.toString();
    }

    public final Iterator<Integer> C() {
        return this.f3465a.keySet().iterator();
    }

    public final ArrayList D() {
        ArrayList arrayList = new ArrayList(y());
        for (int r12 = 0; r12 < y(); r12++) {
            arrayList.add(z(r12));
        }
        return arrayList;
    }

    public final void E(int r52) {
        TreeMap treeMap = this.f3465a;
        int r12 = ((Integer) treeMap.lastKey()).intValue();
        if (r52 > r12 || r52 < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(r52));
        if (r52 == r12) {
            int r53 = r52 - 1;
            Integer numValueOf = Integer.valueOf(r53);
            if (treeMap.containsKey(numValueOf) || r53 < 0) {
                return;
            }
            treeMap.put(numValueOf, p.f3668i);
            return;
        }
        while (true) {
            r52++;
            if (r52 > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer numValueOf2 = Integer.valueOf(r52);
            p pVar = (p) treeMap.get(numValueOf2);
            if (pVar != null) {
                treeMap.put(Integer.valueOf(r52 - 1), pVar);
                treeMap.remove(numValueOf2);
            }
        }
    }

    @RequiresNonNull({"elements"})
    public final void G(int r32, p pVar) {
        if (r32 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (r32 < 0) {
            throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(32, "Out of bounds index: ", r32));
        }
        TreeMap treeMap = this.f3465a;
        Integer numValueOf = Integer.valueOf(r32);
        if (pVar == null) {
            treeMap.remove(numValueOf);
        } else {
            treeMap.put(numValueOf, pVar);
        }
    }

    public final boolean H(int r42) {
        if (r42 >= 0) {
            TreeMap treeMap = this.f3465a;
            if (r42 <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(r42));
            }
        }
        throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(32, "Out of bounds index: ", r42));
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        Integer num;
        p pVarD;
        f fVar = new f();
        for (Map.Entry entry : this.f3465a.entrySet()) {
            boolean z10 = entry.getValue() instanceof l;
            TreeMap treeMap = fVar.f3465a;
            if (z10) {
                num = (Integer) entry.getKey();
                pVarD = (p) entry.getValue();
            } else {
                num = (Integer) entry.getKey();
                pVarD = ((p) entry.getValue()).d();
            }
            treeMap.put(num, pVarD);
        }
        return fVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (y() != fVar.y()) {
            return false;
        }
        TreeMap treeMap = this.f3465a;
        if (treeMap.isEmpty()) {
            return fVar.f3465a.isEmpty();
        }
        for (int r32 = ((Integer) treeMap.firstKey()).intValue(); r32 <= ((Integer) treeMap.lastKey()).intValue(); r32++) {
            if (!z(r32).equals(fVar.z(r32))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        return A(",");
    }

    public final int hashCode() {
        return this.f3465a.hashCode() * 31;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        TreeMap treeMap = this.f3465a;
        return treeMap.size() == 1 ? z(0).i() : treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // java.lang.Iterable
    public final Iterator<p> iterator() {
        return new e(this);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final boolean m(String str) {
        return "length".equals(str) || this.f3466b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return new d(this.f3465a.keySet().iterator(), this.f3466b.keySet().iterator());
    }

    public final String toString() {
        return A(",");
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final void u(String str, p pVar) {
        TreeMap treeMap = this.f3466b;
        if (pVar == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, pVar);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0514, code lost:
    
        if (y() == 0) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0821, code lost:
    
        if (com.google.android.gms.internal.measurement.p5.b(r27, r29, (com.google.android.gms.internal.measurement.o) r0, java.lang.Boolean.FALSE, java.lang.Boolean.TRUE).y() == y()) goto L361;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:326:0x072c  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0750 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v100, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v104, types: [com.google.android.gms.internal.measurement.p] */
    /* JADX WARN: Type inference failed for: r0v120, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r0v128, types: [com.google.android.gms.internal.measurement.p] */
    /* JADX WARN: Type inference failed for: r0v149, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r0v151, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r0v152 */
    /* JADX WARN: Type inference failed for: r0v154, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v24, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r0v36, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.measurement.p] */
    /* JADX WARN: Type inference failed for: r0v44, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v51, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r0v56, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r0v68, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v71, types: [com.google.android.gms.internal.measurement.i] */
    /* JADX WARN: Type inference failed for: r0v94, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r0v95, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r28v0, types: [java.lang.Object, java.lang.String] */
    @Override // com.google.android.gms.internal.measurement.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.p w(java.lang.String r28, com.google.android.gms.internal.measurement.s3 r29, java.util.ArrayList r30) {
        /*
            Method dump skipped, instructions count: 2318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.f.w(java.lang.String, com.google.android.gms.internal.measurement.s3, java.util.ArrayList):com.google.android.gms.internal.measurement.p");
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final p x(String str) {
        p pVar;
        return "length".equals(str) ? new i(Double.valueOf(y())) : (!m(str) || (pVar = (p) this.f3466b.get(str)) == null) ? p.f3668i : pVar;
    }

    public final int y() {
        TreeMap treeMap = this.f3465a;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final p z(int r22) {
        p pVar;
        if (r22 < y()) {
            return (!H(r22) || (pVar = (p) this.f3465a.get(Integer.valueOf(r22))) == null) ? p.f3668i : pVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }
}
