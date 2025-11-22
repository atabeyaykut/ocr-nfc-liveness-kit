package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import io.realm.b2;
import io.realm.internal.n;
import io.realm.v0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;", "Lio/realm/v0;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "productCode", "getProductCode", "setProductCode", "endDate", "getEndDate", "setEndDate", "startDate", "getStartDate", "setStartDate", "companyName", "getCompanyName", "setCompanyName", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentReportPolicy extends v0 implements b2 {
    private String companyName;
    private String endDate;
    private String id;
    private String productCode;
    private String startDate;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentReportPolicy() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getCompanyName() {
        return getCompanyName();
    }

    public final String getEndDate() {
        return getEndDate();
    }

    public final String getId() {
        return getId();
    }

    public final String getProductCode() {
        return getProductCode();
    }

    public final String getStartDate() {
        return getStartDate();
    }

    /* renamed from: realmGet$companyName, reason: from getter */
    public String getCompanyName() {
        return this.companyName;
    }

    /* renamed from: realmGet$endDate, reason: from getter */
    public String getEndDate() {
        return this.endDate;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$productCode, reason: from getter */
    public String getProductCode() {
        return this.productCode;
    }

    /* renamed from: realmGet$startDate, reason: from getter */
    public String getStartDate() {
        return this.startDate;
    }

    public void realmSet$companyName(String str) {
        this.companyName = str;
    }

    public void realmSet$endDate(String str) {
        this.endDate = str;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$productCode(String str) {
        this.productCode = str;
    }

    public void realmSet$startDate(String str) {
        this.startDate = str;
    }

    public final void setCompanyName(String str) {
        realmSet$companyName(str);
    }

    public final void setEndDate(String str) {
        realmSet$endDate(str);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setProductCode(String str) {
        realmSet$productCode(str);
    }

    public final void setStartDate(String str) {
        realmSet$startDate(str);
    }
}
