package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanInfo;", "", "checked", "", "participants", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;", "(ZLtr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;)V", "getChecked", "()Z", "getParticipants", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Participants;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ControlQRScanInfo {

    @k(name = "checked")
    private final boolean checked;

    @k(name = "participants")
    private final Participants participants;

    public ControlQRScanInfo(boolean z10, Participants participants) {
        h.f(participants, "participants");
        this.checked = z10;
        this.participants = participants;
    }

    public static /* synthetic */ ControlQRScanInfo copy$default(ControlQRScanInfo controlQRScanInfo, boolean z10, Participants participants, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            z10 = controlQRScanInfo.checked;
        }
        if ((r32 & 2) != 0) {
            participants = controlQRScanInfo.participants;
        }
        return controlQRScanInfo.copy(z10, participants);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getChecked() {
        return this.checked;
    }

    /* renamed from: component2, reason: from getter */
    public final Participants getParticipants() {
        return this.participants;
    }

    public final ControlQRScanInfo copy(boolean checked, Participants participants) {
        h.f(participants, "participants");
        return new ControlQRScanInfo(checked, participants);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ControlQRScanInfo)) {
            return false;
        }
        ControlQRScanInfo controlQRScanInfo = (ControlQRScanInfo) other;
        return this.checked == controlQRScanInfo.checked && h.a(this.participants, controlQRScanInfo.participants);
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final Participants getParticipants() {
        return this.participants;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public int hashCode() {
        boolean z10 = this.checked;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        return this.participants.hashCode() + (r02 * 31);
    }

    public String toString() {
        return "ControlQRScanInfo(checked=" + this.checked + ", participants=" + this.participants + ')';
    }
}
