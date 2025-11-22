package ma;

/* loaded from: classes2.dex */
public final class t {

    public /* synthetic */ class a extends kotlin.jvm.internal.f implements x9.l<lb.b, lb.b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10245a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "getOuterClassId";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return kotlin.jvm.internal.w.a(lb.b.class);
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
        }

        @Override // x9.l
        public final lb.b invoke(lb.b bVar) {
            lb.b p02 = bVar;
            kotlin.jvm.internal.h.f(p02, "p0");
            return p02.g();
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<lb.b, Integer> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f10246a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final Integer invoke(lb.b bVar) {
            lb.b it = bVar;
            kotlin.jvm.internal.h.f(it, "it");
            return 0;
        }
    }

    public static final e a(b0 b0Var, lb.b classId) {
        kotlin.jvm.internal.h.f(b0Var, "<this>");
        kotlin.jvm.internal.h.f(classId, "classId");
        g gVarB = b(b0Var, classId);
        if (gVarB instanceof e) {
            return (e) gVarB;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final ma.g b(ma.b0 r10, lb.b r11) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ma.t.b(ma.b0, lb.b):ma.g");
    }

    public static final e c(b0 b0Var, lb.b classId, d0 notFoundClasses) {
        kotlin.jvm.internal.h.f(b0Var, "<this>");
        kotlin.jvm.internal.h.f(classId, "classId");
        kotlin.jvm.internal.h.f(notFoundClasses, "notFoundClasses");
        e eVarA = a(b0Var, classId);
        return eVarA != null ? eVarA : notFoundClasses.a(classId, b8.f.Z(lc.w.c1(lc.w.Z0(lc.q.R0(a.f10245a, classId), b.f10246a))));
    }
}
