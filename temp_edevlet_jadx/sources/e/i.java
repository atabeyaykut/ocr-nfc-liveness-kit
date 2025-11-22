package e;

import android.graphics.Bitmap;
import coil.request.RequestDelegate;

@r9.e(c = "coil.RealImageLoader", f = "RealImageLoader.kt", l = {159, 170, 174}, m = "executeMain")
/* loaded from: classes.dex */
public final class i extends r9.c {

    /* renamed from: a, reason: collision with root package name */
    public h f5003a;

    /* renamed from: b, reason: collision with root package name */
    public RequestDelegate f5004b;

    /* renamed from: c, reason: collision with root package name */
    public p.g f5005c;

    /* renamed from: d, reason: collision with root package name */
    public b f5006d;

    /* renamed from: e, reason: collision with root package name */
    public Bitmap f5007e;
    public /* synthetic */ Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ h f5008g;

    /* renamed from: h, reason: collision with root package name */
    public int f5009h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(h hVar, p9.d<? super i> dVar) {
        super(dVar);
        this.f5008g = hVar;
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.f5009h |= Integer.MIN_VALUE;
        return h.c(this.f5008g, null, this);
    }
}
