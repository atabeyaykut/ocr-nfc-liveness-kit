package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PolicyInfo;", "", "companyName", "", "endDate", "productCode", "startDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCompanyName", "()Ljava/lang/String;", "getEndDate", "getProductCode", "getStartDate", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class PolicyInfo {

    @k(name = "companyName")
    private final String companyName;

    @k(name = "endDate")
    private final String endDate;

    @k(name = "productCode")
    private final String productCode;

    @k(name = "startDate")
    private final String startDate;

    public PolicyInfo(String companyName, String endDate, String productCode, String startDate) {
        h.f(companyName, "companyName");
        h.f(endDate, "endDate");
        h.f(productCode, "productCode");
        h.f(startDate, "startDate");
        this.companyName = companyName;
        this.endDate = endDate;
        this.productCode = productCode;
        this.startDate = startDate;
    }

    public static /* synthetic */ PolicyInfo copy$default(PolicyInfo policyInfo, String str, String str2, String str3, String str4, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = policyInfo.companyName;
        }
        if ((r52 & 2) != 0) {
            str2 = policyInfo.endDate;
        }
        if ((r52 & 4) != 0) {
            str3 = policyInfo.productCode;
        }
        if ((r52 & 8) != 0) {
            str4 = policyInfo.startDate;
        }
        return policyInfo.copy(str, str2, str3, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getCompanyName() {
        return this.companyName;
    }

    /* renamed from: component2, reason: from getter */
    public final String getEndDate() {
        return this.endDate;
    }

    /* renamed from: component3, reason: from getter */
    public final String getProductCode() {
        return this.productCode;
    }

    /* renamed from: component4, reason: from getter */
    public final String getStartDate() {
        return this.startDate;
    }

    public final PolicyInfo copy(String companyName, String endDate, String productCode, String startDate) {
        h.f(companyName, "companyName");
        h.f(endDate, "endDate");
        h.f(productCode, "productCode");
        h.f(startDate, "startDate");
        return new PolicyInfo(companyName, endDate, productCode, startDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PolicyInfo)) {
            return false;
        }
        PolicyInfo policyInfo = (PolicyInfo) other;
        return h.a(this.companyName, policyInfo.companyName) && h.a(this.endDate, policyInfo.endDate) && h.a(this.productCode, policyInfo.productCode) && h.a(this.startDate, policyInfo.startDate);
    }

    public final String getCompanyName() {
        return this.companyName;
    }

    public final String getEndDate() {
        return this.endDate;
    }

    public final String getProductCode() {
        return this.productCode;
    }

    public final String getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        return this.startDate.hashCode() + a.a(this.productCode, a.a(this.endDate, this.companyName.hashCode() * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PolicyInfo(companyName=");
        sb2.append(this.companyName);
        sb2.append(", endDate=");
        sb2.append(this.endDate);
        sb2.append(", productCode=");
        sb2.append(this.productCode);
        sb2.append(", startDate=");
        return android.support.v4.media.a.h(sb2, this.startDate, ')');
    }
}
