package mb;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mb.a;
import mb.f;
import mb.g;
import mb.i;
import mb.k;
import mb.p;
import mb.u;
import mb.w;

/* loaded from: classes2.dex */
public abstract class h extends mb.a implements Serializable {

    public static abstract class a<MessageType extends h, BuilderType extends a> extends a.AbstractC0188a<BuilderType> {

        /* renamed from: a, reason: collision with root package name */
        public mb.c f10281a = mb.c.f10255a;

        @Override // 
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public BuilderType clone() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        public abstract BuilderType j(MessageType messagetype);
    }

    public static abstract class b<MessageType extends c<MessageType>, BuilderType extends b<MessageType, BuilderType>> extends a<MessageType, BuilderType> implements q {

        /* renamed from: b, reason: collision with root package name */
        public g<d> f10282b = g.f10277d;

        /* renamed from: c, reason: collision with root package name */
        public boolean f10283c;

        public final void k(MessageType messagetype) {
            t tVar;
            if (!this.f10283c) {
                this.f10282b = this.f10282b.clone();
                this.f10283c = true;
            }
            g<d> gVar = this.f10282b;
            g<d> gVar2 = messagetype.f10284a;
            gVar.getClass();
            int r12 = 0;
            while (true) {
                int size = gVar2.f10278a.f10323b.size();
                tVar = gVar2.f10278a;
                if (r12 >= size) {
                    break;
                }
                gVar.i(tVar.f10323b.get(r12));
                r12++;
            }
            Iterator<Map.Entry<Object, Object>> it = tVar.c().iterator();
            while (it.hasNext()) {
                gVar.i((Map.Entry) it.next());
            }
        }
    }

    public static final class d implements g.a<d> {

        /* renamed from: a, reason: collision with root package name */
        public final int f10288a;

        /* renamed from: b, reason: collision with root package name */
        public final w f10289b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f10290c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f10291d = false;

        public d(int r12, w wVar, boolean z10) {
            this.f10288a = r12;
            this.f10289b = wVar;
            this.f10290c = z10;
        }

        @Override // mb.g.a
        public final a I(p.a aVar, p pVar) {
            return ((a) aVar).j((h) pVar);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f10288a - ((d) obj).f10288a;
        }

        @Override // mb.g.a
        public final int f() {
            return this.f10288a;
        }

        @Override // mb.g.a
        public final boolean g() {
            return this.f10290c;
        }

        @Override // mb.g.a
        public final w h() {
            return this.f10289b;
        }

        @Override // mb.g.a
        public final x l() {
            return this.f10289b.f10345a;
        }

        @Override // mb.g.a
        public final boolean m() {
            return this.f10291d;
        }
    }

    public static class e<ContainingType extends p, Type> {

        /* renamed from: a, reason: collision with root package name */
        public final ContainingType f10292a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f10293b;

        /* renamed from: c, reason: collision with root package name */
        public final p f10294c;

        /* renamed from: d, reason: collision with root package name */
        public final d f10295d;

        /* renamed from: e, reason: collision with root package name */
        public final Method f10296e;

