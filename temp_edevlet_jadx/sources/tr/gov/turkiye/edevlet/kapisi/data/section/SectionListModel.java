package tr.gov.turkiye.edevlet.kapisi.data.section;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModel;", "", "sectionListData", "Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;", "login", "", "returnX", "", "(Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;IZ)V", "getLogin", "()I", "getReturnX", "()Z", "getSectionListData", "()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SectionListModel {

    @k(name = "login")
    private final int login;

    @k(name = "return")
    private final boolean returnX;

    @k(name = "data")
    private final SectionListData sectionListData;

    public SectionListModel(SectionListData sectionListData, int r32, boolean z10) {
        h.f(sectionListData, "sectionListData");
        this.sectionListData = sectionListData;
        this.login = r32;
        this.returnX = z10;
    }

    public static /* synthetic */ SectionListModel copy$default(SectionListModel sectionListModel, SectionListData sectionListData, int r22, boolean z10, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            sectionListData = sectionListModel.sectionListData;
        }
        if ((r42 & 2) != 0) {
            r22 = sectionListModel.login;
        }
        if ((r42 & 4) != 0) {
            z10 = sectionListModel.returnX;
        }
        return sectionListModel.copy(sectionListData, r22, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final SectionListData getSectionListData() {
        return this.sectionListData;
    }

    /* renamed from: component2, reason: from getter */
    public final int getLogin() {
        return this.login;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getReturnX() {
        return this.returnX;
    }

    public final SectionListModel copy(SectionListData sectionListData, int login, boolean returnX) {
        h.f(sectionListData, "sectionListData");
        return new SectionListModel(sectionListData, login, returnX);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SectionListModel)) {
            return false;
        }
        SectionListModel sectionListModel = (SectionListModel) other;
        return h.a(this.sectionListData, sectionListModel.sectionListData) && this.login == sectionListModel.login && this.returnX == sectionListModel.returnX;
    }

    public final int getLogin() {
        return this.login;
    }

    public final boolean getReturnX() {
        return this.returnX;
    }

    public final SectionListData getSectionListData() {
        return this.sectionListData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = ((this.sectionListData.hashCode() * 31) + this.login) * 31;
        boolean z10 = this.returnX;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SectionListModel(sectionListData=");
        sb2.append(this.sectionListData);
        sb2.append(", login=");
        sb2.append(this.login);
        sb2.append(", returnX=");
        return b.f(sb2, this.returnX, ')');
    }
}
