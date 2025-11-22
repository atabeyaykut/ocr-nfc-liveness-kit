package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import android.support.v4.media.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationSubData;", "", "hostReportLocationList", "", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationList;", "(Ljava/util/List;)V", "getHostReportLocationList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class HostReportLocationSubData {

    @k(name = "myArrayList")
    private final List<HostReportLocationList> hostReportLocationList;

    public HostReportLocationSubData(List<HostReportLocationList> hostReportLocationList) {
        h.f(hostReportLocationList, "hostReportLocationList");
        this.hostReportLocationList = hostReportLocationList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HostReportLocationSubData copy$default(HostReportLocationSubData hostReportLocationSubData, List list, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            list = hostReportLocationSubData.hostReportLocationList;
        }
        return hostReportLocationSubData.copy(list);
    }

    public final List<HostReportLocationList> component1() {
        return this.hostReportLocationList;
    }

    public final HostReportLocationSubData copy(List<HostReportLocationList> hostReportLocationList) {
        h.f(hostReportLocationList, "hostReportLocationList");
        return new HostReportLocationSubData(hostReportLocationList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HostReportLocationSubData) && h.a(this.hostReportLocationList, ((HostReportLocationSubData) other).hostReportLocationList);
    }

    public final List<HostReportLocationList> getHostReportLocationList() {
        return this.hostReportLocationList;
    }

    public int hashCode() {
        return this.hostReportLocationList.hashCode();
    }

    public String toString() {
        return a.j(new StringBuilder("HostReportLocationSubData(hostReportLocationList="), this.hostReportLocationList, ')');
    }
}
