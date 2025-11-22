package nb;

import cc.e0;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.w;
import m9.x;
import ma.a1;
import nb.b;
import nb.c;

/* loaded from: classes2.dex */
public final class k implements j {
    public static final /* synthetic */ da.m<Object>[] W = {w.b(new kotlin.jvm.internal.l(w.a(k.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "withDefinedIn", "getWithDefinedIn()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "modifiers", "getModifiers()Ljava/util/Set;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "startFromName", "getStartFromName()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "debugMode", "getDebugMode()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "verbose", "getVerbose()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "unitReturnType", "getUnitReturnType()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "withoutReturnType", "getWithoutReturnType()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "enhancedTypes", "getEnhancedTypes()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderDefaultModality", "getRenderDefaultModality()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "receiverAfterName", "getReceiverAfterName()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), w.b(new kotlin.jvm.internal.l(w.a(k.class), "informativeErrorType", "getInformativeErrorType()Z"))};
    public final l A;
    public final l B;
    public final l C;
    public final l D;
    public final l E;
    public final l F;
    public final l G;
    public final l H;
    public final l I;
    public final l J;
    public final l K;
    public final l L;
    public final l M;
    public final l N;
    public final l O;
    public final l P;
    public final l Q;
    public final l R;
    public final l S;
    public final l T;
    public final l U;
    public final l V;

    /* renamed from: a, reason: collision with root package name */
    public boolean f10737a;

    /* renamed from: b, reason: collision with root package name */
    public final l f10738b = new l(b.c.f10696a, this);

    /* renamed from: c, reason: collision with root package name */
    public final l f10739c;

    /* renamed from: d, reason: collision with root package name */
    public final l f10740d;

    /* renamed from: e, reason: collision with root package name */
    public final l f10741e;
    public final l f;

    /* renamed from: g, reason: collision with root package name */
    public final l f10742g;

    /* renamed from: h, reason: collision with root package name */
    public final l f10743h;

    /* renamed from: i, reason: collision with root package name */
    public final l f10744i;

    /* renamed from: j, reason: collision with root package name */
    public final l f10745j;

    /* renamed from: k, reason: collision with root package name */
    public final l f10746k;

    /* renamed from: l, reason: collision with root package name */
    public final l f10747l;

    /* renamed from: m, reason: collision with root package name */
    public final l f10748m;

    /* renamed from: n, reason: collision with root package name */
    public final l f10749n;

    /* renamed from: o, reason: collision with root package name */
    public final l f10750o;

    /* renamed from: p, reason: collision with root package name */
    public final l f10751p;

    /* renamed from: q, reason: collision with root package name */
    public final l f10752q;

    /* renamed from: r, reason: collision with root package name */
    public final l f10753r;

    /* renamed from: s, reason: collision with root package name */
    public final l f10754s;

    /* renamed from: t, reason: collision with root package name */
    public final l f10755t;

    /* renamed from: u, reason: collision with root package name */
    public final l f10756u;

    /* renamed from: v, reason: collision with root package name */
    public final l f10757v;
    public final l w;

    /* renamed from: x, reason: collision with root package name */
    public final l f10758x;

    /* renamed from: y, reason: collision with root package name */
    public final l f10759y;

    /* renamed from: z, reason: collision with root package name */
    public final l f10760z;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<a1, String> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10761a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final String invoke(a1 a1Var) {
            a1 it = a1Var;
            kotlin.jvm.internal.h.f(it, "it");
            return "...";
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<e0, e0> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f10762a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final e0 invoke(e0 e0Var) {
            e0 it = e0Var;
            kotlin.jvm.internal.h.f(it, "it");
            return it;
        }
    }

    public k() {
        Boolean bool = Boolean.TRUE;
        this.f10739c = new l(bool, this);
        this.f10740d = new l(bool, this);
        this.f10741e = new l(i.f10720b, this);
        Boolean bool2 = Boolean.FALSE;
        this.f = new l(bool2, this);
        this.f10742g = new l(bool2, this);
        this.f10743h = new l(bool2, this);
        this.f10744i = new l(bool2, this);
        this.f10745j = new l(bool2, this);
        this.f10746k = new l(bool, this);
        this.f10747l = new l(bool2, this);
        this.f10748m = new l(bool2, this);
        this.f10749n = new l(bool2, this);
        this.f10750o = new l(bool, this);
        this.f10751p = new l(bool, this);
        this.f10752q = new l(bool2, this);
        this.f10753r = new l(bool2, this);
        this.f10754s = new l(bool2, this);
        this.f10755t = new l(bool2, this);
        this.f10756u = new l(bool2, this);
        this.f10757v = new l(bool2, this);
        this.w = new l(bool2, this);
        this.f10758x = new l(b.f10762a, this);
        this.f10759y = new l(a.f10761a, this);
        this.f10760z = new l(bool, this);
        this.A = new l(o.RENDER_OPEN, this);
        this.B = new l(c.l.a.f10709a, this);
        this.C = new l(r.f10776a, this);
        this.D = new l(p.ALL, this);
        this.E = new l(bool2, this);
        this.F = new l(bool2, this);
        this.G = new l(q.DEBUG, this);
        this.H = new l(bool2, this);
        this.I = new l(bool2, this);
        this.J = new l(x.f10175a, this);
        this.K = new l(m.f10764a, this);
        this.L = new l(null, this);
        this.M = new l(nb.a.NO_ARGUMENTS, this);
        this.N = new l(bool2, this);
        this.O = new l(bool, this);
        this.P = new l(bool, this);
        this.Q = new l(bool2, this);
        this.R = new l(bool, this);
        this.S = new l(bool, this);
        this.T = new l(bool2, this);
        this.U = new l(bool2, this);
        this.V = new l(bool, this);
    }

    @Override // nb.j
    public final void a() {
        da.m<Object> mVar = W[29];
        this.E.c(Boolean.TRUE, mVar);
    }

    @Override // nb.j
    public final void b() {
        da.m<Object> mVar = W[6];
        this.f10743h.c(Boolean.TRUE, mVar);
    }

    @Override // nb.j
    public final void c() {
        da.m<Object> mVar = W[30];
        this.F.c(Boolean.TRUE, mVar);
    }

    @Override // nb.j
    public final void d(nb.b bVar) {
        this.f10738b.c(bVar, W[0]);
    }

    @Override // nb.j
    public final void e(p pVar) {
        this.D.c(pVar, W[28]);
    }

    @Override // nb.j
    public final void f(Set<? extends i> set) {
        kotlin.jvm.internal.h.f(set, "<set-?>");
        this.f10741e.c(set, W[3]);
    }

    @Override // nb.j
    public final boolean g() {
        return ((Boolean) this.f10748m.b(W[11])).booleanValue();
    }

    @Override // nb.j
    public final void h(LinkedHashSet linkedHashSet) {
        this.K.c(linkedHashSet, W[35]);
    }

    @Override // nb.j
    public final void i() {
        da.m<Object> mVar = W[20];
        this.f10757v.c(Boolean.TRUE, mVar);
    }

    @Override // nb.j
    public final void j() {
        da.m<Object> mVar = W[4];
        this.f.c(Boolean.TRUE, mVar);
    }

    @Override // nb.j
    public final void k() {
        da.m<Object> mVar = W[1];
        this.f10739c.c(Boolean.FALSE, mVar);
    }

    @Override // nb.j
    public final Set<lb.c> l() {
        return (Set) this.K.b(W[35]);
    }

    @Override // nb.j
    public final boolean m() {
        return ((Boolean) this.f10743h.b(W[6])).booleanValue();
    }

    @Override // nb.j
    public final void n() {
        this.C.c(r.f10777b, W[27]);
    }

    @Override // nb.j
    public final void o() {
        da.m<Object> mVar = W[21];
        this.w.c(Boolean.TRUE, mVar);
    }

    public final nb.a p() {
        return (nb.a) this.M.b(W[37]);
    }
}
