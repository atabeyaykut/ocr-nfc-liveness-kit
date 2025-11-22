package tr.gov.turkiye.edevlet.kapisi.data.service;

import androidx.camera.camera2.internal.c;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b$\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0002\u0010\u0010J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010&\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010)\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010*\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0017J\t\u0010+\u001a\u00020\u0001HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003Jz\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010.J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u00020\u000bHÖ\u0001J\t\u00103\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\"\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u001dR\"\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001a\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b \u0010\u0017R\u0016\u0010\u000e\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0012¨\u00064"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;", "", "baseUrl", "", "content", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;", "baseUrls", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "nameSurname", "newMessage", "", "messageCount", "resultCode", "resultMessage", "resultText", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/String;)V", "getBaseUrl", "()Ljava/lang/String;", "getBaseUrls", "()Ljava/util/List;", "getContent", "getMessageCount", "()Ljava/lang/Integer;", "setMessageCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getNameSurname", "setNameSurname", "(Ljava/lang/String;)V", "getNewMessage", "setNewMessage", "getResultCode", "getResultMessage", "()Ljava/lang/Object;", "getResultText", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/String;)Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListData;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class FavoriteServiceListData {

    @k(name = "baseUrl")
    private final String baseUrl;

    @k(name = "serviceDomainURLs")
    private final List<ServiceBaseUrl> baseUrls;

    @k(name = "favoriHizmetListesi")
    private final List<FavoriteServiceModel> content;

    @k(name = "messageCount")
    private Integer messageCount;

    @k(name = "nameSurname")
    private String nameSurname;

    @k(name = "newMessage")
    private Integer newMessage;

    @k(name = "resultCode")
    private final Integer resultCode;

    @k(name = "resultMessage")
    private final Object resultMessage;

    @k(name = "resultText")
    private final String resultText;

    public FavoriteServiceListData(String baseUrl, List<FavoriteServiceModel> content, List<ServiceBaseUrl> baseUrls, String nameSurname, Integer num, Integer num2, Integer num3, Object resultMessage, String resultText) {
        h.f(baseUrl, "baseUrl");
        h.f(content, "content");
        h.f(baseUrls, "baseUrls");
        h.f(nameSurname, "nameSurname");
        h.f(resultMessage, "resultMessage");
        h.f(resultText, "resultText");
        this.baseUrl = baseUrl;
        this.content = content;
        this.baseUrls = baseUrls;
        this.nameSurname = nameSurname;
        this.newMessage = num;
        this.messageCount = num2;
        this.resultCode = num3;
        this.resultMessage = resultMessage;
        this.resultText = resultText;
    }

    /* renamed from: component1, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<FavoriteServiceModel> component2() {
        return this.content;
    }

    public final List<ServiceBaseUrl> component3() {
        return this.baseUrls;
    }

    /* renamed from: component4, reason: from getter */
    public final String getNameSurname() {
        return this.nameSurname;
    }

    /* renamed from: component5, reason: from getter */
    public final Integer getNewMessage() {
        return this.newMessage;
    }

    /* renamed from: component6, reason: from getter */
    public final Integer getMessageCount() {
        return this.messageCount;
    }

    /* renamed from: component7, reason: from getter */
    public final Integer getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component8, reason: from getter */
    public final Object getResultMessage() {
        return this.resultMessage;
    }

    /* renamed from: component9, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    public final FavoriteServiceListData copy(String baseUrl, List<FavoriteServiceModel> content, List<ServiceBaseUrl> baseUrls, String nameSurname, Integer newMessage, Integer messageCount, Integer resultCode, Object resultMessage, String resultText) {
        h.f(baseUrl, "baseUrl");
        h.f(content, "content");
        h.f(baseUrls, "baseUrls");
        h.f(nameSurname, "nameSurname");
        h.f(resultMessage, "resultMessage");
        h.f(resultText, "resultText");
        return new FavoriteServiceListData(baseUrl, content, baseUrls, nameSurname, newMessage, messageCount, resultCode, resultMessage, resultText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FavoriteServiceListData)) {
            return false;
        }
        FavoriteServiceListData favoriteServiceListData = (FavoriteServiceListData) other;
        return h.a(this.baseUrl, favoriteServiceListData.baseUrl) && h.a(this.content, favoriteServiceListData.content) && h.a(this.baseUrls, favoriteServiceListData.baseUrls) && h.a(this.nameSurname, favoriteServiceListData.nameSurname) && h.a(this.newMessage, favoriteServiceListData.newMessage) && h.a(this.messageCount, favoriteServiceListData.messageCount) && h.a(this.resultCode, favoriteServiceListData.resultCode) && h.a(this.resultMessage, favoriteServiceListData.resultMessage) && h.a(this.resultText, favoriteServiceListData.resultText);
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final List<ServiceBaseUrl> getBaseUrls() {
        return this.baseUrls;
    }

    public final List<FavoriteServiceModel> getContent() {
        return this.content;
    }

    public final Integer getMessageCount() {
        return this.messageCount;
    }

    public final String getNameSurname() {
        return this.nameSurname;
    }

    public final Integer getNewMessage() {
        return this.newMessage;
    }

    public final Integer getResultCode() {
        return this.resultCode;
    }

    public final Object getResultMessage() {
        return this.resultMessage;
    }

    public final String getResultText() {
        return this.resultText;
    }

    public int hashCode() {
        int r02 = a.a(this.nameSurname, c.c(this.baseUrls, c.c(this.content, this.baseUrl.hashCode() * 31, 31), 31), 31);
        Integer num = this.newMessage;
        int r03 = (r02 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.messageCount;
        int r04 = (r03 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.resultCode;
        return this.resultText.hashCode() + ((this.resultMessage.hashCode() + ((r04 + (num3 != null ? num3.hashCode() : 0)) * 31)) * 31);
    }

    public final void setMessageCount(Integer num) {
        this.messageCount = num;
    }

    public final void setNameSurname(String str) {
        h.f(str, "<set-?>");
        this.nameSurname = str;
    }

    public final void setNewMessage(Integer num) {
        this.newMessage = num;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FavoriteServiceListData(baseUrl=");
        sb2.append(this.baseUrl);
        sb2.append(", content=");
        sb2.append(this.content);
        sb2.append(", baseUrls=");
        sb2.append(this.baseUrls);
        sb2.append(", nameSurname=");
        sb2.append(this.nameSurname);
        sb2.append(", newMessage=");
        sb2.append(this.newMessage);
        sb2.append(", messageCount=");
        sb2.append(this.messageCount);
        sb2.append(", resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultMessage=");
        sb2.append(this.resultMessage);
        sb2.append(", resultText=");
        return android.support.v4.media.a.h(sb2, this.resultText, ')');
    }
}
