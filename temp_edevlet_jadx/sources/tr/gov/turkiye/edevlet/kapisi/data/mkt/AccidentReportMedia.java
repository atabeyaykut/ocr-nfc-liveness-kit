package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import io.realm.internal.n;
import io.realm.v0;
import io.realm.x1;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u001a"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;", "Lio/realm/v0;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", "mediaType", "getMediaType", "setMediaType", "contentType", "getContentType", "setContentType", "createDate", "getCreateDate", "setCreateDate", "updatedDate", "getUpdatedDate", "setUpdatedDate", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentReportMedia extends v0 implements x1 {
    private String contentType;
    private String createDate;
    private String id;
    private String mediaType;
    private String name;
    private String updatedDate;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentReportMedia() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getContentType() {
        return getContentType();
    }

    public final String getCreateDate() {
        return getCreateDate();
    }

    public final String getId() {
        return getId();
    }

    public final String getMediaType() {
        return getMediaType();
    }

    public final String getName() {
        return getName();
    }

    public final String getUpdatedDate() {
        return getUpdatedDate();
    }

    /* renamed from: realmGet$contentType, reason: from getter */
    public String getContentType() {
        return this.contentType;
    }

    /* renamed from: realmGet$createDate, reason: from getter */
    public String getCreateDate() {
        return this.createDate;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$mediaType, reason: from getter */
    public String getMediaType() {
        return this.mediaType;
    }

    /* renamed from: realmGet$name, reason: from getter */
    public String getName() {
        return this.name;
    }

    /* renamed from: realmGet$updatedDate, reason: from getter */
    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void realmSet$contentType(String str) {
        this.contentType = str;
    }

    public void realmSet$createDate(String str) {
        this.createDate = str;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$mediaType(String str) {
        this.mediaType = str;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$updatedDate(String str) {
        this.updatedDate = str;
    }

    public final void setContentType(String str) {
        realmSet$contentType(str);
    }

    public final void setCreateDate(String str) {
        realmSet$createDate(str);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setMediaType(String str) {
        realmSet$mediaType(str);
    }

    public final void setName(String str) {
        realmSet$name(str);
    }

    public final void setUpdatedDate(String str) {
        realmSet$updatedDate(str);
    }
}
