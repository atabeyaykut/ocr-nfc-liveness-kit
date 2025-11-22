package tr.gov.turkiye.edevlet.kapisi.data.service;

import android.support.v4.media.a;
import androidx.camera.camera2.internal.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0001\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\nHÆ\u0003J\t\u0010\u001d\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003JK\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\nHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u000b\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006%"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailData;", "", "baseUrl", "", "content", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "baseUrls", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "resultCode", "", "resultMessage", "resultText", "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;Ljava/util/List;ILjava/lang/Object;Ljava/lang/String;)V", "getBaseUrl", "()Ljava/lang/String;", "getBaseUrls", "()Ljava/util/List;", "getContent", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "getResultCode", "()I", "getResultMessage", "()Ljava/lang/Object;", "getResultText", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ServiceDetailData {

    @k(name = "baseUrl")
    private final String baseUrl;

    @k(name = "serviceDomainURLs")
    private final List<ServiceBaseUrl> baseUrls;

    @k(name = "content")
    private final ServiceModel content;

    @k(name = "resultCode")
    private final int resultCode;

    @k(name = "resultMessage")
    private final Object resultMessage;

    @k(name = "resultText")
    private final String resultText;

    public ServiceDetailData(String baseUrl, ServiceModel content, List<ServiceBaseUrl> baseUrls, int r52, Object resultMessage, String resultText) {
        h.f(baseUrl, "baseUrl");
        h.f(content, "content");
        h.f(baseUrls, "baseUrls");
        h.f(resultMessage, "resultMessage");
        h.f(resultText, "resultText");
        this.baseUrl = baseUrl;
        this.content = content;
        this.baseUrls = baseUrls;
        this.resultCode = r52;
        this.resultMessage = resultMessage;
        this.resultText = resultText;
    }

    public static /* synthetic */ ServiceDetailData copy$default(ServiceDetailData serviceDetailData, String str, ServiceModel serviceModel, List list, int r82, Object obj, String str2, int r11, Object obj2) {
        if ((r11 & 1) != 0) {
            str = serviceDetailData.baseUrl;
        }
        if ((r11 & 2) != 0) {
            serviceModel = serviceDetailData.content;
        }
        ServiceModel serviceModel2 = serviceModel;
        if ((r11 & 4) != 0) {
            list = serviceDetailData.baseUrls;
        }
        List list2 = list;
        if ((r11 & 8) != 0) {
            r82 = serviceDetailData.resultCode;
        }
        int r12 = r82;
        if ((r11 & 16) != 0) {
            obj = serviceDetailData.resultMessage;
        }
        Object obj3 = obj;
        if ((r11 & 32) != 0) {
            str2 = serviceDetailData.resultText;
        }
        return serviceDetailData.copy(str, serviceModel2, list2, r12, obj3, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    /* renamed from: component2, reason: from getter */
    public final ServiceModel getContent() {
        return this.content;
    }

    public final List<ServiceBaseUrl> component3() {
        return this.baseUrls;
    }

    /* renamed from: component4, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component5, reason: from getter */
    public final Object getResultMessage() {
        return this.resultMessage;
    }

    /* renamed from: component6, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    public final ServiceDetailData copy(String baseUrl, ServiceModel content, List<ServiceBaseUrl> baseUrls, int resultCode, Object resultMessage, String resultText) {
        h.f(baseUrl, "baseUrl");
        h.f(content, "content");
        h.f(baseUrls, "baseUrls");
        h.f(resultMessage, "resultMessage");
        h.f(resultText, "resultText");
        return new ServiceDetailData(baseUrl, content, baseUrls, resultCode, resultMessage, resultText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServiceDetailData)) {
            return false;
        }
        ServiceDetailData serviceDetailData = (ServiceDetailData) other;
        return h.a(this.baseUrl, serviceDetailData.baseUrl) && h.a(this.content, serviceDetailData.content) && h.a(this.baseUrls, serviceDetailData.baseUrls) && this.resultCode == serviceDetailData.resultCode && h.a(this.resultMessage, serviceDetailData.resultMessage) && h.a(this.resultText, serviceDetailData.resultText);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> getBaseUrls() {
        return this.baseUrls;
    }

    public final ServiceModel getContent() {
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
        return this.resultText.hashCode() + ((this.resultMessage.hashCode() + ((c.c(this.baseUrls, (this.content.hashCode() + (this.baseUrl.hashCode() * 31)) * 31, 31) + this.resultCode) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ServiceDetailData(baseUrl=");
        sb2.append(this.baseUrl);
        sb2.append(", content=");
        sb2.append(this.content);
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
