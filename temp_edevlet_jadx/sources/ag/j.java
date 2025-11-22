package ag;

import androidx.annotation.Nullable;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

/* loaded from: classes3.dex */
public interface j {
    j favoriteListener(l<? super ServiceModelRealm, m> lVar);

    j id(@Nullable Number... numberArr);

    j listener(l<? super ServiceModelRealm, m> lVar);

    j service(ServiceModelRealm serviceModelRealm);

    j unFavoriteListener(l<? super ServiceModelRealm, m> lVar);
}
