package tr.gov.turkiye.edevlet.kapisi.data.city;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;", "", "code", "", "name", "", "(ILjava/lang/String;)V", "getCode", "()I", "setCode", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InstitutionCityListContent {

    @k(name = "code")
    private int code;

    @k(name = "name")
    private String name;

    public InstitutionCityListContent(int r22, String name) {
        h.f(name, "name");
        this.code = r22;
        this.name = name;
    }

    public static /* synthetic */ InstitutionCityListContent copy$default(InstitutionCityListContent institutionCityListContent, int r12, String str, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            r12 = institutionCityListContent.code;
        }
        if ((r32 & 2) != 0) {
            str = institutionCityListContent.name;
        }
        return institutionCityListContent.copy(r12, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    /* renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final InstitutionCityListContent copy(int code, String name) {
        h.f(name, "name");
        return new InstitutionCityListContent(code, name);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstitutionCityListContent)) {
            return false;
        }
        InstitutionCityListContent institutionCityListContent = (InstitutionCityListContent) other;
        return this.code == institutionCityListContent.code && h.a(this.name, institutionCityListContent.name);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return this.name.hashCode() + (this.code * 31);
    }

    public final void setCode(int r12) {
        this.code = r12;
    }

    public final void setName(String str) {
        h.f(str, "<set-?>");
        this.name = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionCityListContent(code=");
        sb2.append(this.code);
        sb2.append(", name=");
        return a.h(sb2, this.name, ')');
    }
}
