package tr.gov.turkiye.edevlet.kapisi.data.city;

import io.realm.internal.n;
import io.realm.j1;
import io.realm.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/city/MyCityListDBModel;", "Lio/realm/s0;", "", "cityId", "I", "getCityId", "()I", "setCityId", "(I)V", "", "cityName", "Ljava/lang/String;", "getCityName", "()Ljava/lang/String;", "setCityName", "(Ljava/lang/String;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class MyCityListDBModel implements s0, j1 {
    private int cityId;
    private String cityName;

    /* JADX WARN: Multi-variable type inference failed */
    public MyCityListDBModel() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$cityName("");
    }

    public final int getCityId() {
        return getCityId();
    }

    public final String getCityName() {
        return getCityName();
    }

    /* renamed from: realmGet$cityId, reason: from getter */
    public int getCityId() {
        return this.cityId;
    }

    /* renamed from: realmGet$cityName, reason: from getter */
    public String getCityName() {
        return this.cityName;
    }

    public void realmSet$cityId(int r12) {
        this.cityId = r12;
    }

    public void realmSet$cityName(String str) {
        this.cityName = str;
    }

    public final void setCityId(int r12) {
        realmSet$cityId(r12);
    }

    public final void setCityName(String str) {
        h.f(str, "<set-?>");
        realmSet$cityName(str);
    }
}
