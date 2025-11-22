package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes2.dex */
public final class g implements v {

    /* renamed from: a, reason: collision with root package name */
    public final l7.c f10065a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10066b = false;

    public final class a<K, V> extends u<Map<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final n f10067a;

        /* renamed from: b, reason: collision with root package name */
        public final n f10068b;

        /* renamed from: c, reason: collision with root package name */
        public final l7.j<? extends Map<K, V>> f10069c;

        public a(j7.h hVar, Type type, u<K> uVar, Type type2, u<V> uVar2, l7.j<? extends Map<K, V>> jVar) {
            this.f10067a = new n(hVar, uVar, type);
            this.f10068b = new n(hVar, uVar2, type2);
            this.f10069c = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // j7.u
        public final Object a(q7.a aVar) throws IOException {
            int r02;
            int r03 = aVar.B();
            if (r03 == 9) {
                aVar.s();
                return null;
            }
            Map<K, V> mapH = this.f10069c.h();
            n nVar = this.f10068b;
            n nVar2 = this.f10067a;
            if (r03 == 1) {
                aVar.a();
                while (aVar.i()) {
                    aVar.a();
                    Object objA = nVar2.a(aVar);
                    if (mapH.put(objA, nVar.a(aVar)) != null) {
                        throw new j7.s("duplicate key: " + objA);
                    }
                    aVar.e();
                }
                aVar.e();
            } else {
                aVar.b();
                while (aVar.i()) {
                    l7.p.f9449a.getClass();
                    if (aVar instanceof e) {
                        e eVar = (e) aVar;
                        eVar.Z(5);
                        Map.Entry entry = (Map.Entry) ((Iterator) eVar.c0()).next();
                        eVar.e0(entry.getValue());
                        eVar.e0(new j7.q((String) entry.getKey()));
                    } else {
                        int r04 = aVar.f13414h;
                        if (r04 == 0) {
                            r04 = aVar.d();
                        }
                        if (r04 == 13) {
                            aVar.f13414h = 9;
                        } else {
                            if (r04 == 12) {
                                r02 = 8;
                            } else {
                                if (r04 != 14) {
                                    throw new IllegalStateException("Expected a name but was " + androidx.fragment.app.a.j(aVar.B()) + aVar.k());
                                }
                                r02 = 10;
                            }
                            aVar.f13414h = r02;
                        }
                    }
                    Object objA2 = nVar2.a(aVar);
                    if (mapH.put(objA2, nVar.a(aVar)) != null) {
                        throw new j7.s("duplicate key: " + objA2);
                    }
                }
                aVar.f();
            }
            return mapH;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Object obj) throws IOException {
            String strM;
            Map map = (Map) obj;
            if (map == null) {
                bVar.j();
                return;
            }
            boolean z10 = g.this.f10066b;
            n nVar = this.f10068b;
            if (z10) {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int r32 = 0;
                boolean z11 = false;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    K key = entry.getKey();
                    n nVar2 = this.f10067a;
                    nVar2.getClass();
                    try {
                        f fVar = new f();
                        nVar2.b(fVar, key);
                        ArrayList arrayList3 = fVar.f10062l;
                        if (!arrayList3.isEmpty()) {
                            throw new IllegalStateException("Expected one JSON element but was " + arrayList3);
                        }
                        j7.l lVar = fVar.f10064n;
                        arrayList.add(lVar);
                        arrayList2.add(entry.getValue());
                        lVar.getClass();
                        z11 |= (lVar instanceof j7.j) || (lVar instanceof j7.o);
                    } catch (IOException e10) {
                        throw new j7.m(e10);
                    }
                }
                if (z11) {
                    bVar.b();
                    int size = arrayList.size();
                    while (r32 < size) {
                        bVar.b();
                        o.A.b(bVar, (j7.l) arrayList.get(r32));
                        nVar.b(bVar, arrayList2.get(r32));
                        bVar.e();
                        r32++;
                    }
                    bVar.e();
                    return;
                }
                bVar.c();
                int size2 = arrayList.size();
                while (r32 < size2) {
                    j7.l lVar2 = (j7.l) arrayList.get(r32);
                    lVar2.getClass();
                    boolean z12 = lVar2 instanceof j7.q;
                    if (z12) {
                        if (!z12) {
                            throw new IllegalStateException("Not a JSON Primitive: " + lVar2);
                        }
                        j7.q qVar = (j7.q) lVar2;
                        Object obj2 = qVar.f8303a;
                        if (obj2 instanceof Number) {
                            strM = String.valueOf(qVar.l());
                        } else if (obj2 instanceof Boolean) {
                            strM = Boolean.toString(qVar.h());
                        } else {
                            if (!(obj2 instanceof String)) {
                                throw new AssertionError();
                            }
                            strM = qVar.m();
                        }
                    } else {
                        if (!(lVar2 instanceof j7.n)) {
                            throw new AssertionError();
                        }
                        strM = "null";
                    }
                    bVar.g(strM);
                    nVar.b(bVar, arrayList2.get(r32));
                    r32++;
                }
            } else {
                bVar.c();
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    bVar.g(String.valueOf(entry2.getKey()));
                    nVar.b(bVar, entry2.getValue());
                }
            }
            bVar.f();
        }
    }

    public g(l7.c cVar) {
        this.f10065a = cVar;
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        Type[] actualTypeArguments;
        Type type = aVar.f12845b;
        if (!Map.class.isAssignableFrom(aVar.f12844a)) {
            return null;
        }
        Class<?> clsE = l7.a.e(type);
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeF = l7.a.f(type, clsE, Map.class);
            actualTypeArguments = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new a(hVar, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? o.f10102c : hVar.b(new p7.a<>(type2)), actualTypeArguments[1], hVar.b(new p7.a<>(actualTypeArguments[1])), this.f10065a.a(aVar));
    }
}
