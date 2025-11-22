package tb;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import ja.l;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes2.dex */
public enum c {
    BOOLEAN(l.BOOLEAN, TypedValues.Custom.S_BOOLEAN, "Z", "java.lang.Boolean"),
    CHAR(l.CHAR, "char", "C", "java.lang.Character"),
    BYTE(l.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(l.SHORT, "short", ExifInterface.LATITUDE_SOUTH, "java.lang.Short"),
    INT(l.INT, "int", "I", "java.lang.Integer"),
    FLOAT(l.FLOAT, TypedValues.Custom.S_FLOAT, "F", "java.lang.Float"),
    LONG(l.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(l.DOUBLE, "double", "D", "java.lang.Double");


    /* renamed from: n, reason: collision with root package name */
    public static final HashSet f15656n = new HashSet();

    /* renamed from: p, reason: collision with root package name */
    public static final HashMap f15657p = new HashMap();

    /* renamed from: q, reason: collision with root package name */
    public static final EnumMap f15658q = new EnumMap(l.class);

    /* renamed from: r, reason: collision with root package name */
    public static final HashMap f15659r = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final l f15661a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15662b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15663c;

    /* renamed from: d, reason: collision with root package name */
    public final lb.c f15664d;

    static {
        for (c cVar : values()) {
            f15656n.add(cVar.t());
            HashMap map = f15657p;
            String str = cVar.f15662b;
            if (str == null) {
                n(11);
                throw null;
            }
            map.put(str, cVar);
            f15658q.put((EnumMap) cVar.r(), (l) cVar);
            f15659r.put(cVar.q(), cVar);
        }
    }

    c(l lVar, String str, String str2, String str3) {
        if (lVar == null) {
            n(6);
            throw null;
        }
        this.f15661a = lVar;
        this.f15662b = str;
        this.f15663c = str2;
        this.f15664d = new lb.c(str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void n(int r7) {
        /*
            r0 = 4
            r1 = 2
            if (r7 == r1) goto Lc
            if (r7 == r0) goto Lc
            switch(r7) {
                case 10: goto Lc;
                case 11: goto Lc;
                case 12: goto Lc;
                case 13: goto Lc;
                default: goto L9;
            }
        L9:
            java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto Le
        Lc:
            java.lang.String r2 = "@NotNull method %s.%s must not return null"
        Le:
            if (r7 == r1) goto L17
            if (r7 == r0) goto L17
            switch(r7) {
                case 10: goto L17;
                case 11: goto L17;
                case 12: goto L17;
                case 13: goto L17;
                default: goto L15;
            }
        L15:
            r3 = 3
            goto L18
        L17:
            r3 = 2
        L18:
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"
            r5 = 0
            switch(r7) {
                case 1: goto L3c;
                case 2: goto L39;
                case 3: goto L34;
                case 4: goto L39;
                case 5: goto L2f;
                case 6: goto L2a;
                case 7: goto L3c;
                case 8: goto L2f;
                case 9: goto L25;
                case 10: goto L39;
                case 11: goto L39;
                case 12: goto L39;
                case 13: goto L39;
                default: goto L20;
            }
        L20:
            java.lang.String r6 = "className"
            r3[r5] = r6
            goto L40
        L25:
            java.lang.String r6 = "wrapperClassName"
            r3[r5] = r6
            goto L40
        L2a:
            java.lang.String r6 = "primitiveType"
            r3[r5] = r6
            goto L40
        L2f:
            java.lang.String r6 = "desc"
            r3[r5] = r6
            goto L40
        L34:
            java.lang.String r6 = "type"
            r3[r5] = r6
            goto L40
        L39:
            r3[r5] = r4
            goto L40
        L3c:
            java.lang.String r6 = "name"
            r3[r5] = r6
        L40:
            java.lang.String r5 = "get"
            r6 = 1
            if (r7 == r1) goto L61
            if (r7 == r0) goto L61
            switch(r7) {
                case 10: goto L5c;
                case 11: goto L57;
                case 12: goto L52;
                case 13: goto L4d;
                default: goto L4a;
            }
        L4a:
            r3[r6] = r4
            goto L63
        L4d:
            java.lang.String r4 = "getWrapperFqName"
            r3[r6] = r4
            goto L63
        L52:
            java.lang.String r4 = "getDesc"
            r3[r6] = r4
            goto L63
        L57:
            java.lang.String r4 = "getJavaKeywordName"
            r3[r6] = r4
            goto L63
        L5c:
            java.lang.String r4 = "getPrimitiveType"
            r3[r6] = r4
            goto L63
        L61:
            r3[r6] = r5
        L63:
            switch(r7) {
                case 1: goto L75;
                case 2: goto L77;
                case 3: goto L75;
                case 4: goto L77;
                case 5: goto L70;
                case 6: goto L6b;
                case 7: goto L6b;
                case 8: goto L6b;
                case 9: goto L6b;
                case 10: goto L77;
                case 11: goto L77;
                case 12: goto L77;
                case 13: goto L77;
                default: goto L66;
            }
        L66:
            java.lang.String r4 = "isWrapperClassName"
            r3[r1] = r4
            goto L77
        L6b:
            java.lang.String r4 = "<init>"
            r3[r1] = r4
            goto L77
        L70:
            java.lang.String r4 = "getByDesc"
            r3[r1] = r4
            goto L77
        L75:
            r3[r1] = r5
        L77:
            java.lang.String r2 = java.lang.String.format(r2, r3)
            if (r7 == r1) goto L88
            if (r7 == r0) goto L88
            switch(r7) {
                case 10: goto L88;
                case 11: goto L88;
                case 12: goto L88;
                case 13: goto L88;
                default: goto L82;
            }
        L82:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>(r2)
            goto L8d
        L88:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>(r2)
        L8d:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: tb.c.n(int):void");
    }

    public static c o(String str) {
        c cVar = (c) f15657p.get(str);
        if (cVar != null) {
            return cVar;
        }
        throw new AssertionError("Non-primitive type name passed: ".concat(str));
    }

    public final String q() {
        String str = this.f15663c;
        if (str != null) {
            return str;
        }
        n(12);
        throw null;
    }

    public final l r() {
        l lVar = this.f15661a;
        if (lVar != null) {
            return lVar;
        }
        n(10);
        throw null;
    }

    public final lb.c t() {
        lb.c cVar = this.f15664d;
        if (cVar != null) {
            return cVar;
        }
        n(13);
        throw null;
    }
}
