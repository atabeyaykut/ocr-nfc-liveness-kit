package qb;

import cc.e0;
import cc.m0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ma.b0;

/* loaded from: classes2.dex */
public final class i {

    public static final class a extends kotlin.jvm.internal.j implements x9.l<b0, e0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ja.l f13471a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ja.l lVar) {
            super(1);
            this.f13471a = lVar;
        }

        @Override // x9.l
        public final e0 invoke(b0 b0Var) {
            b0 module = b0Var;
            kotlin.jvm.internal.h.f(module, "module");
            m0 m0VarQ = module.m().q(this.f13471a);
            kotlin.jvm.internal.h.e(m0VarQ, "module.builtIns.getPrimi…KotlinType(componentType)");
            return m0VarQ;
        }
    }

    public static b a(List list, ja.l lVar) {
        List listV1 = m9.t.v1(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = listV1.iterator();
        while (it.hasNext()) {
            g gVarB = b(it.next());
            if (gVarB != null) {
                arrayList.add(gVarB);
            }
        }
        return new b(arrayList, new a(lVar));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [m9.v] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.ArrayList] */
    public static g b(Object obj) {
        ja.l lVar;
        List list;
        if (obj instanceof Byte) {
            return new d(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new v(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new n(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new t(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new e(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new m(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new j(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new c(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new w((String) obj);
        }
        boolean z10 = obj instanceof byte[];
        ?? S = m9.v.f10173a;
        int r32 = 0;
        if (z10) {
            byte[] bArr = (byte[]) obj;
            kotlin.jvm.internal.h.f(bArr, "<this>");
            int length = bArr.length;
            if (length != 0) {
                if (length != 1) {
                    S = new ArrayList(bArr.length);
                    int length2 = bArr.length;
                    while (r32 < length2) {
                        S.add(Byte.valueOf(bArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Byte.valueOf(bArr[0]));
                }
            }
            lVar = ja.l.BYTE;
            list = S;
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            kotlin.jvm.internal.h.f(sArr, "<this>");
            int length3 = sArr.length;
            if (length3 != 0) {
                if (length3 != 1) {
                    S = new ArrayList(sArr.length);
                    int length4 = sArr.length;
                    while (r32 < length4) {
                        S.add(Short.valueOf(sArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Short.valueOf(sArr[0]));
                }
            }
            lVar = ja.l.SHORT;
            list = S;
        } else if (obj instanceof int[]) {
            int[] r6 = (int[]) obj;
            kotlin.jvm.internal.h.f(r6, "<this>");
            int length5 = r6.length;
            if (length5 != 0) {
                if (length5 != 1) {
                    S = new ArrayList(r6.length);
                    int length6 = r6.length;
                    while (r32 < length6) {
                        S.add(Integer.valueOf(r6[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Integer.valueOf(r6[0]));
                }
            }
            lVar = ja.l.INT;
            list = S;
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            kotlin.jvm.internal.h.f(jArr, "<this>");
            int length7 = jArr.length;
            if (length7 != 0) {
                if (length7 != 1) {
                    S = new ArrayList(jArr.length);
                    int length8 = jArr.length;
                    while (r32 < length8) {
                        S.add(Long.valueOf(jArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Long.valueOf(jArr[0]));
                }
            }
            lVar = ja.l.LONG;
            list = S;
        } else if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            kotlin.jvm.internal.h.f(cArr, "<this>");
            int length9 = cArr.length;
            if (length9 != 0) {
                if (length9 != 1) {
                    S = new ArrayList(cArr.length);
                    int length10 = cArr.length;
                    while (r32 < length10) {
                        S.add(Character.valueOf(cArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Character.valueOf(cArr[0]));
                }
            }
            lVar = ja.l.CHAR;
            list = S;
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            kotlin.jvm.internal.h.f(fArr, "<this>");
            int length11 = fArr.length;
            if (length11 != 0) {
                if (length11 != 1) {
                    S = new ArrayList(fArr.length);
                    int length12 = fArr.length;
                    while (r32 < length12) {
                        S.add(Float.valueOf(fArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Float.valueOf(fArr[0]));
                }
            }
            lVar = ja.l.FLOAT;
            list = S;
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            kotlin.jvm.internal.h.f(dArr, "<this>");
            int length13 = dArr.length;
            if (length13 != 0) {
                if (length13 != 1) {
                    S = new ArrayList(dArr.length);
                    int length14 = dArr.length;
                    while (r32 < length14) {
                        S.add(Double.valueOf(dArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Double.valueOf(dArr[0]));
                }
            }
            lVar = ja.l.DOUBLE;
            list = S;
        } else {
            if (!(obj instanceof boolean[])) {
                if (obj == null) {
                    return new u();
                }
                return null;
            }
            boolean[] zArr = (boolean[]) obj;
            kotlin.jvm.internal.h.f(zArr, "<this>");
            int length15 = zArr.length;
            if (length15 != 0) {
                if (length15 != 1) {
                    S = new ArrayList(zArr.length);
                    int length16 = zArr.length;
                    while (r32 < length16) {
                        S.add(Boolean.valueOf(zArr[r32]));
                        r32++;
                    }
                } else {
                    S = b8.f.S(Boolean.valueOf(zArr[0]));
                }
            }
            lVar = ja.l.BOOLEAN;
            list = S;
        }
        return a(list, lVar);
    }
}
