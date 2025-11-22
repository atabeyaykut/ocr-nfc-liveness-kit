package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import io.realm.internal.n;
import io.realm.v0;
import io.realm.v1;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000e\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R$\u0010\u001c\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u000e\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0004\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR$\u0010#\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006+"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;", "Lio/realm/v0;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "deviceAddress", "getDeviceAddress", "setDeviceAddress", "", "deviceLatitude", "Ljava/lang/Double;", "getDeviceLatitude", "()Ljava/lang/Double;", "setDeviceLatitude", "(Ljava/lang/Double;)V", "deviceLongitude", "getDeviceLongitude", "setDeviceLongitude", "accidentAddress", "getAccidentAddress", "setAccidentAddress", "accidentLatitude", "getAccidentLatitude", "setAccidentLatitude", "accidentLongitude", "getAccidentLongitude", "setAccidentLongitude", "updatedDate", "getUpdatedDate", "setUpdatedDate", "", "radius", "Ljava/lang/Integer;", "getRadius", "()Ljava/lang/Integer;", "setRadius", "(Ljava/lang/Integer;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentReportLocation extends v0 implements v1 {
    private String accidentAddress;
    private Double accidentLatitude;
    private Double accidentLongitude;
    private String deviceAddress;
    private Double deviceLatitude;
    private Double deviceLongitude;
    private String id;
    private Integer radius;
    private String updatedDate;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentReportLocation() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getAccidentAddress() {
        return getAccidentAddress();
    }

    public final Double getAccidentLatitude() {
        return getAccidentLatitude();
    }

    public final Double getAccidentLongitude() {
        return getAccidentLongitude();
    }

    public final String getDeviceAddress() {
        return getDeviceAddress();
    }

    public final Double getDeviceLatitude() {
        return getDeviceLatitude();
    }

    public final Double getDeviceLongitude() {
        return getDeviceLongitude();
    }

    public final String getId() {
        return getId();
    }

    public final Integer getRadius() {
        return getRadius();
    }

    public final String getUpdatedDate() {
        return getUpdatedDate();
    }

    /* renamed from: realmGet$accidentAddress, reason: from getter */
    public String getAccidentAddress() {
        return this.accidentAddress;
    }

    /* renamed from: realmGet$accidentLatitude, reason: from getter */
    public Double getAccidentLatitude() {
        return this.accidentLatitude;
    }

    /* renamed from: realmGet$accidentLongitude, reason: from getter */
    public Double getAccidentLongitude() {
        return this.accidentLongitude;
    }

    /* renamed from: realmGet$deviceAddress, reason: from getter */
    public String getDeviceAddress() {
        return this.deviceAddress;
    }

    /* renamed from: realmGet$deviceLatitude, reason: from getter */
    public Double getDeviceLatitude() {
        return this.deviceLatitude;
    }

    /* renamed from: realmGet$deviceLongitude, reason: from getter */
    public Double getDeviceLongitude() {
        return this.deviceLongitude;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$radius, reason: from getter */
    public Integer getRadius() {
        return this.radius;
    }

    /* renamed from: realmGet$updatedDate, reason: from getter */
    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void realmSet$accidentAddress(String str) {
        this.accidentAddress = str;
    }

    public void realmSet$accidentLatitude(Double d10) {
        this.accidentLatitude = d10;
    }

    public void realmSet$accidentLongitude(Double d10) {
        this.accidentLongitude = d10;
    }

    public void realmSet$deviceAddress(String str) {
        this.deviceAddress = str;
    }

    public void realmSet$deviceLatitude(Double d10) {
        this.deviceLatitude = d10;
    }

    public void realmSet$deviceLongitude(Double d10) {
        this.deviceLongitude = d10;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$radius(Integer num) {
        this.radius = num;
    }

    public void realmSet$updatedDate(String str) {
        this.updatedDate = str;
    }

    public final void setAccidentAddress(String str) {
        realmSet$accidentAddress(str);
    }

    public final void setAccidentLatitude(Double d10) {
        realmSet$accidentLatitude(d10);
    }

    public final void setAccidentLongitude(Double d10) {
        realmSet$accidentLongitude(d10);
    }

    public final void setDeviceAddress(String str) {
        realmSet$deviceAddress(str);
    }

    public final void setDeviceLatitude(Double d10) {
        realmSet$deviceLatitude(d10);
    }

    public final void setDeviceLongitude(Double d10) {
        realmSet$deviceLongitude(d10);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setRadius(Integer num) {
        realmSet$radius(num);
    }

    public final void setUpdatedDate(String str) {
        realmSet$updatedDate(str);
    }
}
