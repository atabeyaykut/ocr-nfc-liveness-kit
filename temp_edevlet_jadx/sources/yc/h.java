package yc;

import java.io.IOException;
import java.util.List;
import yc.f;

/* loaded from: classes2.dex */
public final class h extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f19580e;
    public final /* synthetic */ f.d f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ List f19581g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(String str, r rVar, f.d dVar, List list) {
        super(str, true);
        this.f19580e = rVar;
        this.f = dVar;
        this.f19581g = list;
    }

    @Override // uc.a
    public final long a() {
        try {
            f.this.f19543b.b(this.f19580e);
            return -1L;
        } catch (IOException e10) {
            zc.h.f20045c.getClass();
            zc.h hVar = zc.h.f20043a;
            String str = "Http2Connection.Listener failure for " + f.this.f19545d;
            hVar.getClass();
            zc.h.i(4, str, e10);
            try {
                this.f19580e.c(b.PROTOCOL_ERROR, e10);
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }
}
