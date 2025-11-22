package vc;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import rc.p;

/* loaded from: classes2.dex */
public final class h extends kotlin.jvm.internal.j implements x9.a<List<? extends X509Certificate>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f18524a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar) {
        super(0);
        this.f18524a = iVar;
    }

    @Override // x9.a
    public final List<? extends X509Certificate> invoke() {
        p pVar = this.f18524a.f18527d;
        kotlin.jvm.internal.h.c(pVar);
        List<Certificate> listA = pVar.a();
        ArrayList arrayList = new ArrayList(m9.n.Q0(listA));
        for (Certificate certificate : listA) {
            if (certificate == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
