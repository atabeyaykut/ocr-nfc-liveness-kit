package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.h;
import l9.g;
import lb.f;
import m9.e0;
import m9.g0;
import m9.n;
import m9.t;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final a f8987a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayList f8988b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f8989c;

    /* renamed from: d, reason: collision with root package name */
    public static final Map<a.C0168a, b> f8990d;

    /* renamed from: e, reason: collision with root package name */
    public static final LinkedHashMap f8991e;
    public static final Set<f> f;

    /* renamed from: g, reason: collision with root package name */
    public static final Set<String> f8992g;

    /* renamed from: h, reason: collision with root package name */
    public static final a.C0168a f8993h;

    /* renamed from: i, reason: collision with root package name */
    public static final Map<a.C0168a, f> f8994i;

    /* renamed from: j, reason: collision with root package name */
    public static final LinkedHashMap f8995j;

    /* renamed from: k, reason: collision with root package name */
    public static final ArrayList f8996k;

    /* renamed from: l, reason: collision with root package name */
    public static final LinkedHashMap f8997l;

    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.e$a$a, reason: collision with other inner class name */
        public static final class C0168a {

            /* renamed from: a, reason: collision with root package name */
            public final f f8998a;

            /* renamed from: b, reason: collision with root package name */
            public final String f8999b;

            public C0168a(f fVar, String signature) {
                h.f(signature, "signature");
                this.f8998a = fVar;
                this.f8999b = signature;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0168a)) {
                    return false;
                }
                C0168a c0168a = (C0168a) obj;
                return h.a(this.f8998a, c0168a.f8998a) && h.a(this.f8999b, c0168a.f8999b);
            }

            public final int hashCode() {
                return this.f8999b.hashCode() + (this.f8998a.hashCode() * 31);
            }

            public final String toString() {
                StringBuilder sb2 = new StringBuilder("NameAndSignature(name=");
                sb2.append(this.f8998a);
                sb2.append(", signature=");
                return android.support.v4.media.a.h(sb2, this.f8999b, ')');
            }
        }

        public static final C0168a a(a aVar, String internalName, String str, String str2, String str3) {
            aVar.getClass();
            f fVarT = f.t(str);
            String jvmDescriptor = str + '(' + str2 + ')' + str3;
            h.f(internalName, "internalName");
            h.f(jvmDescriptor, "jvmDescriptor");
            return new C0168a(fVarT, internalName + '.' + jvmDescriptor);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {

        /* renamed from: b, reason: collision with root package name */
        public static final b f9000b;

        /* renamed from: c, reason: collision with root package name */
        public static final b f9001c;

        /* renamed from: d, reason: collision with root package name */
        public static final b f9002d;

        /* renamed from: e, reason: collision with root package name */
        public static final a f9003e;
        public static final /* synthetic */ b[] f;

        /* renamed from: a, reason: collision with root package name */
        public final Object f9004a;

        public static final class a extends b {
            public a() {
                super("MAP_GET_OR_DEFAULT", 3, null);
            }
        }

        static {
            b bVar = new b("NULL", 0, null);
            f9000b = bVar;
            b bVar2 = new b("INDEX", 1, -1);
            f9001c = bVar2;
            b bVar3 = new b("FALSE", 2, Boolean.FALSE);
            f9002d = bVar3;
            a aVar = new a();
            f9003e = aVar;
            f = new b[]{bVar, bVar2, bVar3, aVar};
        }

        public b(String str, int r22, Object obj) {
            this.f9004a = obj;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f.clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Set<String> setS = x5.a.s("containsAll", "removeAll", "retainAll");
        ArrayList arrayList = new ArrayList(n.Q0(setS));
        for (String str : setS) {
            a aVar = f8987a;
            String strQ = tb.c.BOOLEAN.q();
            h.e(strQ, "BOOLEAN.desc");
            arrayList.add(a.a(aVar, "java/util/Collection", str, "Ljava/util/Collection;", strQ));
        }
        f8988b = arrayList;
        ArrayList arrayList2 = new ArrayList(n.Q0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((a.C0168a) it.next()).f8999b);
        }
        f8989c = arrayList2;
        ArrayList arrayList3 = f8988b;
        ArrayList arrayList4 = new ArrayList(n.Q0(arrayList3));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((a.C0168a) it2.next()).f8998a.o());
        }
        a aVar2 = f8987a;
        String strConcat = "java/util/".concat("Collection");
        tb.c cVar = tb.c.BOOLEAN;
        String strQ2 = cVar.q();
        h.e(strQ2, "BOOLEAN.desc");
        a.C0168a c0168aA = a.a(aVar2, strConcat, "contains", "Ljava/lang/Object;", strQ2);
        b bVar = b.f9002d;
        String strConcat2 = "java/util/".concat("Collection");
        String strQ3 = cVar.q();
        h.e(strQ3, "BOOLEAN.desc");
        String strConcat3 = "java/util/".concat("Map");
        String strQ4 = cVar.q();
        h.e(strQ4, "BOOLEAN.desc");
        String strConcat4 = "java/util/".concat("Map");
        String strQ5 = cVar.q();
        h.e(strQ5, "BOOLEAN.desc");
        String strConcat5 = "java/util/".concat("Map");
        String strQ6 = cVar.q();
        h.e(strQ6, "BOOLEAN.desc");
        a.C0168a c0168aA2 = a.a(aVar2, "java/util/".concat("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        b bVar2 = b.f9000b;
        String strConcat6 = "java/util/".concat("List");
        tb.c cVar2 = tb.c.INT;
        String strQ7 = cVar2.q();
        h.e(strQ7, "INT.desc");
        a.C0168a c0168aA3 = a.a(aVar2, strConcat6, "indexOf", "Ljava/lang/Object;", strQ7);
        b bVar3 = b.f9001c;
        String strConcat7 = "java/util/".concat("List");
        String strQ8 = cVar2.q();
        h.e(strQ8, "INT.desc");
        Map<a.C0168a, b> mapR0 = e0.R0(new g(c0168aA, bVar), new g(a.a(aVar2, strConcat2, "remove", "Ljava/lang/Object;", strQ3), bVar), new g(a.a(aVar2, strConcat3, "containsKey", "Ljava/lang/Object;", strQ4), bVar), new g(a.a(aVar2, strConcat4, "containsValue", "Ljava/lang/Object;", strQ5), bVar), new g(a.a(aVar2, strConcat5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", strQ6), bVar), new g(a.a(aVar2, "java/util/".concat("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), b.f9003e), new g(c0168aA2, bVar2), new g(a.a(aVar2, "java/util/".concat("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), bVar2), new g(c0168aA3, bVar3), new g(a.a(aVar2, strConcat7, "lastIndexOf", "Ljava/lang/Object;", strQ8), bVar3));
        f8990d = mapR0;
        LinkedHashMap linkedHashMap = new LinkedHashMap(b8.f.V(mapR0.size()));
        Iterator<T> it3 = mapR0.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            linkedHashMap.put(((a.C0168a) entry.getKey()).f8999b, entry.getValue());
        }
        f8991e = linkedHashMap;
        LinkedHashSet linkedHashSetF = g0.F(f8990d.keySet(), f8988b);
        ArrayList arrayList5 = new ArrayList(n.Q0(linkedHashSetF));
        Iterator it4 = linkedHashSetF.iterator();
        while (it4.hasNext()) {
            arrayList5.add(((a.C0168a) it4.next()).f8998a);
        }
        f = t.y1(arrayList5);
        ArrayList arrayList6 = new ArrayList(n.Q0(linkedHashSetF));
        Iterator it5 = linkedHashSetF.iterator();
        while (it5.hasNext()) {
            arrayList6.add(((a.C0168a) it5.next()).f8999b);
        }
        f8992g = t.y1(arrayList6);
        a aVar3 = f8987a;
        tb.c cVar3 = tb.c.INT;
        String strQ9 = cVar3.q();
        h.e(strQ9, "INT.desc");
        a.C0168a c0168aA4 = a.a(aVar3, "java/util/List", "removeAt", strQ9, "Ljava/lang/Object;");
        f8993h = c0168aA4;
        String strConcat8 = "java/lang/".concat("Number");
        String strQ10 = tb.c.BYTE.q();
        h.e(strQ10, "BYTE.desc");
        String strConcat9 = "java/lang/".concat("Number");
        String strQ11 = tb.c.SHORT.q();
        h.e(strQ11, "SHORT.desc");
        String strConcat10 = "java/lang/".concat("Number");
        String strQ12 = cVar3.q();
        h.e(strQ12, "INT.desc");
        String strConcat11 = "java/lang/".concat("Number");
        String strQ13 = tb.c.LONG.q();
        h.e(strQ13, "LONG.desc");
        String strConcat12 = "java/lang/".concat("Number");
        String strQ14 = tb.c.FLOAT.q();
        h.e(strQ14, "FLOAT.desc");
        String strConcat13 = "java/lang/".concat("Number");
        String strQ15 = tb.c.DOUBLE.q();
        h.e(strQ15, "DOUBLE.desc");
        String strConcat14 = "java/lang/".concat("CharSequence");
        String strQ16 = cVar3.q();
        h.e(strQ16, "INT.desc");
        String strQ17 = tb.c.CHAR.q();
        h.e(strQ17, "CHAR.desc");
        Map<a.C0168a, f> mapR02 = e0.R0(new g(a.a(aVar3, strConcat8, "toByte", "", strQ10), f.t("byteValue")), new g(a.a(aVar3, strConcat9, "toShort", "", strQ11), f.t("shortValue")), new g(a.a(aVar3, strConcat10, "toInt", "", strQ12), f.t("intValue")), new g(a.a(aVar3, strConcat11, "toLong", "", strQ13), f.t("longValue")), new g(a.a(aVar3, strConcat12, "toFloat", "", strQ14), f.t("floatValue")), new g(a.a(aVar3, strConcat13, "toDouble", "", strQ15), f.t("doubleValue")), new g(c0168aA4, f.t("remove")), new g(a.a(aVar3, strConcat14, "get", strQ16, strQ17), f.t("charAt")));
        f8994i = mapR02;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(b8.f.V(mapR02.size()));
        Iterator<T> it6 = mapR02.entrySet().iterator();
        while (it6.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it6.next();
            linkedHashMap2.put(((a.C0168a) entry2.getKey()).f8999b, entry2.getValue());
        }
        f8995j = linkedHashMap2;
        Set<a.C0168a> setKeySet = f8994i.keySet();
        ArrayList arrayList7 = new ArrayList(n.Q0(setKeySet));
        Iterator<T> it7 = setKeySet.iterator();
        while (it7.hasNext()) {
            arrayList7.add(((a.C0168a) it7.next()).f8998a);
        }
        f8996k = arrayList7;
        Set<Map.Entry<a.C0168a, f>> setEntrySet = f8994i.entrySet();
        ArrayList arrayList8 = new ArrayList(n.Q0(setEntrySet));
        Iterator<T> it8 = setEntrySet.iterator();
        while (it8.hasNext()) {
            Map.Entry entry3 = (Map.Entry) it8.next();
            arrayList8.add(new g(((a.C0168a) entry3.getKey()).f8998a, entry3.getValue()));
        }
        int r02 = b8.f.V(n.Q0(arrayList8));
        if (r02 < 16) {
            r02 = 16;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(r02);
        Iterator it9 = arrayList8.iterator();
        while (it9.hasNext()) {
            g gVar = (g) it9.next();
            linkedHashMap3.put((f) gVar.f9583b, (f) gVar.f9582a);
        }
        f8997l = linkedHashMap3;
    }
}
