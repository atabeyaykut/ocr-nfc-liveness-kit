package tr.gov.turkiye.edevlet.kapisi.data.service;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "", "code", "", "url", "", "(ILjava/lang/String;)V", "getCode", "()I", "getUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ServiceBaseUrl {

    @k(name = "code")
    private final int code;

    @k(name = "url")
    private final String url;

    public ServiceBaseUrl(int r22, String url) {
        h.f(url, "url");
        this.code = r22;
        this.url = url;
    }

    public static /* synthetic */ ServiceBaseUrl copy$default(ServiceBaseUrl serviceBaseUrl, int r12, String str, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            r12 = serviceBaseUrl.code;
        }
        if ((r32 & 2) != 0) {
            str = serviceBaseUrl.url;
        }
        return serviceBaseUrl.copy(r12, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    /* renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    public final ServiceBaseUrl copy(int code, String url) {
        h.f(url, "url");
        return new ServiceBaseUrl(code, url);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServiceBaseUrl)) {
            return false;
        }
        ServiceBaseUrl serviceBaseUrl = (ServiceBaseUrl) other;
        return this.code == serviceBaseUrl.code && h.a(this.url, serviceBaseUrl.url);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.url.hashCode() + (this.code * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ServiceBaseUrl(code=");
        sb2.append(this.code);
        sb2.append(", url=");
        return a.h(sb2, this.url, ')');
    }
}
