package tr.gov.turkiye.edevlet.kapisi.data.service;

import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J7\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageDataModel;", "", "baseUrl", "", "resultCode", "", "resultText", "staticPages", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V", "getBaseUrl", "()Ljava/lang/String;", "getResultCode", "()I", "getResultText", "getStaticPages", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class AboutPageDataModel {

    @k(name = "baseUrl")
    private final String baseUrl;

    @k(name = "resultCode")
    private final int resultCode;

    @k(name = "resultText")
    private final String resultText;

    @k(name = "staticPages")
    private final List<AboutPageItemModel> staticPages;

    public AboutPageDataModel(String baseUrl, int r32, String resultText, List<AboutPageItemModel> staticPages) {
        h.f(baseUrl, "baseUrl");
        h.f(resultText, "resultText");
        h.f(staticPages, "staticPages");
        this.baseUrl = baseUrl;
        this.resultCode = r32;
        this.resultText = resultText;
        this.staticPages = staticPages;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AboutPageDataModel copy$default(AboutPageDataModel aboutPageDataModel, String str, int r22, String str2, List list, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = aboutPageDataModel.baseUrl;
        }
        if ((r52 & 2) != 0) {
            r22 = aboutPageDataModel.resultCode;
        }
        if ((r52 & 4) != 0) {
            str2 = aboutPageDataModel.resultText;
        }
        if ((r52 & 8) != 0) {
            list = aboutPageDataModel.staticPages;
        }
        return aboutPageDataModel.copy(str, r22, str2, list);
    }

    /* renamed from: component1, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    /* renamed from: component2, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component3, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    public final List<AboutPageItemModel> component4() {
        return this.staticPages;
    }

    public final AboutPageDataModel copy(String baseUrl, int resultCode, String resultText, List<AboutPageItemModel> staticPages) {
        h.f(baseUrl, "baseUrl");
        h.f(resultText, "resultText");
        h.f(staticPages, "staticPages");
        return new AboutPageDataModel(baseUrl, resultCode, resultText, staticPages);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AboutPageDataModel)) {
            return false;
        }
        AboutPageDataModel aboutPageDataModel = (AboutPageDataModel) other;
        return h.a(this.baseUrl, aboutPageDataModel.baseUrl) && this.resultCode == aboutPageDataModel.resultCode && h.a(this.resultText, aboutPageDataModel.resultText) && h.a(this.staticPages, aboutPageDataModel.staticPages);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final String getResultText() {
        return this.resultText;
    }

    public final List<AboutPageItemModel> getStaticPages() {
        return this.staticPages;
    }

    public int hashCode() {
        return this.staticPages.hashCode() + a.a(this.resultText, ((this.baseUrl.hashCode() * 31) + this.resultCode) * 31, 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AboutPageDataModel(baseUrl=");
        sb2.append(this.baseUrl);
        sb2.append(", resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultText=");
        sb2.append(this.resultText);
        sb2.append(", staticPages=");
        return android.support.v4.media.a.j(sb2, this.staticPages, ')');
    }
}
