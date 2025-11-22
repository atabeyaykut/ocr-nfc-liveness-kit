package tr.gov.turkiye.edevlet.kapisi.data.service;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageItemModel;", "", "iconName", "", "id", "", "name", "url", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getIconName", "()Ljava/lang/String;", "getId", "()I", "getName", "getUrl", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class AboutPageItemModel {

    @k(name = "iconName")
    private final String iconName;

    @k(name = "id")
    private final int id;

    @k(name = "name")
    private final String name;

    @k(name = "url")
    private final String url;

    public AboutPageItemModel(String iconName, int r32, String name, String url) {
        h.f(iconName, "iconName");
        h.f(name, "name");
        h.f(url, "url");
        this.iconName = iconName;
        this.id = r32;
        this.name = name;
        this.url = url;
    }

    public static /* synthetic */ AboutPageItemModel copy$default(AboutPageItemModel aboutPageItemModel, String str, int r22, String str2, String str3, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = aboutPageItemModel.iconName;
        }
        if ((r52 & 2) != 0) {
            r22 = aboutPageItemModel.id;
        }
        if ((r52 & 4) != 0) {
            str2 = aboutPageItemModel.name;
        }
        if ((r52 & 8) != 0) {
            str3 = aboutPageItemModel.url;
        }
        return aboutPageItemModel.copy(str, r22, str2, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getIconName() {
        return this.iconName;
    }

    /* renamed from: component2, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    public final AboutPageItemModel copy(String iconName, int id2, String name, String url) {
        h.f(iconName, "iconName");
        h.f(name, "name");
        h.f(url, "url");
        return new AboutPageItemModel(iconName, id2, name, url);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AboutPageItemModel)) {
            return false;
        }
        AboutPageItemModel aboutPageItemModel = (AboutPageItemModel) other;
        return h.a(this.iconName, aboutPageItemModel.iconName) && this.id == aboutPageItemModel.id && h.a(this.name, aboutPageItemModel.name) && h.a(this.url, aboutPageItemModel.url);
    }

    public final String getIconName() {
        return this.iconName;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.url.hashCode() + a.a(this.name, ((this.iconName.hashCode() * 31) + this.id) * 31, 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AboutPageItemModel(iconName=");
        sb2.append(this.iconName);
        sb2.append(", id=");
        sb2.append(this.id);
        sb2.append(", name=");
        sb2.append(this.name);
        sb2.append(", url=");
        return android.support.v4.media.a.h(sb2, this.url, ')');
    }
}
