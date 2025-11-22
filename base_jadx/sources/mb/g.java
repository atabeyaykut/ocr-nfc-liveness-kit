package mb;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mb.g.a;
import mb.h;
import mb.i;
import mb.p;

/* loaded from: classes2.dex */
public final class g<FieldDescriptorType extends a<FieldDescriptorType>> {

    /* renamed from: d, reason: collision with root package name */
    public static final g f10277d = new g(0);

    /* renamed from: a, reason: collision with root package name */
    public final t f10278a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10279b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10280c = false;

    public interface a<T extends a<T>> extends Comparable<T> {
        h.a I(p.a aVar, p pVar);

        int f();

        boolean g();

        w h();

        x l();

        boolean m();
    }

    public g() {
        int r02 = u.f;
        this.f10278a = new t(16);
    }

    public static Object c(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int d(w wVar, Object obj) throws UnsupportedEncodingException {
        switch (wVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                return 8;
            case 1:
                ((Float) obj).floatValue();
                return 4;
            case 2:
                return e.g(((Long) obj).longValue());
            case 3:
                return e.g(((Long) obj).longValue());
            case 4:
                return e.c(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                return 8;
            case 6:
                ((Integer) obj).intValue();
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                return 1;
            case 8:
                try {
                    byte[] bytes = ((String) obj).getBytes("UTF-8");
                    return e.f(bytes.length) + bytes.length;
                } catch (UnsupportedEncodingException e10) {
                    throw new RuntimeException("UTF-8 not supported.", e10);
                }
            case 9:
                return ((p) obj).c();
            case 10:
                if (!(obj instanceof k)) {
                    return e.e((p) obj);
                }
                k kVar = (k) obj;
                if (!kVar.f10301a) {
                    throw null;
                }
                int r32 = kVar.f10302b.c();
                return e.f(r32) + r32;
            case 11:
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    return cVar.size() + e.f(cVar.size());
                }
                byte[] bArr = (byte[]) obj;
                return e.f(bArr.length) + bArr.length;
            case 12:
                return e.f(((Integer) obj).intValue());
            case 13:
                return obj instanceof i.a ? e.c(((i.a) obj).f()) : e.c(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                return 4;
            case 15:
                ((Long) obj).longValue();
                return 8;
            case 16:
                int r33 = ((Integer) obj).intValue();
                return e.f((r33 >> 31) ^ (r33 << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return e.g((jLongValue >> 63) ^ (jLongValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(a<?> aVar, Object obj) {
        w wVarH = aVar.h();
        int r12 = aVar.f();
        if (!aVar.g()) {
            int r52 = e.h(r12);
            if (wVarH == w.f10342e) {
                r52 *= 2;
            }
            return d(wVarH, obj) + r52;
        }
        List list = (List) obj;
        int r22 = 0;
        if (aVar.m()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                r22 += d(wVarH, it.next());
            }
            return e.f(r22) + e.h(r12) + r22;
        }
        for (Object obj2 : list) {
            int r32 = e.h(r12);
            if (wVarH == w.f10342e) {
                r32 *= 2;
            }
            r22 += d(wVarH, obj2) + r32;
        }
        return r22;
    }

    public static boolean g(Map.Entry entry) {
        a aVar = (a) entry.getKey();
        if (aVar.l() == x.MESSAGE) {
            boolean zG = aVar.g();
            Object value = entry.getValue();
            if (zG) {
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    if (!((p) it.next()).b()) {
                        return false;
                    }
                }
            } else {
                if (!(value instanceof p)) {
                    if (value instanceof k) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((p) value).b()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static Object j(d dVar, w wVar) throws IOException {
        switch (wVar.ordinal()) {
            case 0:
                return Double.valueOf(Double.longBitsToDouble(dVar.j()));
            case 1:
                return Float.valueOf(Float.intBitsToFloat(dVar.i()));
            case 2:
                return Long.valueOf(dVar.l());
            case 3:
                return Long.valueOf(dVar.l());
            case 4:
                return Integer.valueOf(dVar.k());
            case 5:
                return Long.valueOf(dVar.j());
            case 6:
                return Integer.valueOf(dVar.i());
            case 7:
                return Boolean.valueOf(dVar.l() != 0);
            case 8:
                int r52 = dVar.k();
                int r02 = dVar.f10262b;
                int r12 = dVar.f10264d;
                if (r52 > r02 - r12 || r52 <= 0) {
                    return r52 == 0 ? "" : new String(dVar.h(r52), "UTF-8");
                }
                String str = new String(dVar.f10261a, r12, r52, "UTF-8");
                dVar.f10264d += r52;
                return str;
            case 9:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 10:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 11:
                return dVar.e();
            case 12:
                return Integer.valueOf(dVar.k());
            case 13:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            case 14:
                return Integer.valueOf(dVar.i());
            case 15:
                return Long.valueOf(dVar.j());
            case 16:
                int r42 = dVar.k();
                return Integer.valueOf((-(r42 & 1)) ^ (r42 >>> 1));
            case 17:
                long jL = dVar.l();
                return Long.valueOf((-(jL & 1)) ^ (jL >>> 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void l(mb.w r2, java.lang.Object r3) {
        /*
            r3.getClass()
            mb.x r2 = r2.f10345a
            int r2 = r2.ordinal()
            r0 = 1
            r1 = 0
            switch(r2) {
                case 0: goto L3c;
                case 1: goto L39;
                case 2: goto L36;
                case 3: goto L33;
                case 4: goto L30;
                case 5: goto L2d;
                case 6: goto L21;
                case 7: goto L18;
                case 8: goto Lf;
                default: goto Le;
            }
        Le:
            goto L3e
        Lf:
            boolean r2 = r3 instanceof mb.p
            if (r2 != 0) goto L2b
            boolean r2 = r3 instanceof mb.k
            if (r2 == 0) goto L2a
            goto L2b
        L18:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L2b
            boolean r2 = r3 instanceof mb.i.a
            if (r2 == 0) goto L2a
            goto L2b
        L21:
            boolean r2 = r3 instanceof mb.c
            if (r2 != 0) goto L2b
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L2a
            goto L2b
        L2a:
            r0 = 0
        L2b:
            r1 = r0
            goto L3e
        L2d:
            boolean r1 = r3 instanceof java.lang.String
            goto L3e
        L30:
            boolean r1 = r3 instanceof java.lang.Boolean
            goto L3e
        L33:
            boolean r1 = r3 instanceof java.lang.Double
            goto L3e
        L36:
            boolean r1 = r3 instanceof java.lang.Float
            goto L3e
        L39:
            boolean r1 = r3 instanceof java.lang.Long
            goto L3e
        L3c:
            boolean r1 = r3 instanceof java.lang.Integer
        L3e:
            if (r1 == 0) goto L41
            return
        L41:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: mb.g.l(mb.w, java.lang.Object):void");
    }

    public static void m(e eVar, w wVar, int r32, Object obj) throws IOException {
        if (wVar != w.f10342e) {
            eVar.x(r32, wVar.f10346b);
            n(eVar, wVar, obj);
        } else {
            eVar.x(r32, 3);
            ((p) obj).d(eVar);
            eVar.x(r32, 4);
        }
    }

    public static void n(e eVar, w wVar, Object obj) throws IOException {
        switch (wVar.ordinal()) {
            case 0:
                double dDoubleValue = ((Double) obj).doubleValue();
                eVar.getClass();
                eVar.u(Double.doubleToRawLongBits(dDoubleValue));
                break;
            case 1:
                float fFloatValue = ((Float) obj).floatValue();
                eVar.getClass();
                eVar.t(Float.floatToRawIntBits(fFloatValue));
                break;
            case 2:
                eVar.w(((Long) obj).longValue());
                break;
            case 3:
                eVar.w(((Long) obj).longValue());
                break;
            case 4:
                eVar.n(((Integer) obj).intValue());
                break;
            case 5:
                eVar.u(((Long) obj).longValue());
                break;
            case 6:
                eVar.t(((Integer) obj).intValue());
                break;
            case 7:
                eVar.q(((Boolean) obj).booleanValue() ? 1 : 0);
                break;
            case 8:
                eVar.getClass();
                byte[] bytes = ((String) obj).getBytes("UTF-8");
                eVar.v(bytes.length);
                eVar.s(bytes);
                break;
            case 9:
                eVar.getClass();
                ((p) obj).d(eVar);
                break;
            case 10:
                eVar.p((p) obj);
                break;
            case 11:
                if (!(obj instanceof c)) {
                    byte[] bArr = (byte[]) obj;
                    eVar.getClass();
                    eVar.v(bArr.length);
                    eVar.s(bArr);
                    break;
                } else {
                    c cVar = (c) obj;
                    eVar.getClass();
                    eVar.v(cVar.size());
                    eVar.r(cVar);
                    break;
                }
            case 12:
                eVar.v(((Integer) obj).intValue());
                break;
            case 13:
                eVar.n(obj instanceof i.a ? ((i.a) obj).f() : ((Integer) obj).intValue());
                break;
            case 14:
                eVar.t(((Integer) obj).intValue());
                break;
            case 15:
                eVar.u(((Long) obj).longValue());
                break;
            case 16:
                int r42 = ((Integer) obj).intValue();
                eVar.v((r42 >> 31) ^ (r42 << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                eVar.w((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    public final void a(h.d dVar, Object obj) {
        List arrayList;
        if (!dVar.f10290c) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        l(dVar.f10289b, obj);
        Object objF = f(dVar);
        if (objF == null) {
            arrayList = new ArrayList();
            this.f10278a.e(dVar, arrayList);
        } else {
            arrayList = (List) objF;
        }
        arrayList.add(obj);
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final g<FieldDescriptorType> clone() {
        t tVar;
        g<FieldDescriptorType> gVar = new g<>();
        int r12 = 0;
        while (true) {
            tVar = this.f10278a;
            if (r12 >= tVar.f10323b.size()) {
                break;
            }
            u<K, V>.b bVar = tVar.f10323b.get(r12);
            gVar.k((a) bVar.getKey(), bVar.getValue());
            r12++;
        }
        for (Map.Entry<Object, Object> entry : tVar.c()) {
            gVar.k((a) entry.getKey(), entry.getValue());
        }
        gVar.f10280c = this.f10280c;
        return gVar;
    }

    public final Object f(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f10278a.get(fielddescriptortype);
        return obj instanceof k ? ((k) obj).a() : obj;
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object, java.util.List] */
    public final void h() {
        if (this.f10279b) {
            return;
        }
        t tVar = this.f10278a;
        if (!tVar.f10325d) {
            for (int r12 = 0; r12 < tVar.f10323b.size(); r12++) {
                u<K, V>.b bVar = tVar.f10323b.get(r12);
                if (((a) bVar.getKey()).g()) {
                    bVar.setValue(Collections.unmodifiableList((List) bVar.getValue()));
                }
            }
            for (Map.Entry<Object, Object> entry : tVar.c()) {
                if (((a) entry.getKey()).g()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!tVar.f10325d) {
            tVar.f10324c = tVar.f10324c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(tVar.f10324c);
            tVar.f10325d = true;
        }
        this.f10279b = true;
    }

    public final void i(Map.Entry<FieldDescriptorType, Object> entry) {
        Object objF;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof k) {
            value = ((k) value).a();
        }
        boolean zG = key.g();
        t tVar = this.f10278a;
        if (!zG) {
            tVar.e(key, (key.l() != x.MESSAGE || (objF = f(key)) == null) ? c(value) : key.I(((p) objF).f(), (p) value).build());
            return;
        }
        Object objF2 = f(key);
        if (objF2 == null) {
            objF2 = new ArrayList();
        }
        Iterator it = ((List) value).iterator();
        while (it.hasNext()) {
            ((List) objF2).add(c(it.next()));
        }
        tVar.e(key, objF2);
    }

    public final void k(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.g()) {
            l(fielddescriptortype.h(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                l(fielddescriptortype.h(), it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof k) {
            this.f10280c = true;
        }
        this.f10278a.e(fielddescriptortype, obj);
    }

    public g(int r22) {
        int r02 = u.f;
        this.f10278a = new t(0);
        h();
    }
}
