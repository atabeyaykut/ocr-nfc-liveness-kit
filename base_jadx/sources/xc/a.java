package xc;

import ed.g;
import java.io.IOException;
import kotlin.jvm.internal.h;
import mc.n;
import rc.q;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public long f19202a = 262144;

    /* renamed from: b, reason: collision with root package name */
    public final g f19203b;

    public a(g gVar) {
        this.f19203b = gVar;
    }

    public final q a() throws IOException {
        q.a aVar = new q.a();
        while (true) {
            String strN = this.f19203b.N(this.f19202a);
            this.f19202a -= strN.length();
            if (strN.length() == 0) {
                return aVar.c();
            }
            int r22 = n.M(strN, ':', 1, false, 4);
            if (r22 != -1) {
                String strSubstring = strN.substring(0, r22);
                h.e(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String strSubstring2 = strN.substring(r22 + 1);
                h.e(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                aVar.b(strSubstring, strSubstring2);
            } else {
                if (strN.charAt(0) == ':') {
                    strN = strN.substring(1);
                    h.e(strN, "(this as java.lang.String).substring(startIndex)");
                }
                aVar.b("", strN);
            }
        }
    }
}
