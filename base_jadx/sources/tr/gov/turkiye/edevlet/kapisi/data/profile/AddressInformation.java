package tr.gov.turkiye.edevlet.kapisi.data.profile;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/AddressInformation;", "", "detailAddress", "", "informationUpdateTime", "(Ljava/lang/String;Ljava/lang/String;)V", "getDetailAddress", "()Ljava/lang/String;", "getInformationUpdateTime", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class AddressInformation {

    @k(name = "acikAdres")
    private final String detailAddress;

    @k(name = "kpsSonGuncellemeTarihi")
    private final String informationUpdateTime;

    /* JADX WARN: Multi-variable type inference failed */
    public AddressInformation() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public AddressInformation(String detailAddress, String informationUpdateTime) {
        h.f(detailAddress, "detailAddress");
        h.f(informationUpdateTime, "informationUpdateTime");
        this.detailAddress = detailAddress;
        this.informationUpdateTime = informationUpdateTime;
    }

    public /* synthetic */ AddressInformation(String str, String str2, int r42, d dVar) {
        this((r42 & 1) != 0 ? "-" : str, (r42 & 2) != 0 ? "-" : str2);
    }

    public static /* synthetic */ AddressInformation copy$default(AddressInformation addressInformation, String str, String str2, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = addressInformation.detailAddress;
        }
        if ((r32 & 2) != 0) {
            str2 = addressInformation.informationUpdateTime;
        }
        return addressInformation.copy(str, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getDetailAddress() {
        return this.detailAddress;
    }

    /* renamed from: component2, reason: from getter */
    public final String getInformationUpdateTime() {
        return this.informationUpdateTime;
    }

    public final AddressInformation copy(String detailAddress, String informationUpdateTime) {
        h.f(detailAddress, "detailAddress");
        h.f(informationUpdateTime, "informationUpdateTime");
        return new AddressInformation(detailAddress, informationUpdateTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddressInformation)) {
            return false;
        }
        AddressInformation addressInformation = (AddressInformation) other;
        return h.a(this.detailAddress, addressInformation.detailAddress) && h.a(this.informationUpdateTime, addressInformation.informationUpdateTime);
    }

    public final String getDetailAddress() {
        return this.detailAddress;
    }

    public final String getInformationUpdateTime() {
        return this.informationUpdateTime;
    }

    public int hashCode() {
        return this.informationUpdateTime.hashCode() + (this.detailAddress.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AddressInformation(detailAddress=");
        sb2.append(this.detailAddress);
        sb2.append(", informationUpdateTime=");
        return a.h(sb2, this.informationUpdateTime, ')');
    }
}
