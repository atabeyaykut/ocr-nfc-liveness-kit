package y0;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import y0.k;

/* loaded from: classes.dex */
public final class f<K extends k, V> {

    /* renamed from: a, reason: collision with root package name */
    public final a<K, V> f19248a = new a<>();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f19249b = new HashMap();

    public static class a<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final K f19250a;

        /* renamed from: b, reason: collision with root package name */
        public ArrayList f19251b;

        /* renamed from: c, reason: collision with root package name */
        public a<K, V> f19252c;

        /* renamed from: d, reason: collision with root package name */
        public a<K, V> f19253d;

        public a() {
            this(null);
        }

        public a(K k10) {
            this.f19253d = this;
            this.f19252c = this;
            this.f19250a = k10;
        }
    }

    @Nullable
    public final V a(K k10) {
        a aVar;
        HashMap map = this.f19249b;
        a aVar2 = (a) map.get(k10);
        if (aVar2 == null) {
            a aVar3 = new a(k10);
            map.put(k10, aVar3);
            aVar = aVar3;
        } else {
            k10.a();
            aVar = aVar2;
        }
        a<K, V> aVar4 = aVar.f19253d;
        aVar4.f19252c = aVar.f19252c;
        aVar.f19252c.f19253d = aVar4;
        a<K, V> aVar5 = this.f19248a;
        aVar.f19253d = aVar5;
        a<K, V> aVar6 = aVar5.f19252c;
        aVar.f19252c = aVar6;
        aVar6.f19253d = aVar;
        aVar.f19253d.f19252c = aVar;
        ArrayList arrayList = aVar.f19251b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return (V) aVar.f19251b.remove(size - 1);
        }
        return null;
    }

    public final void b(K k10, V v10) {
        HashMap map = this.f19249b;
        a aVar = (a) map.get(k10);
        if (aVar == null) {
            aVar = new a(k10);
            a<K, V> aVar2 = aVar.f19253d;
            aVar2.f19252c = aVar.f19252c;
            aVar.f19252c.f19253d = aVar2;
            a<K, V> aVar3 = this.f19248a;
            aVar.f19253d = aVar3.f19253d;
            aVar.f19252c = aVar3;
            aVar3.f19253d = aVar;
            aVar.f19253d.f19252c = aVar;
            map.put(k10, aVar);
        } else {
            k10.a();
        }
        if (aVar.f19251b == null) {
            aVar.f19251b = new ArrayList();
        }
        aVar.f19251b.add(v10);
    }

    @Nullable
    public final V c() {
        a<K, V> aVar = this.f19248a;
        a aVar2 = aVar.f19253d;
        while (true) {
            V v10 = null;
            if (aVar2.equals(aVar)) {
                return null;
            }
            ArrayList arrayList = aVar2.f19251b;
            int size = arrayList != null ? arrayList.size() : 0;
            if (size > 0) {
                v10 = (V) aVar2.f19251b.remove(size - 1);
            }
            if (v10 != null) {
                return v10;
            }
            a<K, V> aVar3 = aVar2.f19253d;
            aVar3.f19252c = aVar2.f19252c;
            aVar2.f19252c.f19253d = aVar3;
            HashMap map = this.f19249b;
            Object obj = aVar2.f19250a;
            map.remove(obj);
            ((k) obj).a();
            aVar2 = aVar2.f19253d;
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
        a<K, V> aVar = this.f19248a;
        a aVar2 = aVar.f19252c;
        boolean z10 = false;
        while (!aVar2.equals(aVar)) {
            sb2.append('{');
            sb2.append(aVar2.f19250a);
            sb2.append(':');
            ArrayList arrayList = aVar2.f19251b;
            sb2.append(arrayList != null ? arrayList.size() : 0);
            sb2.append("}, ");
            aVar2 = aVar2.f19252c;
            z10 = true;
        }
        if (z10) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(" )");
        return sb2.toString();
    }
}
