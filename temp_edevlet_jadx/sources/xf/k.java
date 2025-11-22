package xf;

import androidx.annotation.Nullable;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public interface k {
    k favoriteListener(x9.l<? super ServiceModelRealm, l9.m> lVar);

    /* renamed from: id */
    k mo135id(@Nullable Number... numberArr);

    k listener(x9.l<? super ServiceModelRealm, l9.m> lVar);

    k service(ServiceModelRealm serviceModelRealm);

    k unFavoriteListener(x9.l<? super ServiceModelRealm, l9.m> lVar);
}
