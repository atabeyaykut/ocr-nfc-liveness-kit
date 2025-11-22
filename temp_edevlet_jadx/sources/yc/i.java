package yc;

import java.io.IOException;
import yc.f;

/* loaded from: classes2.dex */
public final class i extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f.d f19582e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f19583g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(String str, f.d dVar, int r32, int r42) {
        super(str, true);
        this.f19582e = dVar;
        this.f = r32;
        this.f19583g = r42;
    }

    @Override // uc.a
    public final long a() {
        f fVar = f.this;
        int r12 = this.f;
        int r22 = this.f19583g;
        fVar.getClass();
        try {
            fVar.B.f(r12, r22, true);
            return -1L;
        } catch (IOException e10) {
            fVar.b(e10);
            return -1L;
        }
    }
}
