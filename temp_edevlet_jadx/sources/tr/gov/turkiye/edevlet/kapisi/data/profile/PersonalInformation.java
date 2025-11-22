package tr.gov.turkiye.edevlet.kapisi.data.profile;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;", "", "mobilePhoneCountryCode", "", "mobilePhoneNumber", "eMail", "hasVerifiedEmail", "hasSMSVerifiedPhoneNumber", "hasIDVerifiedPhoneNumber", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getEMail", "()Ljava/lang/String;", "getHasIDVerifiedPhoneNumber", "getHasSMSVerifiedPhoneNumber", "getHasVerifiedEmail", "getMobilePhoneCountryCode", "getMobilePhoneNumber", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class PersonalInformation {

    @k(name = "eposta")
    private final String eMail;

    @k(name = "yuzyuzeTelVerfied")
    private final String hasIDVerifiedPhoneNumber;

    @k(name = "cepTelVerified")
    private final String hasSMSVerifiedPhoneNumber;

    @k(name = "epostaVerified")
    private final String hasVerifiedEmail;

    @k(name = "ceptelUlkeKodu")
    private final String mobilePhoneCountryCode;

    @k(name = "ceptel")
    private final String mobilePhoneNumber;

    public PersonalInformation() {
        this(null, null, null, null, null, null, 63, null);
    }

    public PersonalInformation(String mobilePhoneCountryCode, String mobilePhoneNumber, String eMail, String hasVerifiedEmail, String hasSMSVerifiedPhoneNumber, String hasIDVerifiedPhoneNumber) {
        h.f(mobilePhoneCountryCode, "mobilePhoneCountryCode");
        h.f(mobilePhoneNumber, "mobilePhoneNumber");
        h.f(eMail, "eMail");
        h.f(hasVerifiedEmail, "hasVerifiedEmail");
        h.f(hasSMSVerifiedPhoneNumber, "hasSMSVerifiedPhoneNumber");
        h.f(hasIDVerifiedPhoneNumber, "hasIDVerifiedPhoneNumber");
        this.mobilePhoneCountryCode = mobilePhoneCountryCode;
        this.mobilePhoneNumber = mobilePhoneNumber;
        this.eMail = eMail;
        this.hasVerifiedEmail = hasVerifiedEmail;
        this.hasSMSVerifiedPhoneNumber = hasSMSVerifiedPhoneNumber;
        this.hasIDVerifiedPhoneNumber = hasIDVerifiedPhoneNumber;
    }

    public /* synthetic */ PersonalInformation(String str, String str2, String str3, String str4, String str5, String str6, int r11, d dVar) {
        this((r11 & 1) != 0 ? "-" : str, (r11 & 2) != 0 ? "-" : str2, (r11 & 4) == 0 ? str3 : "-", (r11 & 8) != 0 ? "H" : str4, (r11 & 16) != 0 ? "H" : str5, (r11 & 32) != 0 ? "H" : str6);
    }

    public static /* synthetic */ PersonalInformation copy$default(PersonalInformation personalInformation, String str, String str2, String str3, String str4, String str5, String str6, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            str = personalInformation.mobilePhoneCountryCode;
        }
        if ((r11 & 2) != 0) {
            str2 = personalInformation.mobilePhoneNumber;
        }
        String str7 = str2;
        if ((r11 & 4) != 0) {
            str3 = personalInformation.eMail;
        }
        String str8 = str3;
        if ((r11 & 8) != 0) {
            str4 = personalInformation.hasVerifiedEmail;
        }
        String str9 = str4;
        if ((r11 & 16) != 0) {
            str5 = personalInformation.hasSMSVerifiedPhoneNumber;
        }
        String str10 = str5;
        if ((r11 & 32) != 0) {
            str6 = personalInformation.hasIDVerifiedPhoneNumber;
        }
        return personalInformation.copy(str, str7, str8, str9, str10, str6);
    }

    /* renamed from: component1, reason: from getter */
    public final String getMobilePhoneCountryCode() {
        return this.mobilePhoneCountryCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getMobilePhoneNumber() {
        return this.mobilePhoneNumber;
    }

    /* renamed from: component3, reason: from getter */
    public final String getEMail() {
        return this.eMail;
    }

    /* renamed from: component4, reason: from getter */
    public final String getHasVerifiedEmail() {
        return this.hasVerifiedEmail;
    }

    /* renamed from: component5, reason: from getter */
    public final String getHasSMSVerifiedPhoneNumber() {
        return this.hasSMSVerifiedPhoneNumber;
    }

    /* renamed from: component6, reason: from getter */
    public final String getHasIDVerifiedPhoneNumber() {
        return this.hasIDVerifiedPhoneNumber;
    }

    public final PersonalInformation copy(String mobilePhoneCountryCode, String mobilePhoneNumber, String eMail, String hasVerifiedEmail, String hasSMSVerifiedPhoneNumber, String hasIDVerifiedPhoneNumber) {
        h.f(mobilePhoneCountryCode, "mobilePhoneCountryCode");
        h.f(mobilePhoneNumber, "mobilePhoneNumber");
        h.f(eMail, "eMail");
        h.f(hasVerifiedEmail, "hasVerifiedEmail");
        h.f(hasSMSVerifiedPhoneNumber, "hasSMSVerifiedPhoneNumber");
        h.f(hasIDVerifiedPhoneNumber, "hasIDVerifiedPhoneNumber");
        return new PersonalInformation(mobilePhoneCountryCode, mobilePhoneNumber, eMail, hasVerifiedEmail, hasSMSVerifiedPhoneNumber, hasIDVerifiedPhoneNumber);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PersonalInformation)) {
            return false;
        }
        PersonalInformation personalInformation = (PersonalInformation) other;
        return h.a(this.mobilePhoneCountryCode, personalInformation.mobilePhoneCountryCode) && h.a(this.mobilePhoneNumber, personalInformation.mobilePhoneNumber) && h.a(this.eMail, personalInformation.eMail) && h.a(this.hasVerifiedEmail, personalInformation.hasVerifiedEmail) && h.a(this.hasSMSVerifiedPhoneNumber, personalInformation.hasSMSVerifiedPhoneNumber) && h.a(this.hasIDVerifiedPhoneNumber, personalInformation.hasIDVerifiedPhoneNumber);
    }

    public final String getEMail() {
        return this.eMail;
    }

    public final String getHasIDVerifiedPhoneNumber() {
        return this.hasIDVerifiedPhoneNumber;
    }

    public final String getHasSMSVerifiedPhoneNumber() {
        return this.hasSMSVerifiedPhoneNumber;
    }

    public final String getHasVerifiedEmail() {
        return this.hasVerifiedEmail;
    }

    public final String getMobilePhoneCountryCode() {
        return this.mobilePhoneCountryCode;
    }

    public final String getMobilePhoneNumber() {
        return this.mobilePhoneNumber;
    }

    public int hashCode() {
        return this.hasIDVerifiedPhoneNumber.hashCode() + a.a(this.hasSMSVerifiedPhoneNumber, a.a(this.hasVerifiedEmail, a.a(this.eMail, a.a(this.mobilePhoneNumber, this.mobilePhoneCountryCode.hashCode() * 31, 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PersonalInformation(mobilePhoneCountryCode=");
        sb2.append(this.mobilePhoneCountryCode);
        sb2.append(", mobilePhoneNumber=");
        sb2.append(this.mobilePhoneNumber);
        sb2.append(", eMail=");
        sb2.append(this.eMail);
        sb2.append(", hasVerifiedEmail=");
        sb2.append(this.hasVerifiedEmail);
        sb2.append(", hasSMSVerifiedPhoneNumber=");
        sb2.append(this.hasSMSVerifiedPhoneNumber);
        sb2.append(", hasIDVerifiedPhoneNumber=");
        return android.support.v4.media.a.h(sb2, this.hasIDVerifiedPhoneNumber, ')');
    }
}
