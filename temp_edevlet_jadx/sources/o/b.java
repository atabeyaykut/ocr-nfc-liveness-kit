package o;

import kotlin.jvm.internal.j;
import rc.t;

/* loaded from: classes.dex */
public final class b extends j implements x9.a<t> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f11021a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar) {
        super(0);
        this.f11021a = cVar;
    }

    @Override // x9.a
    public final t invoke() {
        String strL = this.f11021a.f.l("Content-Type");
        if (strL == null) {
            return null;
        }
        t.f.getClass();
        try {
            return t.a.a(strL);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
