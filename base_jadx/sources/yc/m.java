package yc;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class m extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f19591e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ List f19592g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(String str, f fVar, int r32, List list) {
        super(str, true);
        this.f19591e = fVar;
        this.f = r32;
        this.f19592g = list;
    }

    @Override // uc.a
    public final long a() {
        c5.v vVar = this.f19591e.f19552m;
        List requestHeaders = this.f19592g;
        vVar.getClass();
        kotlin.jvm.internal.h.f(requestHeaders, "requestHeaders");
        try {
            this.f19591e.B.g(this.f, b.CANCEL);
            synchronized (this.f19591e) {
                this.f19591e.D.remove(Integer.valueOf(this.f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
