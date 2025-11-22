package sg;

import androidx.annotation.Nullable;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import x9.l;
import x9.q;

/* loaded from: classes3.dex */
public interface c {
    c addressListener(q<? super String, ? super String, ? super String, m> qVar);

    /* renamed from: id */
    c mo337id(@Nullable Number... numberArr);

    c institutionContact(InstitutionContactModelRealm institutionContactModelRealm);

    c phoneListener(l<? super String, m> lVar);

    c websiteListener(l<? super String, m> lVar);
}
