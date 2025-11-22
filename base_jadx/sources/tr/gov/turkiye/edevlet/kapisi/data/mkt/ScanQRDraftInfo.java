package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.camera.camera2.internal.c;
import androidx.core.app.NotificationCompat;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\nHÆ\u0003JC\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRDraftInfo;", "", "participants", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRDraftParticipants;", "reportId", "", "reportNumber", "", NotificationCompat.CATEGORY_STATUS, "warnings", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Warnings;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRDraftParticipants;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Warnings;)V", "getParticipants", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRDraftParticipants;", "getReportId", "()Ljava/lang/String;", "getReportNumber", "()Ljava/util/List;", "getStatus", "getWarnings", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Warnings;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ScanQRDraftInfo {

    @k(name = "participants")
    private final ScanQRDraftParticipants participants;

    @k(name = "reportId")
    private final String reportId;

    @k(name = "reportNumber")
    private final List<Object> reportNumber;

    @k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    @k(name = "warnings")
    private final Warnings warnings;

    public ScanQRDraftInfo(ScanQRDraftParticipants participants, String reportId, List<? extends Object> reportNumber, String status, Warnings warnings) {
        h.f(participants, "participants");
        h.f(reportId, "reportId");
        h.f(reportNumber, "reportNumber");
        h.f(status, "status");
        this.participants = participants;
        this.reportId = reportId;
        this.reportNumber = reportNumber;
        this.status = status;
        this.warnings = warnings;
    }

    public static /* synthetic */ ScanQRDraftInfo copy$default(ScanQRDraftInfo scanQRDraftInfo, ScanQRDraftParticipants scanQRDraftParticipants, String str, List list, String str2, Warnings warnings, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            scanQRDraftParticipants = scanQRDraftInfo.participants;
        }
        if ((r92 & 2) != 0) {
            str = scanQRDraftInfo.reportId;
        }
        String str3 = str;
        if ((r92 & 4) != 0) {
            list = scanQRDraftInfo.reportNumber;
        }
        List list2 = list;
        if ((r92 & 8) != 0) {
            str2 = scanQRDraftInfo.status;
        }
        String str4 = str2;
        if ((r92 & 16) != 0) {
            warnings = scanQRDraftInfo.warnings;
        }
        return scanQRDraftInfo.copy(scanQRDraftParticipants, str3, list2, str4, warnings);
    }

    /* renamed from: component1, reason: from getter */
    public final ScanQRDraftParticipants getParticipants() {
        return this.participants;
    }

    /* renamed from: component2, reason: from getter */
    public final String getReportId() {
        return this.reportId;
    }

    public final List<Object> component3() {
        return this.reportNumber;
    }

    /* renamed from: component4, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* renamed from: component5, reason: from getter */
    public final Warnings getWarnings() {
        return this.warnings;
    }

    public final ScanQRDraftInfo copy(ScanQRDraftParticipants participants, String reportId, List<? extends Object> reportNumber, String status, Warnings warnings) {
        h.f(participants, "participants");
        h.f(reportId, "reportId");
        h.f(reportNumber, "reportNumber");
        h.f(status, "status");
        return new ScanQRDraftInfo(participants, reportId, reportNumber, status, warnings);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScanQRDraftInfo)) {
            return false;
        }
        ScanQRDraftInfo scanQRDraftInfo = (ScanQRDraftInfo) other;
        return h.a(this.participants, scanQRDraftInfo.participants) && h.a(this.reportId, scanQRDraftInfo.reportId) && h.a(this.reportNumber, scanQRDraftInfo.reportNumber) && h.a(this.status, scanQRDraftInfo.status) && h.a(this.warnings, scanQRDraftInfo.warnings);
    }

    public final ScanQRDraftParticipants getParticipants() {
        return this.participants;
    }

    public final String getReportId() {
        return this.reportId;
    }

    public final List<Object> getReportNumber() {
        return this.reportNumber;
    }

    public final String getStatus() {
        return this.status;
    }

    public final Warnings getWarnings() {
        return this.warnings;
    }

    public int hashCode() {
        int r02 = a.a(this.status, c.c(this.reportNumber, a.a(this.reportId, this.participants.hashCode() * 31, 31), 31), 31);
        Warnings warnings = this.warnings;
        return r02 + (warnings == null ? 0 : warnings.hashCode());
    }

    public String toString() {
        return "ScanQRDraftInfo(participants=" + this.participants + ", reportId=" + this.reportId + ", reportNumber=" + this.reportNumber + ", status=" + this.status + ", warnings=" + this.warnings + ')';
    }
}
