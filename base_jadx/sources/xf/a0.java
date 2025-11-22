package xf;

import androidx.annotation.Nullable;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public interface a0 {
    a0 favoriteListener(x9.l<? super ServiceModelRealm, l9.m> lVar);

    /* renamed from: id */
    a0 mo234id(@Nullable Number... numberArr);

    a0 listener(x9.l<? super ServiceModelRealm, l9.m> lVar);

    a0 service(ServiceModelRealm serviceModelRealm);

    a0 unFavoriteListener(x9.l<? super ServiceModelRealm, l9.m> lVar);
}
