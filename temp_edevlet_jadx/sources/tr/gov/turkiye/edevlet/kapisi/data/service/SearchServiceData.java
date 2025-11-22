package tr.gov.turkiye.edevlet.kapisi.data.service;

import android.support.v4.media.a;
import androidx.camera.camera2.internal.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J3\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceData;", "", "baseUrl", "", "baseUrls", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "content", "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getBaseUrl", "()Ljava/lang/String;", "getBaseUrls", "()Ljava/util/List;", "getContent", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SearchServiceData {

    @k(name = "baseUrl")
    private final String baseUrl;

    @k(name = "serviceDomainURLs")
    private final List<ServiceBaseUrl> baseUrls;

    @k(name = "content")
    private final List<SearchServiceContent> content;

    public SearchServiceData(String baseUrl, List<ServiceBaseUrl> baseUrls, List<SearchServiceContent> content) {
        h.f(baseUrl, "baseUrl");
        h.f(baseUrls, "baseUrls");
        h.f(content, "content");
        this.baseUrl = baseUrl;
        this.baseUrls = baseUrls;
        this.content = content;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchServiceData copy$default(SearchServiceData searchServiceData, String str, List list, List list2, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            str = searchServiceData.baseUrl;
        }
        if ((r42 & 2) != 0) {
            list = searchServiceData.baseUrls;
        }
        if ((r42 & 4) != 0) {
            list2 = searchServiceData.content;
        }
        return searchServiceData.copy(str, list, list2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> component2() {
        return this.baseUrls;
    }

    public final List<SearchServiceContent> component3() {
        return this.content;
    }

    public final SearchServiceData copy(String baseUrl, List<ServiceBaseUrl> baseUrls, List<SearchServiceContent> content) {
        h.f(baseUrl, "baseUrl");
        h.f(baseUrls, "baseUrls");
        h.f(content, "content");
        return new SearchServiceData(baseUrl, baseUrls, content);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchServiceData)) {
            return false;
        }
        SearchServiceData searchServiceData = (SearchServiceData) other;
        return h.a(this.baseUrl, searchServiceData.baseUrl) && h.a(this.baseUrls, searchServiceData.baseUrls) && h.a(this.content, searchServiceData.content);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> getBaseUrls() {
        return this.baseUrls;
    }

    public final List<SearchServiceContent> getContent() {
        return this.content;
    }

    public int hashCode() {
        return this.content.hashCode() + c.c(this.baseUrls, this.baseUrl.hashCode() * 31, 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SearchServiceData(baseUrl=");
        sb2.append(this.baseUrl);
        sb2.append(", baseUrls=");
        sb2.append(this.baseUrls);
        sb2.append(", content=");
        return a.j(sb2, this.content, ')');
    }
}
