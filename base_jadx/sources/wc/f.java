package wc;

import java.io.IOException;
import java.util.List;
import rc.b0;
import rc.s;
import rc.x;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public int f18868a;

    /* renamed from: b, reason: collision with root package name */
    public final vc.e f18869b;

    /* renamed from: c, reason: collision with root package name */
    public final List<s> f18870c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18871d;

    /* renamed from: e, reason: collision with root package name */
    public final vc.c f18872e;
    public final x f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18873g;

    /* renamed from: h, reason: collision with root package name */
    public final int f18874h;

    /* renamed from: i, reason: collision with root package name */
    public final int f18875i;

    /* JADX WARN: Multi-variable type inference failed */
    public f(vc.e call, List<? extends s> interceptors, int r42, vc.c cVar, x request, int r72, int r82, int r92) {
        kotlin.jvm.internal.h.f(call, "call");
        kotlin.jvm.internal.h.f(interceptors, "interceptors");
        kotlin.jvm.internal.h.f(request, "request");
        this.f18869b = call;
        this.f18870c = interceptors;
        this.f18871d = r42;
        this.f18872e = cVar;
        this.f = request;
        this.f18873g = r72;
        this.f18874h = r82;
        this.f18875i = r92;
    }

    public static f b(f fVar, int r10, vc.c cVar, x xVar, int r13) {
        if ((r13 & 1) != 0) {
            r10 = fVar.f18871d;
        }
        int r32 = r10;
        if ((r13 & 2) != 0) {
            cVar = fVar.f18872e;
        }
        vc.c cVar2 = cVar;
        if ((r13 & 4) != 0) {
            xVar = fVar.f;
        }
        x request = xVar;
        int r6 = (r13 & 8) != 0 ? fVar.f18873g : 0;
        int r72 = (r13 & 16) != 0 ? fVar.f18874h : 0;
        int r82 = (r13 & 32) != 0 ? fVar.f18875i : 0;
        fVar.getClass();
        kotlin.jvm.internal.h.f(request, "request");
        return new f(fVar.f18869b, fVar.f18870c, r32, cVar2, request, r6, r72, r82);
    }

    public final vc.i a() {
        vc.c cVar = this.f18872e;
        if (cVar != null) {
            return cVar.f18476b;
        }
        return null;
    }

    public final b0 c(x request) throws IOException {
        kotlin.jvm.internal.h.f(request, "request");
        List<s> list = this.f18870c;
        int size = list.size();
        int r42 = this.f18871d;
        if (!(r42 < size)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.f18868a++;
        vc.c cVar = this.f18872e;
        if (cVar != null) {
            if (!cVar.f18479e.b(request.f14598b)) {
                throw new IllegalStateException(("network interceptor " + list.get(r42 - 1) + " must retain the same host and port").toString());
            }
            if (!(this.f18868a == 1)) {
                throw new IllegalStateException(("network interceptor " + list.get(r42 - 1) + " must call proceed() exactly once").toString());
            }
        }
        int r72 = r42 + 1;
        f fVarB = b(this, r72, null, request, 58);
        s sVar = list.get(r42);
        b0 b0VarA = sVar.a(fVarB);
        if (b0VarA == null) {
            throw new NullPointerException("interceptor " + sVar + " returned null");
        }
        if (cVar != null) {
            if (!(r72 >= list.size() || fVarB.f18868a == 1)) {
                throw new IllegalStateException(("network interceptor " + sVar + " must call proceed() exactly once").toString());
            }
        }
        if (b0VarA.f14391h != null) {
            return b0VarA;
        }
        throw new IllegalStateException(("interceptor " + sVar + " returned a response with no body").toString());
    }
}
