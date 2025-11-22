package va;

import va.z;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: d, reason: collision with root package name */
    public static final s f18370d;

    /* renamed from: a, reason: collision with root package name */
    public final v f18371a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<lb.c, b0> f18372b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18373c;

    public /* synthetic */ class a extends kotlin.jvm.internal.f implements x9.l<lb.c, b0> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f18374a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "getDefaultReportLevelForAnnotation";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return kotlin.jvm.internal.w.f8976a.c(q.class, "compiler.common.jvm");
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;";
        }

        @Override // x9.l
        public final b0 invoke(lb.c cVar) {
            lb.c p02 = cVar;
            kotlin.jvm.internal.h.f(p02, "p0");
            lb.c cVar2 = q.f18362a;
            z.f18412a.getClass();
            a0 configuredReportLevels = z.a.f18414b;
            l9.d dVar = new l9.d(7, 20);
            kotlin.jvm.internal.h.f(configuredReportLevels, "configuredReportLevels");
            b0 b0Var = (b0) configuredReportLevels.f18319c.invoke(p02);
            if (b0Var != null) {
                return b0Var;
            }
            a0 a0Var = q.f18364c;
            a0Var.getClass();
            r rVar = (r) a0Var.f18319c.invoke(p02);
            if (rVar == null) {
                return b0.IGNORE;
            }
            l9.d dVar2 = rVar.f18368b;
            return (dVar2 == null || dVar2.f9581d - dVar.f9581d > 0) ? rVar.f18367a : rVar.f18369c;
        }
    }

    static {
        lb.c cVar = q.f18362a;
        l9.d configuredKotlinVersion = l9.d.f9577e;
        kotlin.jvm.internal.h.f(configuredKotlinVersion, "configuredKotlinVersion");
        r rVar = q.f18365d;
        l9.d dVar = rVar.f18368b;
        b0 globalReportLevel = (dVar == null || dVar.f9581d - configuredKotlinVersion.f9581d > 0) ? rVar.f18367a : rVar.f18369c;
        kotlin.jvm.internal.h.f(globalReportLevel, "globalReportLevel");
        f18370d = new s(new v(globalReportLevel, globalReportLevel == b0.WARN ? null : globalReportLevel), a.f18374a);
    }

    public s(v vVar, a getReportLevelForAnnotation) {
        kotlin.jvm.internal.h.f(getReportLevelForAnnotation, "getReportLevelForAnnotation");
        this.f18371a = vVar;
        this.f18372b = getReportLevelForAnnotation;
        this.f18373c = vVar.f18380d || getReportLevelForAnnotation.invoke(q.f18362a) == b0.IGNORE;
    }

    public final String toString() {
        return "JavaTypeEnhancementState(jsr305=" + this.f18371a + ", getReportLevelForAnnotation=" + this.f18372b + ')';
    }
}
