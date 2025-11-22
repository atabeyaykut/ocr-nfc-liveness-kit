package yc;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class k extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f19586e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ed.e f19587g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f19588h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(String str, f fVar, int r32, ed.e eVar, int r52, boolean z10) {
        super(str, true);
        this.f19586e = fVar;
        this.f = r32;
        this.f19587g = eVar;
        this.f19588h = r52;
    }

    @Override // uc.a
    public final long a() {
        try {
            c5.v vVar = this.f19586e.f19552m;
            ed.e source = this.f19587g;
            int r22 = this.f19588h;
            vVar.getClass();
            kotlin.jvm.internal.h.f(source, "source");
            source.skip(r22);
            this.f19586e.B.g(this.f, b.CANCEL);
            synchronized (this.f19586e) {
                this.f19586e.D.remove(Integer.valueOf(this.f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
