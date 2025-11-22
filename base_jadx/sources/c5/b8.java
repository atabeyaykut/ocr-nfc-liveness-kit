package c5;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.la;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class b8 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1425a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1426b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.w3 f1427c;

    /* renamed from: d, reason: collision with root package name */
    public final BitSet f1428d;

    /* renamed from: e, reason: collision with root package name */
    public final BitSet f1429e;
    public final Map<Integer, Long> f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayMap f1430g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ g8 f1431h;

    public /* synthetic */ b8(g8 g8Var, String str) {
        this.f1431h = g8Var;
        this.f1425a = str;
        this.f1426b = true;
        this.f1428d = new BitSet();
        this.f1429e = new BitSet();
        this.f = new ArrayMap();
        this.f1430g = new ArrayMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ b8(g8 g8Var, String str, com.google.android.gms.internal.measurement.w3 w3Var, BitSet bitSet, BitSet bitSet2, ArrayMap arrayMap, ArrayMap arrayMap2) {
        this.f1431h = g8Var;
        this.f1425a = str;
        this.f1428d = bitSet;
        this.f1429e = bitSet2;
        this.f = arrayMap;
        this.f1430g = new ArrayMap();
        for (K k10 : arrayMap2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) arrayMap2.get(k10));
            this.f1430g.put(k10, arrayList);
        }
        this.f1426b = false;
        this.f1427c = w3Var;
    }

    @NonNull
    public final com.google.android.gms.internal.measurement.d3 a(int r10) {
        ArrayList arrayList;
        List listEmptyList;
        com.google.android.gms.internal.measurement.c3 c3VarS = com.google.android.gms.internal.measurement.d3.s();
        if (c3VarS.f3643c) {
            c3VarS.i();
            c3VarS.f3643c = false;
        }
        com.google.android.gms.internal.measurement.d3.w((com.google.android.gms.internal.measurement.d3) c3VarS.f3642b, r10);
        if (c3VarS.f3643c) {
            c3VarS.i();
            c3VarS.f3643c = false;
        }
        com.google.android.gms.internal.measurement.d3.z((com.google.android.gms.internal.measurement.d3) c3VarS.f3642b, this.f1426b);
        com.google.android.gms.internal.measurement.w3 w3Var = this.f1427c;
        if (w3Var != null) {
            if (c3VarS.f3643c) {
                c3VarS.i();
                c3VarS.f3643c = false;
            }
            com.google.android.gms.internal.measurement.d3.y((com.google.android.gms.internal.measurement.d3) c3VarS.f3642b, w3Var);
        }
        com.google.android.gms.internal.measurement.v3 v3VarW = com.google.android.gms.internal.measurement.w3.w();
        ArrayList arrayListF = q7.F(this.f1428d);
        if (v3VarW.f3643c) {
            v3VarW.i();
            v3VarW.f3643c = false;
        }
        com.google.android.gms.internal.measurement.w3.G((com.google.android.gms.internal.measurement.w3) v3VarW.f3642b, arrayListF);
        ArrayList arrayListF2 = q7.F(this.f1429e);
        if (v3VarW.f3643c) {
            v3VarW.i();
            v3VarW.f3643c = false;
        }
        com.google.android.gms.internal.measurement.w3.E((com.google.android.gms.internal.measurement.w3) v3VarW.f3642b, arrayListF2);
        Map<Integer, Long> map = this.f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            Iterator<Integer> it = map.keySet().iterator();
            while (it.hasNext()) {
                int r52 = it.next().intValue();
                Long l5 = map.get(Integer.valueOf(r52));
                if (l5 != null) {
                    com.google.android.gms.internal.measurement.e3 e3VarT = com.google.android.gms.internal.measurement.f3.t();
                    if (e3VarT.f3643c) {
                        e3VarT.i();
                        e3VarT.f3643c = false;
                    }
                    com.google.android.gms.internal.measurement.f3.v((com.google.android.gms.internal.measurement.f3) e3VarT.f3642b, r52);
                    long jLongValue = l5.longValue();
                    if (e3VarT.f3643c) {
                        e3VarT.i();
                        e3VarT.f3643c = false;
                    }
                    com.google.android.gms.internal.measurement.f3.w((com.google.android.gms.internal.measurement.f3) e3VarT.f3642b, jLongValue);
                    arrayList2.add(e3VarT.f());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            if (v3VarW.f3643c) {
                v3VarW.i();
                v3VarW.f3643c = false;
            }
            com.google.android.gms.internal.measurement.w3.I((com.google.android.gms.internal.measurement.w3) v3VarW.f3642b, arrayList);
        }
        ArrayMap arrayMap = this.f1430g;
        if (arrayMap == null) {
            listEmptyList = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(arrayMap.size());
            for (Integer num : arrayMap.keySet()) {
                com.google.android.gms.internal.measurement.x3 x3VarU = com.google.android.gms.internal.measurement.y3.u();
                int r72 = num.intValue();
                if (x3VarU.f3643c) {
                    x3VarU.i();
                    x3VarU.f3643c = false;
                }
                com.google.android.gms.internal.measurement.y3.x((com.google.android.gms.internal.measurement.y3) x3VarU.f3642b, r72);
                List list = (List) arrayMap.get(num);
                if (list != null) {
                    Collections.sort(list);
                    if (x3VarU.f3643c) {
                        x3VarU.i();
                        x3VarU.f3643c = false;
                    }
                    com.google.android.gms.internal.measurement.y3.y((com.google.android.gms.internal.measurement.y3) x3VarU.f3642b, list);
                }
                arrayList3.add(x3VarU.f());
            }
            listEmptyList = arrayList3;
        }
        if (v3VarW.f3643c) {
            v3VarW.i();
            v3VarW.f3643c = false;
        }
        com.google.android.gms.internal.measurement.w3.K((com.google.android.gms.internal.measurement.w3) v3VarW.f3642b, listEmptyList);
        if (c3VarS.f3643c) {
            c3VarS.i();
            c3VarS.f3643c = false;
        }
        com.google.android.gms.internal.measurement.d3.x((com.google.android.gms.internal.measurement.d3) c3VarS.f3642b, v3VarW.f());
        return c3VarS.f();
    }

    public final void b(@NonNull e8 e8Var) {
        int r02 = e8Var.a();
        Boolean bool = e8Var.f1527c;
        if (bool != null) {
            this.f1429e.set(r02, bool.booleanValue());
        }
        Boolean bool2 = e8Var.f1528d;
        if (bool2 != null) {
            this.f1428d.set(r02, bool2.booleanValue());
        }
        if (e8Var.f1529e != null) {
            Integer numValueOf = Integer.valueOf(r02);
            Map<Integer, Long> map = this.f;
            Long l5 = map.get(numValueOf);
            long jLongValue = e8Var.f1529e.longValue() / 1000;
            if (l5 == null || jLongValue > l5.longValue()) {
                map.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (e8Var.f != null) {
            ArrayMap arrayMap = this.f1430g;
            Integer numValueOf2 = Integer.valueOf(r02);
            List arrayList = (List) arrayMap.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                arrayMap.put(numValueOf2, arrayList);
            }
            if (e8Var.c()) {
                arrayList.clear();
            }
            la.b();
            g8 g8Var = this.f1431h;
            e eVar = ((i4) g8Var.f2115a).f1633g;
            q2<Boolean> q2Var = r2.Y;
            String str = this.f1425a;
            if (eVar.p(str, q2Var) && e8Var.b()) {
                arrayList.clear();
            }
            la.b();
            boolean zP = ((i4) g8Var.f2115a).f1633g.p(str, q2Var);
            Long l10 = e8Var.f;
            if (!zP) {
                arrayList.add(Long.valueOf(l10.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(l10.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }
}
