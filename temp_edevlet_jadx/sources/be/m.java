package be;

import p4.c7;
import p4.d8;
import r0.p;

/* loaded from: classes3.dex */
public final class m implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1261a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1262b;

    public /* synthetic */ m(int r12, Object obj) {
        this.f1261a = r12;
        this.f1262b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f1261a;
        Object obj = this.f1262b;
        switch (r02) {
            case 0:
                c7 c7Var = (c7) obj;
                return new j((h) pVar, (n) ((k9.a) c7Var.f12289a).get(), (a) ((k9.a) c7Var.f12290b).get());
            default:
                return new ch.l((ch.k) pVar, (ch.o) ((k9.a) ((d8) obj).f12311a).get());
        }
    }
}