        /* JADX WARN: Multi-variable type inference failed */
        public e(c cVar, Object obj, h hVar, d dVar, Class cls) throws NoSuchMethodException, SecurityException {
            Method method;
            if (cVar == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (dVar.f10289b == w.f && hVar == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.f10292a = cVar;
            this.f10293b = obj;
            this.f10294c = hVar;
            this.f10295d = dVar;
            if (i.a.class.isAssignableFrom(cls)) {
                try {
                    method = cls.getMethod("valueOf", Integer.TYPE);
                } catch (NoSuchMethodException e10) {
                    String name = cls.getName();
                    throw new RuntimeException(android.support.v4.media.a.i(new StringBuilder(name.length() + 45 + 7), "Generated message class \"", name, "\" missing method \"valueOf\"."), e10);
                }
            } else {
                method = null;
            }
            this.f10296e = method;
        }

        public final Object a(Object obj) {
            if (this.f10295d.f10289b.f10345a != x.ENUM) {
                return obj;
            }
            try {
                return this.f10296e.invoke(null, (Integer) obj);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
            } catch (InvocationTargetException e11) {
                Throwable cause = e11.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    public h() {
    }

    public h(int r12) {
    }

    public static e a(c cVar, h hVar, int r92, w.c cVar2, Class cls) {
        return new e(cVar, Collections.emptyList(), hVar, new d(r92, cVar2, true), cls);
    }

    public static e h(c cVar, Serializable serializable, h hVar, int r10, w wVar, Class cls) {
        return new e(cVar, serializable, hVar, new d(r10, wVar, false), cls);
    }

    public static abstract class c<MessageType extends c<MessageType>> extends h implements q {

        /* renamed from: a, reason: collision with root package name */
        public final g<d> f10284a;

        public class a {

            /* renamed from: a, reason: collision with root package name */
            public final Iterator<Map.Entry<d, Object>> f10285a;

            /* renamed from: b, reason: collision with root package name */
            public Map.Entry<d, Object> f10286b;

            /* renamed from: c, reason: collision with root package name */
            public final boolean f10287c;

            public a(c cVar) {
                g<d> gVar = cVar.f10284a;
                boolean z10 = gVar.f10280c;
                t tVar = gVar.f10278a;
                Iterator<Map.Entry<d, Object>> bVar = z10 ? new k.b<>(((u.d) tVar.entrySet()).iterator()) : ((u.d) tVar.entrySet()).iterator();
                this.f10285a = bVar;
                if (bVar.hasNext()) {
                    this.f10286b = bVar.next();
                }
                this.f10287c = false;
            }

            public final void a(int r82, mb.e eVar) throws IOException {
                while (true) {
                    Map.Entry<d, Object> entry = this.f10286b;
                    if (entry == null || entry.getKey().f10288a >= r82) {
                        return;
                    }
                    d key = this.f10286b.getKey();
                    int r22 = 0;
                    if (this.f10287c && key.f10289b.f10345a == x.MESSAGE && !key.f10290c) {
                        p pVar = (p) this.f10286b.getValue();
                        eVar.x(1, 3);
                        eVar.x(2, 0);
                        eVar.v(key.f10288a);
                        eVar.o(3, pVar);
                        eVar.x(1, 4);
                    } else {
                        Object value = this.f10286b.getValue();
                        g gVar = g.f10277d;
                        w wVarH = key.h();
                        int r52 = key.f();
                        if (key.g()) {
                            List list = (List) value;
                            if (key.m()) {
                                eVar.x(r52, 2);
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    r22 += g.d(wVarH, it.next());
                                }
                                eVar.v(r22);
                                Iterator it2 = list.iterator();
                                while (it2.hasNext()) {
                                    g.n(eVar, wVarH, it2.next());
                                }
                            } else {
                                Iterator it3 = list.iterator();
                                while (it3.hasNext()) {
                                    g.m(eVar, wVarH, r52, it3.next());
                                }
                            }
                        } else if (value instanceof k) {
                            g.m(eVar, wVarH, r52, ((k) value).a());
                        } else {
                            g.m(eVar, wVarH, r52, value);
                        }
                    }
                    Iterator<Map.Entry<d, Object>> it4 = this.f10285a;
                    this.f10286b = it4.hasNext() ? it4.next() : null;
                }
            }
        }

        public c() {
            this.f10284a = new g<>();
        }

        public final boolean i() {
            int r12 = 0;
            while (true) {
                t tVar = this.f10284a.f10278a;
                if (r12 >= tVar.f10323b.size()) {
                    Iterator<Map.Entry<Object, Object>> it = tVar.c().iterator();
                    while (it.hasNext()) {
                        if (!g.g(it.next())) {
                            return false;
                        }
                    }
                    return true;
                }
                if (!g.g(tVar.f10323b.get(r12))) {
                    return false;
                }
                r12++;
            }
        }

        public final int j() {
            t tVar;
            int r02 = 0;
            int r12 = 0;
            while (true) {
                tVar = this.f10284a.f10278a;
                if (r02 >= tVar.f10323b.size()) {
                    break;
                }
                u<K, V>.b bVar = tVar.f10323b.get(r02);
                r12 += g.e((g.a) bVar.getKey(), bVar.getValue());
                r02++;
            }
            for (Map.Entry<Object, Object> entry : tVar.c()) {
                r12 += g.e((g.a) entry.getKey(), entry.getValue());
            }
            return r12;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [Type, java.util.ArrayList] */
        public final <Type> Type k(e<MessageType, Type> eVar) {
            p(eVar);
            g<d> gVar = this.f10284a;
            d dVar = eVar.f10295d;
            Type type = (Type) gVar.f(dVar);
            if (type == null) {
                return eVar.f10293b;
            }
            if (!dVar.f10290c) {
                return (Type) eVar.a(type);
            }
            if (dVar.f10289b.f10345a != x.ENUM) {
                return type;
            }
            ?? r12 = (Type) new ArrayList();
            Iterator it = ((List) type).iterator();
            while (it.hasNext()) {
                r12.add(eVar.a(it.next()));
            }
            return r12;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> boolean l(e<MessageType, Type> eVar) {
            p(eVar);
            g<d> gVar = this.f10284a;
            gVar.getClass();
            d dVar = eVar.f10295d;
            if (dVar.f10290c) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return gVar.f10278a.get(dVar) != null;
        }

        public final void m() {
            this.f10284a.h();
        }

        public final c<MessageType>.a n() {
            return new a(this);
        }

        public final boolean o(mb.d dVar, mb.e eVar, f fVar, int r11) throws IOException {
            boolean z10;
            boolean z11;
            Object objBuild;
            p pVar;
            p pVarE = e();
            int r12 = r11 & 7;
            fVar.getClass();
            e<?, ?> eVar2 = fVar.f10274a.get(new f.a(r11 >>> 3, pVarE));
            if (eVar2 == null) {
                z10 = true;
                z11 = false;
            } else {
                d dVar2 = eVar2.f10295d;
                w wVar = dVar2.f10289b;
                g gVar = g.f10277d;
                if (r12 == wVar.f10346b) {
                    z10 = false;
                    z11 = false;
                } else {
                    if (dVar2.f10290c && wVar.n() && r12 == 2) {
                        z10 = false;
                        z11 = true;
                    }
                    z10 = true;
                    z11 = false;
                }
            }
            if (z10) {
                return dVar.q(r11, eVar);
            }
            g<d> gVar2 = this.f10284a;
            if (z11) {
                int r10 = dVar.d(dVar.k());
                d dVar3 = eVar2.f10295d;
                if (dVar3.f10289b != w.f10343g) {
                    while (dVar.b() > 0) {
                        gVar2.a(dVar3, g.j(dVar, dVar3.f10289b));
                    }
                } else if (dVar.b() > 0) {
                    dVar.k();
                    dVar3.getClass();
                    throw null;
                }
                dVar.c(r10);
                return true;
            }
            int r112 = eVar2.f10295d.f10289b.f10345a.ordinal();
            d dVar4 = eVar2.f10295d;
            if (r112 == 7) {
                dVar.k();
                dVar4.getClass();
                throw null;
            }
            if (r112 != 8) {
                objBuild = g.j(dVar, dVar4.f10289b);
            } else {
                p.a aVarF = (dVar4.f10290c || (pVar = (p) gVar2.f(dVar4)) == null) ? null : pVar.f();
                if (aVarF == null) {
                    aVarF = eVar2.f10294c.g();
                }
                if (dVar4.f10289b == w.f10342e) {
                    int r02 = dVar.f10268i;
                    if (r02 >= 64) {
                        throw new j("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
                    }
                    dVar.f10268i = r02 + 1;
                    aVarF.E(dVar, fVar);
                    dVar.a((dVar4.f10288a << 3) | 4);
                    dVar.f10268i--;
                } else {
                    int r03 = dVar.k();
                    if (dVar.f10268i >= 64) {
                        throw new j("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
                    }
                    int r04 = dVar.d(r03);
                    dVar.f10268i++;
                    aVarF.E(dVar, fVar);
                    dVar.a(0);
                    dVar.f10268i--;
                    dVar.c(r04);
                }
                objBuild = aVarF.build();
            }
            boolean z12 = dVar4.f10290c;
            if (dVar4.f10289b.f10345a == x.ENUM) {
                objBuild = Integer.valueOf(((i.a) objBuild).f());
            }
            if (z12) {
                gVar2.a(dVar4, objBuild);
                return true;
            }
            gVar2.k(dVar4, objBuild);
            return true;
        }

        public final void p(e<MessageType, ?> eVar) {
            if (eVar.f10292a != e()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public c(b<MessageType, ?> bVar) {
            bVar.f10282b.h();
            bVar.f10283c = false;
            this.f10284a = bVar.f10282b;
        }
    }
}
