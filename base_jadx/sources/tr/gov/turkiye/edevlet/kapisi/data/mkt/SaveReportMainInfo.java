package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMainInfo;", "", "participants", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportParticipants;", "reportId", "", "reportNumber", "", NotificationCompat.CATEGORY_STATUS, "warnings", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportWarnings;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportParticipants;Ljava/lang/String;JLjava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportWarnings;)V", "getParticipants", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportParticipants;", "getReportId", "()Ljava/lang/String;", "getReportNumber", "()J", "getStatus", "getWarnings", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportWarnings;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SaveReportMainInfo {

    @k(name = "participants")
    private final SaveReportParticipants participants;

    @k(name = "reportId")
    private final String reportId;

    @k(name = "reportNumber")
    private final long reportNumber;

    @k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    @k(name = "warnings")
    private final SaveReportWarnings warnings;

    public SaveReportMainInfo(SaveReportParticipants participants, String reportId, long j10, String status, SaveReportWarnings warnings) {
        h.f(participants, "participants");
        h.f(reportId, "reportId");
        h.f(status, "status");
        h.f(warnings, "warnings");
        this.participants = participants;
        this.reportId = reportId;
        this.reportNumber = j10;
        this.status = status;
        this.warnings = warnings;
    }

    public static /* synthetic */ SaveReportMainInfo copy$default(SaveReportMainInfo saveReportMainInfo, SaveReportParticipants saveReportParticipants, String str, long j10, String str2, SaveReportWarnings saveReportWarnings, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            saveReportParticipants = saveReportMainInfo.participants;
        }
        if ((r11 & 2) != 0) {
            str = saveReportMainInfo.reportId;
        }
        String str3 = str;
        if ((r11 & 4) != 0) {
            j10 = saveReportMainInfo.reportNumber;
        }
        long j11 = j10;
        if ((r11 & 8) != 0) {
            str2 = saveReportMainInfo.status;
        }
        String str4 = str2;
        if ((r11 & 16) != 0) {
            saveReportWarnings = saveReportMainInfo.warnings;
        }
        return saveReportMainInfo.copy(saveReportParticipants, str3, j11, str4, saveReportWarnings);
    }

    /* renamed from: component1, reason: from getter */
    public final SaveReportParticipants getParticipants() {
        return this.participants;
    }

    /* renamed from: component2, reason: from getter */
    public final String getReportId() {
        return this.reportId;
    }

    /* renamed from: component3, reason: from getter */
    public final long getReportNumber() {
        return this.reportNumber;
    }

    /* renamed from: component4, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* renamed from: component5, reason: from getter */
    public final SaveReportWarnings getWarnings() {
        return this.warnings;
    }

    public final SaveReportMainInfo copy(SaveReportParticipants participants, String reportId, long reportNumber, String status, SaveReportWarnings warnings) {
        h.f(participants, "participants");
        h.f(reportId, "reportId");
        h.f(status, "status");
        h.f(warnings, "warnings");
        return new SaveReportMainInfo(participants, reportId, reportNumber, status, warnings);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SaveReportMainInfo)) {
            return false;
        }
        SaveReportMainInfo saveReportMainInfo = (SaveReportMainInfo) other;
        return h.a(this.participants, saveReportMainInfo.participants) && h.a(this.reportId, saveReportMainInfo.reportId) && this.reportNumber == saveReportMainInfo.reportNumber && h.a(this.status, saveReportMainInfo.status) && h.a(this.warnings, saveReportMainInfo.warnings);
    }

    public final SaveReportParticipants getParticipants() {
        return this.participants;
    }

    public final String getReportId() {
        return this.reportId;
    }

    public final long getReportNumber() {
        return this.reportNumber;
    }

    public final String getStatus() {
        return this.status;
    }

    public final SaveReportWarnings getWarnings() {
        return this.warnings;
    }

    public int hashCode() {
        int r02 = a.a(this.reportId, this.participants.hashCode() * 31, 31);
        long j10 = this.reportNumber;
        return this.warnings.hashCode() + a.a(this.status, (r02 + ((int) (j10 ^ (j10 >>> 32)))) * 31, 31);
    }

    public String toString() {
        return "SaveReportMainInfo(participants=" + this.participants + ", reportId=" + this.reportId + ", reportNumber=" + this.reportNumber + ", status=" + this.status + ", warnings=" + this.warnings + ')';
    }
}
