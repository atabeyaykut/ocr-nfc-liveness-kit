package r9;

import p9.e;
import p9.f;

/* loaded from: classes2.dex */
public abstract class c extends a {
    private final p9.f _context;
    private transient p9.d<Object> intercepted;

    public c(p9.d<Object> dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }

    public c(p9.d<Object> dVar, p9.f fVar) {
        super(dVar);
        this._context = fVar;
    }

    @Override // p9.d
    public p9.f getContext() {
        p9.f fVar = this._context;
        kotlin.jvm.internal.h.c(fVar);
        return fVar;
    }

    public final p9.d<Object> intercepted() {
        p9.d<Object> dVarInterceptContinuation = this.intercepted;
        if (dVarInterceptContinuation == null) {
            p9.f context = getContext();
            int r12 = p9.e.f12867e0;
            p9.e eVar = (p9.e) context.get(e.a.f12868a);
            if (eVar == null || (dVarInterceptContinuation = eVar.interceptContinuation(this)) == null) {
                dVarInterceptContinuation = this;
            }
            this.intercepted = dVarInterceptContinuation;
        }
        return dVarInterceptContinuation;
    }

    @Override // r9.a
    public void releaseIntercepted() {
        p9.d<?> dVar = this.intercepted;
        if (dVar != null && dVar != this) {
            p9.f context = getContext();
            int r22 = p9.e.f12867e0;
            f.b bVar = context.get(e.a.f12868a);
            kotlin.jvm.internal.h.c(bVar);
            ((p9.e) bVar).releaseInterceptedContinuation(dVar);
        }
        this.intercepted = b.f14352a;
    }
}
