package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import eg.i;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;", "", "Leg/i;", "component1", "reportDetailMainInfo", "copy", "", "toString", "", "hashCode", "other", "", "equals", "Leg/i;", "getReportDetailMainInfo", "()Leg/i;", "<init>", "(Leg/i;)V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final /* data */ class ReportDetailSubData {

    @k(name = "map")
    private final i reportDetailMainInfo;

    public ReportDetailSubData(i reportDetailMainInfo) {
        h.f(reportDetailMainInfo, "reportDetailMainInfo");
        this.reportDetailMainInfo = reportDetailMainInfo;
    }

    public static /* synthetic */ ReportDetailSubData copy$default(ReportDetailSubData reportDetailSubData, i iVar, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            iVar = reportDetailSubData.reportDetailMainInfo;
        }
        return reportDetailSubData.copy(iVar);
    }

    /* renamed from: component1, reason: from getter */
    public final i getReportDetailMainInfo() {
        return this.reportDetailMainInfo;
    }

    public final ReportDetailSubData copy(i reportDetailMainInfo) {
        h.f(reportDetailMainInfo, "reportDetailMainInfo");
        return new ReportDetailSubData(reportDetailMainInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReportDetailSubData) && h.a(this.reportDetailMainInfo, ((ReportDetailSubData) other).reportDetailMainInfo);
    }

    public final i getReportDetailMainInfo() {
        return this.reportDetailMainInfo;
    }

    public int hashCode() {
        return this.reportDetailMainInfo.hashCode();
    }

    public String toString() {
        return "ReportDetailSubData(reportDetailMainInfo=" + this.reportDetailMainInfo + ')';
    }
}
