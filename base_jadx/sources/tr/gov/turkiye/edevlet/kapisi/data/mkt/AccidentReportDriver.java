package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import io.realm.internal.n;
import io.realm.t1;
import io.realm.v0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b!\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\b¨\u0006#"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;", "Lio/realm/v0;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", "surName", "getSurName", "setSurName", "birthDate", "getBirthDate", "setBirthDate", "phoneNumber", "getPhoneNumber", "setPhoneNumber", "identityNumber", "getIdentityNumber", "setIdentityNumber", "identityType", "getIdentityType", "setIdentityType", "createdDate", "getCreatedDate", "setCreatedDate", "updatedDate", "getUpdatedDate", "setUpdatedDate", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentReportDriver extends v0 implements t1 {
    private String birthDate;
    private String createdDate;
    private String id;
    private String identityNumber;
    private String identityType;
    private String name;
    private String phoneNumber;
    private String surName;
    private String updatedDate;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentReportDriver() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getBirthDate() {
        return getBirthDate();
    }

    public final String getCreatedDate() {
        return getCreatedDate();
    }

    public final String getId() {
        return getId();
    }

    public final String getIdentityNumber() {
        return getIdentityNumber();
    }

    public final String getIdentityType() {
        return getIdentityType();
    }

    public final String getName() {
        return getName();
    }

    public final String getPhoneNumber() {
        return getPhoneNumber();
    }

    public final String getSurName() {
        return getSurName();
    }

    public final String getUpdatedDate() {
        return getUpdatedDate();
    }

    /* renamed from: realmGet$birthDate, reason: from getter */
    public String getBirthDate() {
        return this.birthDate;
    }

    /* renamed from: realmGet$createdDate, reason: from getter */
    public String getCreatedDate() {
        return this.createdDate;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$identityNumber, reason: from getter */
    public String getIdentityNumber() {
        return this.identityNumber;
    }

    /* renamed from: realmGet$identityType, reason: from getter */
    public String getIdentityType() {
        return this.identityType;
    }

    /* renamed from: realmGet$name, reason: from getter */
    public String getName() {
        return this.name;
    }

    /* renamed from: realmGet$phoneNumber, reason: from getter */
    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    /* renamed from: realmGet$surName, reason: from getter */
    public String getSurName() {
        return this.surName;
    }

    /* renamed from: realmGet$updatedDate, reason: from getter */
    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void realmSet$birthDate(String str) {
        this.birthDate = str;
    }

    public void realmSet$createdDate(String str) {
        this.createdDate = str;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$identityNumber(String str) {
        this.identityNumber = str;
    }

    public void realmSet$identityType(String str) {
        this.identityType = str;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$phoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void realmSet$surName(String str) {
        this.surName = str;
    }

    public void realmSet$updatedDate(String str) {
        this.updatedDate = str;
    }

    public final void setBirthDate(String str) {
        realmSet$birthDate(str);
    }

    public final void setCreatedDate(String str) {
        realmSet$createdDate(str);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setIdentityNumber(String str) {
        realmSet$identityNumber(str);
    }

    public final void setIdentityType(String str) {
        realmSet$identityType(str);
    }

    public final void setName(String str) {
        realmSet$name(str);
    }

    public final void setPhoneNumber(String str) {
        realmSet$phoneNumber(str);
    }

    public final void setSurName(String str) {
        realmSet$surName(str);
    }

    public final void setUpdatedDate(String str) {
        realmSet$updatedDate(str);
    }
}
