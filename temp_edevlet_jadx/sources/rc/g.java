package rc;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class g extends kotlin.jvm.internal.j implements x9.a<List<? extends X509Certificate>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f14447a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f14448b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f14449c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(f fVar, List list, String str) {
        super(0);
        this.f14447a = fVar;
        this.f14448b = list;
        this.f14449c = str;
    }

    @Override // x9.a
    public final List<? extends X509Certificate> invoke() {
        List listA;
        cd.c cVar = this.f14447a.f14440b;
        List list = this.f14448b;
        if (cVar != null && (listA = cVar.a(this.f14449c, list)) != null) {
            list = listA;
        }
        List<Certificate> list2 = list;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
        for (Certificate certificate : list2) {
            if (certificate == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
