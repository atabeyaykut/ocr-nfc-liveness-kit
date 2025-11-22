package ng;

import j7.p;
import java.util.ArrayList;
import java.util.List;
import m9.n;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.extension.BaseUrlExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginFail;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceListExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceList;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceListAPI;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceBaseUrl;
import ud.c0;
import ud.d0;

/* loaded from: classes3.dex */
public final class l extends gf.e<a, Result<List<? extends SearchServiceContent>>> {

    /* renamed from: b, reason: collision with root package name */
    public final h f10994b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f10995c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f10996a;

        public a(String query) {
            kotlin.jvm.internal.h.f(query, "query");
            this.f10996a = query;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && kotlin.jvm.internal.h.a(this.f10996a, ((a) obj).f10996a);
        }

        public final int hashCode() {
            return this.f10996a.hashCode();
        }

        public final String toString() {
            return android.support.v4.media.a.h(new StringBuilder("Params(query="), this.f10996a, ')');
        }
    }

    public l(h searchRepository) {
        kotlin.jvm.internal.h.f(searchRepository, "searchRepository");
        this.f10994b = searchRepository;
        this.f10995c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f10995c;
    }

    @Override // gf.e
    public final Object c(a aVar, p9.d<? super Result<List<? extends SearchServiceContent>>> dVar) {
        Result errorResult;
        String query = aVar.f10996a;
        h hVar = this.f10994b;
        hVar.getClass();
        kotlin.jvm.internal.h.f(query, "query");
        try {
            gf.b bVar = hVar.f10962e;
            if (bVar == null) {
                kotlin.jvm.internal.h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                return new ErrorResult(new NetworkErrorException());
            }
            d0 d0Var = hVar.f10958a;
            if (d0Var == null) {
                kotlin.jvm.internal.h.n("mApiClient");
                throw null;
            }
            Object objB = d0Var.b(SearchServiceListAPI.class);
            kotlin.jvm.internal.h.e(objB, "mApiClient.create(Search…rviceListAPI::class.java)");
            SearchServiceListAPI searchServiceListAPI = (SearchServiceListAPI) objB;
            String str = hVar.f10959b;
            if (str == null) {
                kotlin.jvm.internal.h.n("mAppVersion");
                throw null;
            }
            String str2 = hVar.f10961d;
            if (str2 == null) {
                kotlin.jvm.internal.h.n("mLanguage");
                throw null;
            }
            String str3 = hVar.f10960c;
            if (str3 == null) {
                kotlin.jvm.internal.h.n("mAppMode");
                throw null;
            }
            try {
                c0<SearchServiceList> response = searchServiceListAPI.searchService(true, query, str, "android", str2, str3).execute();
                kotlin.jvm.internal.h.e(response, "response");
                errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
            } catch (Exception e10) {
                e10.printStackTrace();
                errorResult = new ErrorResult(e10);
            }
            if (!(errorResult instanceof Success)) {
                if (errorResult instanceof ErrorResult) {
                    return new ErrorResult(new ServiceErrorException());
                }
                throw new p();
            }
            ServiceResult<SearchServiceList> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((SearchServiceList) ((Success) errorResult).getData());
            if (!(serviceResultCompleteRequest instanceof SuccessResult)) {
                return serviceResultCompleteRequest instanceof LoginFail ? new ErrorResult(new LoginException()) : serviceResultCompleteRequest instanceof EmptyResult ? new ErrorResult(new EmptyListException()) : new ErrorResult(new ServiceErrorException());
            }
            String baseUrl = ((SearchServiceList) ((Success) errorResult).getData()).getSearchServiceData().getBaseUrl();
            List<ServiceBaseUrl> baseUrls = ((SearchServiceList) ((Success) errorResult).getData()).getSearchServiceData().getBaseUrls();
            List<SearchServiceContent> content = ((SearchServiceList) ((Success) errorResult).getData()).getSearchServiceData().getContent();
            ArrayList arrayList = new ArrayList(n.Q0(content));
            for (SearchServiceContent searchServiceContent : content) {
                searchServiceContent.setIconUrl(baseUrl + searchServiceContent.getIconName() + ".webp");
                searchServiceContent.setBaseUrl(BaseUrlExtensionKt.prepareBaseUrl(baseUrls, searchServiceContent.getBaseUrlCode()));
                arrayList.add(searchServiceContent);
            }
            return new Success(arrayList);
        } catch (Exception e11) {
            e11.printStackTrace();
            return new ErrorResult(new ServiceErrorException());
        }
    }
}
