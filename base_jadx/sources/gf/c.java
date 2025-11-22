package gf;

import ag.i;
import android.content.Context;
import ng.h;
import sf.m;
import zg.u;

/* loaded from: classes3.dex */
public final class c implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6707a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6708b;

    public /* synthetic */ c(int r12, Object obj) {
        this.f6707a = r12;
        this.f6708b = obj;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f6707a;
        Object obj = this.f6708b;
        switch (r02) {
            case 0:
                return new b((Context) ((k9.a) obj).get());
            case 1:
                return new m((sf.a) ((k9.a) obj).get());
            case 2:
                return new uf.f((uf.b) ((k9.a) obj).get());
            case 3:
                return new i((ag.b) ((k9.a) obj).get());
            case 4:
                return new bg.d((bg.a) ((k9.a) obj).get());
            case 5:
                return new ng.a((h) ((k9.a) obj).get());
            case 6:
                return new yg.i((yg.b) ((k9.a) obj).get());
            case 7:
                return new zg.f((zg.i) ((k9.a) obj).get());
            case 8:
                return new u((zg.i) ((k9.a) obj).get());
            case 9:
                return new hh.c((hh.e) ((k9.a) obj).get());
            case 10:
                return new hh.h((hh.e) ((k9.a) obj).get());
            case 11:
                return new kh.h((kh.c) ((k9.a) obj).get());
            default:
                ((vd.d) obj).getClass();
                return "5057";
        }
    }
}
