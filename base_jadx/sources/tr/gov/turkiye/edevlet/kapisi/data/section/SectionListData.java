package tr.gov.turkiye.edevlet.kapisi.data.section;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;", "", "content", "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;", "resultCode", "", "resultText", "", "(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;ILjava/lang/String;)V", "getContent", "()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;", "getResultCode", "()I", "getResultText", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SectionListData {

    @k(name = "content")
    private final SectionListContent content;

    @k(name = "resultCode")
    private final int resultCode;

    @k(name = "resultText")
    private final String resultText;

    public SectionListData(SectionListContent content, int r32, String resultText) {
        h.f(content, "content");
        h.f(resultText, "resultText");
        this.content = content;
        this.resultCode = r32;
        this.resultText = resultText;
    }

    public static /* synthetic */ SectionListData copy$default(SectionListData sectionListData, SectionListContent sectionListContent, int r22, String str, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            sectionListContent = sectionListData.content;
        }
        if ((r42 & 2) != 0) {
            r22 = sectionListData.resultCode;
        }
        if ((r42 & 4) != 0) {
            str = sectionListData.resultText;
        }
        return sectionListData.copy(sectionListContent, r22, str);
    }

    /* renamed from: component1, reason: from getter */
    public final SectionListContent getContent() {
        return this.content;
    }

    /* renamed from: component2, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* renamed from: component3, reason: from getter */
    public final String getResultText() {
        return this.resultText;
    }

    public final SectionListData copy(SectionListContent content, int resultCode, String resultText) {
        h.f(content, "content");
        h.f(resultText, "resultText");
        return new SectionListData(content, resultCode, resultText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SectionListData)) {
            return false;
        }
        SectionListData sectionListData = (SectionListData) other;
        return h.a(this.content, sectionListData.content) && this.resultCode == sectionListData.resultCode && h.a(this.resultText, sectionListData.resultText);
    }

    public final SectionListContent getContent() {
        return this.content;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final String getResultText() {
        return this.resultText;
    }

    public int hashCode() {
        return this.resultText.hashCode() + (((this.content.hashCode() * 31) + this.resultCode) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SectionListData(content=");
        sb2.append(this.content);
        sb2.append(", resultCode=");
        sb2.append(this.resultCode);
        sb2.append(", resultText=");
        return a.h(sb2, this.resultText, ')');
    }
}
