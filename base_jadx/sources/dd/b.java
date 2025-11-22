package dd;

import m9.x;
import rc.q;
import rc.s;

/* loaded from: classes2.dex */
public final class b implements s {

    /* renamed from: c, reason: collision with root package name */
    public final a f4862c = a.f4863a;

    /* renamed from: a, reason: collision with root package name */
    public volatile x f4860a = x.f10175a;

    /* renamed from: b, reason: collision with root package name */
    public volatile int f4861b = 1;

    public interface a {

        /* renamed from: a, reason: collision with root package name */
        public static final dd.a f4863a = new dd.a();

        void a(String str);
    }

    public b(int r12) {
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ee A[LOOP:0: B:43:0x00ec->B:44:0x00ee, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019a  */
    @Override // rc.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final rc.b0 a(wc.f r25) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dd.b.a(wc.f):rc.b0");
    }

    public final void b(q qVar, int r52) {
        this.f4860a.contains(qVar.o(r52));
        String strW = qVar.w(r52);
        this.f4862c.a(qVar.o(r52) + ": " + strW);
    }
}
