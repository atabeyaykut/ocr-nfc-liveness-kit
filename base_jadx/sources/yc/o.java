package yc;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class o extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f19595e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(String str, f fVar) {
        super(str, true);
        this.f19595e = fVar;
    }

    @Override // uc.a
    public final long a() {
        f fVar = this.f19595e;
        fVar.getClass();
        try {
            fVar.B.f(2, 0, false);
            return -1L;
        } catch (IOException e10) {
            fVar.b(e10);
            return -1L;
        }
    }
}
