package tr.gov.turkiye.edevlet.kapisi.data.about;

import io.realm.f1;
import io.realm.internal.n;
import io.realm.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\"\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000b\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000f¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;", "Lio/realm/s0;", "", "id", "I", "getId", "()I", "setId", "(I)V", "", "iconName", "Ljava/lang/String;", "getIconName", "()Ljava/lang/String;", "setIconName", "(Ljava/lang/String;)V", "name", "getName", "setName", "url", "getUrl", "setUrl", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AboutPageModelRealm implements s0, f1 {
    private String iconName;
    private int id;
    private String name;
    private String url;

    /* JADX WARN: Multi-variable type inference failed */
    public AboutPageModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$iconName("");
        realmSet$name("");
        realmSet$url("");
    }

    public final String getIconName() {
        return getIconName();
    }

    public final int getId() {
        return getId();
    }

    public final String getName() {
        return getName();
    }

    public final String getUrl() {
        return getUrl();
    }

    /* renamed from: realmGet$iconName, reason: from getter */
    public String getIconName() {
        return this.iconName;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public int getId() {
        return this.id;
    }

    /* renamed from: realmGet$name, reason: from getter */
    public String getName() {
        return this.name;
    }

    /* renamed from: realmGet$url, reason: from getter */
    public String getUrl() {
        return this.url;
    }

    public void realmSet$iconName(String str) {
        this.iconName = str;
    }

    public void realmSet$id(int r12) {
        this.id = r12;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$url(String str) {
        this.url = str;
    }

    public final void setIconName(String str) {
        h.f(str, "<set-?>");
        realmSet$iconName(str);
    }

    public final void setId(int r12) {
        realmSet$id(r12);
    }

    public final void setName(String str) {
        h.f(str, "<set-?>");
        realmSet$name(str);
    }

    public final void setUrl(String str) {
        h.f(str, "<set-?>");
        realmSet$url(str);
    }
}
