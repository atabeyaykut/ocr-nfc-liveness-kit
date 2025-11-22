package uf;

import java.util.Comparator;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;

/* loaded from: classes3.dex */
public final class a<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t10, T t11) {
        return b8.f.q(Integer.valueOf(((InstitutionModelRealm) t10).getSectionCode()), Integer.valueOf(((InstitutionModelRealm) t11).getSectionCode()));
    }
}
