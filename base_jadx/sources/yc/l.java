package yc;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class l extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f19589e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ List f19590g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(String str, f fVar, int r32, List list, boolean z10) {
        super(str, true);
        this.f19589e = fVar;
        this.f = r32;
        this.f19590g = list;
    }

    @Override // uc.a
    public final long a() {
        c5.v vVar = this.f19589e.f19552m;
        List responseHeaders = this.f19590g;
        vVar.getClass();
        kotlin.jvm.internal.h.f(responseHeaders, "responseHeaders");
        try {
            this.f19589e.B.g(this.f, b.CANCEL);
            synchronized (this.f19589e) {
                this.f19589e.D.remove(Integer.valueOf(this.f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
