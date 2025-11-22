package tr.gov.turkiye.edevlet.kapisi.data.service;

import android.support.v4.media.a;
import androidx.camera.camera2.internal.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0001\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u000bHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0001HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003Jc\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00012\b\b\u0002\u0010\r\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u000bHÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\f\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010¨\u0006'"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListData;", "", "baseUrl", "", "content", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "conceptServices", "baseUrls", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "resultCode", "", "resultMessage", "resultText", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;Ljava/lang/String;)V", "getBaseUrl", "()Ljava/lang/String;", "getBaseUrls", "()Ljava/util/List;", "getConceptServices", "getContent", "getResultCode", "()I", "getResultMessage", "()Ljava/lang/Object;", "getResultText", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ServiceListData {

    @k(name = "baseUrl")
    private final String baseUrl;

    @k(name = "serviceDomainURLs")
    private final List<ServiceBaseUrl> baseUrls;

    @k(name = "conceptServices")
    private final List<ServiceModel> conceptServices;

    @k(name = "content")
    private final List<ServiceModel> content;

    @k(name = "resultCode")
    private final int resultCode;

    @k(name = "resultMessage")
    private final Object resultMessage;

    @k(name = "resultText")
    private final String resultText;

    public ServiceListData(String baseUrl, List<ServiceModel> content, List<ServiceModel> list, List<ServiceBaseUrl> baseUrls, int r6, Object resultMessage, String resultText) {
        h.f(baseUrl, "baseUrl");
        h.f(content, "content");
        h.f(baseUrls, "baseUrls");
        h.f(resultMessage, "resultMessage");
        h.f(resultText, "resultText");
        this.baseUrl = baseUrl;
        this.content = content;
        this.conceptServices = list;
        this.baseUrls = baseUrls;
        this.resultCode = r6;
        this.resultMessage = resultMessage;
        this.resultText = resultText;
    }

    public static /* synthetic */ ServiceListData copy$default(ServiceListData serviceListData, String str, List list, List list2, List list3, int r10, Object obj, String str2, int r13, Object obj2) {
        if ((r13 & 1) != 0) {
            str = serviceListData.baseUrl;
        }
        if ((r13 & 2) != 0) {
            list = serviceListData.content;
        }
        List list4 = list;
        if ((r13 & 4) != 0) {
            list2 = serviceListData.conceptServices;
        }
        List list5 = list2;
        if ((r13 & 8) != 0) {
            list3 = serviceListData.baseUrls;
        }
        List list6 = list3;
        if ((r13 & 16) != 0) {
            r10 = serviceListData.resultCode;
        }
        int r22 = r10;
        if ((r13 & 32) != 0) {
            obj = serviceListData.resultMessage;
        }
        Object obj3 = obj;
        if ((r13 & 64) != 0) {
            str2 = serviceListData.resultText;
        }
        return serviceListData.copy(str, list4, list5, list6, r22, obj3, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceModel> component2() {
        return this.content;
    }

    public final List<ServiceModel> component3() {
        return this.conceptServices;
    }

    public final List<ServiceBaseUrl> component4() {
        return this.baseUrls;
    }

    /* renamed from: component5, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component6, reason: from getter */
    public final Object getResultMessage() {
        return this.resultMessage;
    }

    /* renamed from: component7, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    public final ServiceListData copy(String baseUrl, List<ServiceModel> content, List<ServiceModel> conceptServices, List<ServiceBaseUrl> baseUrls, int resultCode, Object resultMessage, String resultText) {
        h.f(baseUrl, "baseUrl");
        h.f(content, "content");
        h.f(baseUrls, "baseUrls");
        h.f(resultMessage, "resultMessage");
        h.f(resultText, "resultText");
        return new ServiceListData(baseUrl, content, conceptServices, baseUrls, resultCode, resultMessage, resultText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServiceListData)) {
            return false;
        }
        ServiceListData serviceListData = (ServiceListData) other;
        return h.a(this.baseUrl, serviceListData.baseUrl) && h.a(this.content, serviceListData.content) && h.a(this.conceptServices, serviceListData.conceptServices) && h.a(this.baseUrls, serviceListData.baseUrls) && this.resultCode == serviceListData.resultCode && h.a(this.resultMessage, serviceListData.resultMessage) && h.a(this.resultText, serviceListData.resultText);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> getBaseUrls() {
        return this.baseUrls;
    }

    public final List<ServiceModel> getConceptServices() {
        return this.conceptServices;
    }

    public final List<ServiceModel> getContent() {
        return this.content;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final Object getResultMessage() {
        return this.resultMessage;
    }

    public final String getResultText() {
        return this.resultText;
    }

    public int hashCode() {
        int r02 = c.c(this.content, this.baseUrl.hashCode() * 31, 31);
        List<ServiceModel> list = this.conceptServices;
        return this.resultText.hashCode() + ((this.resultMessage.hashCode() + ((c.c(this.baseUrls, (r02 + (list == null ? 0 : list.hashCode())) * 31, 31) + this.resultCode) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ServiceListData(baseUrl=");
        sb2.append(this.baseUrl);
        sb2.append(", content=");
        sb2.append(this.content);
        sb2.append(", conceptServices=");
        sb2.append(this.conceptServices);
        sb2.append(", baseUrls=");
        sb2.append(this.baseUrls);
        sb2.append(", resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultMessage=");
        sb2.append(this.resultMessage);
        sb2.append(", resultText=");
        return a.h(sb2, this.resultText, ')');
    }
}
