package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportInfo;", "", "content", "", "mediaType", "reportNumber", "", "(Ljava/lang/String;Ljava/lang/String;J)V", "getContent", "()Ljava/lang/String;", "getMediaType", "getReportNumber", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class DownloadCompletedReportInfo {

    @k(name = "content")
    private final String content;

    @k(name = "mediaType")
    private final String mediaType;

    @k(name = "reportNumber")
    private final long reportNumber;

    public DownloadCompletedReportInfo(String content, String mediaType, long j10) {
        h.f(content, "content");
        h.f(mediaType, "mediaType");
        this.content = content;
        this.mediaType = mediaType;
        this.reportNumber = j10;
    }

    public static /* synthetic */ DownloadCompletedReportInfo copy$default(DownloadCompletedReportInfo downloadCompletedReportInfo, String str, String str2, long j10, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = downloadCompletedReportInfo.content;
        }
        if ((r52 & 2) != 0) {
            str2 = downloadCompletedReportInfo.mediaType;
        }
        if ((r52 & 4) != 0) {
            j10 = downloadCompletedReportInfo.reportNumber;
        }
        return downloadCompletedReportInfo.copy(str, str2, j10);
    }

    /* renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* renamed from: component2, reason: from getter */
    public final String getMediaType() {
        return this.mediaType;
    }

    /* renamed from: component3, reason: from getter */
    public final long getReportNumber() {
        return this.reportNumber;
    }

    public final DownloadCompletedReportInfo copy(String content, String mediaType, long reportNumber) {
        h.f(content, "content");
        h.f(mediaType, "mediaType");
        return new DownloadCompletedReportInfo(content, mediaType, reportNumber);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadCompletedReportInfo)) {
            return false;
        }
        DownloadCompletedReportInfo downloadCompletedReportInfo = (DownloadCompletedReportInfo) other;
        return h.a(this.content, downloadCompletedReportInfo.content) && h.a(this.mediaType, downloadCompletedReportInfo.mediaType) && this.reportNumber == downloadCompletedReportInfo.reportNumber;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getMediaType() {
        return this.mediaType;
    }

    public final long getReportNumber() {
        return this.reportNumber;
    }

    public int hashCode() {
        int r02 = a.a(this.mediaType, this.content.hashCode() * 31, 31);
        long j10 = this.reportNumber;
        return r02 + ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "DownloadCompletedReportInfo(content=" + this.content + ", mediaType=" + this.mediaType + ", reportNumber=" + this.reportNumber + ')';
    }
}
