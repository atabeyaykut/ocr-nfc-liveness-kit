package nc;

import p9.e;
import p9.f;

/* loaded from: classes2.dex */
public final class w {

    public static final class a extends kotlin.jvm.internal.j implements x9.p<p9.f, f.b, p9.f> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10845a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final p9.f mo7invoke(p9.f fVar, f.b bVar) {
            p9.f fVar2 = fVar;
            f.b bVarT = bVar;
            if (bVarT instanceof v) {
                bVarT = ((v) bVarT).t();
            }
            return fVar2.plus(bVarT);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.p<p9.f, f.b, p9.f> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ kotlin.jvm.internal.v<p9.f> f10846a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f10847b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.jvm.internal.v<p9.f> vVar, boolean z10) {
            super(2);
            this.f10846a = vVar;
            this.f10847b = z10;
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [T, p9.f] */
        @Override // x9.p
        /* renamed from: invoke */
        public final p9.f mo7invoke(p9.f fVar, f.b bVar) {
            p9.f fVar2 = fVar;
            f.b bVar2 = bVar;
            boolean z10 = bVar2 instanceof v;
            p9.f fVarE = bVar2;
            if (z10) {
                kotlin.jvm.internal.v<p9.f> vVar = this.f10846a;
                if (vVar.f8975a.get(bVar2.getKey()) == null) {
                    v vVar2 = (v) bVar2;
                    fVarE = vVar2;
                    if (this.f10847b) {
                        fVarE = vVar2.t();
                    }
                } else {
                    vVar.f8975a = vVar.f8975a.minusKey(bVar2.getKey());
                    fVarE = ((v) bVar2).E();
                }
            }
            return fVar2.plus(fVarE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final p9.f a(p9.f fVar, p9.f fVar2, boolean z10) {
        Boolean bool = Boolean.FALSE;
        x xVar = x.f10850a;
        boolean zBooleanValue = ((Boolean) fVar.fold(bool, xVar)).booleanValue();
        boolean zBooleanValue2 = ((Boolean) fVar2.fold(bool, xVar)).booleanValue();
        if (!zBooleanValue && !zBooleanValue2) {
            return fVar.plus(fVar2);
        }
        kotlin.jvm.internal.v vVar = new kotlin.jvm.internal.v();
        vVar.f8975a = fVar2;
        p9.g gVar = p9.g.f12870a;
        p9.f fVar3 = (p9.f) fVar.fold(gVar, new b(vVar, z10));
        if (zBooleanValue2) {
            vVar.f8975a = ((p9.f) vVar.f8975a).fold(gVar, a.f10845a);
        }
        return fVar3.plus((p9.f) vVar.f8975a);
    }

    public static final p9.f b(a0 a0Var, p9.f fVar) {
        p9.f fVarA = a(a0Var.getCoroutineContext(), fVar, true);
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        return (fVarA == cVar || fVarA.get(e.a.f12868a) != null) ? fVarA : fVarA.plus(cVar);
    }

    public static final z1<?> c(p9.d<?> dVar, p9.f fVar, Object obj) {
        z1<?> z1Var = null;
        if (!(dVar instanceof r9.d)) {
            return null;
        }
        if (!(fVar.get(a2.f10781a) != null)) {
            return null;
        }
        r9.d callerFrame = (r9.d) dVar;
        while (true) {
            if ((callerFrame instanceof h0) || (callerFrame = callerFrame.getCallerFrame()) == null) {
                break;
            }
            if (callerFrame instanceof z1) {
                z1Var = (z1) callerFrame;
                break;
            }
        }
        if (z1Var != null) {
            z1Var.f10862d.set(new l9.g<>(fVar, obj));
        }
        return z1Var;
    }
}
