package tr.gov.turkiye.edevlet.kapisi.data.city;

import io.realm.h1;
import io.realm.internal.n;
import io.realm.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\f\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\b¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;", "Lio/realm/s0;", "", "cityId", "I", "getCityId", "()I", "setCityId", "(I)V", "cityCode", "getCityCode", "setCityCode", "", "cityName", "Ljava/lang/String;", "getCityName", "()Ljava/lang/String;", "setCityName", "(Ljava/lang/String;)V", "categoryCode", "getCategoryCode", "setCategoryCode", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class CityModelRealm implements s0, h1 {
    private int categoryCode;
    private int cityCode;
    private int cityId;
    private String cityName;

    /* JADX WARN: Multi-variable type inference failed */
    public CityModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$cityName("");
    }

    public final int getCategoryCode() {
        return getCategoryCode();
    }

    public final int getCityCode() {
        return getCityCode();
    }

    public final int getCityId() {
        return getCityId();
    }

    public final String getCityName() {
        return getCityName();
    }

    /* renamed from: realmGet$categoryCode, reason: from getter */
    public int getCategoryCode() {
        return this.categoryCode;
    }

    /* renamed from: realmGet$cityCode, reason: from getter */
    public int getCityCode() {
        return this.cityCode;
    }

    /* renamed from: realmGet$cityId, reason: from getter */
    public int getCityId() {
        return this.cityId;
    }

    /* renamed from: realmGet$cityName, reason: from getter */
    public String getCityName() {
        return this.cityName;
    }

    public void realmSet$categoryCode(int r12) {
        this.categoryCode = r12;
    }

    public void realmSet$cityCode(int r12) {
        this.cityCode = r12;
    }

    public void realmSet$cityId(int r12) {
        this.cityId = r12;
    }

    public void realmSet$cityName(String str) {
        this.cityName = str;
    }

    public final void setCategoryCode(int r12) {
        realmSet$categoryCode(r12);
    }

    public final void setCityCode(int r12) {
        realmSet$cityCode(r12);
    }

    public final void setCityId(int r12) {
        realmSet$cityId(r12);
    }

    public final void setCityName(String str) {
        h.f(str, "<set-?>");
        realmSet$cityName(str);
    }
}
