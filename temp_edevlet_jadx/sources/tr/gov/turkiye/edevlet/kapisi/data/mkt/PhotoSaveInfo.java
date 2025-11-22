package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;", "", "contentType", "", "createDate", "id", "mediaType", "name", "updateDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContentType", "()Ljava/lang/String;", "getCreateDate", "getId", "getMediaType", "getName", "getUpdateDate", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class PhotoSaveInfo {

    @k(name = "contentType")
    private final String contentType;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "id")
    private final String id;

    @k(name = "mediaType")
    private final String mediaType;

    @k(name = "name")
    private final String name;

    @k(name = "updateDate")
    private final String updateDate;

    public PhotoSaveInfo(String contentType, String createDate, String id2, String mediaType, String name, String updateDate) {
        h.f(contentType, "contentType");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(mediaType, "mediaType");
        h.f(name, "name");
        h.f(updateDate, "updateDate");
        this.contentType = contentType;
        this.createDate = createDate;
        this.id = id2;
        this.mediaType = mediaType;
        this.name = name;
        this.updateDate = updateDate;
    }

    public static /* synthetic */ PhotoSaveInfo copy$default(PhotoSaveInfo photoSaveInfo, String str, String str2, String str3, String str4, String str5, String str6, int r11, Object obj) {
        if ((r11 & 1) != 0) {
            str = photoSaveInfo.contentType;
        }
        if ((r11 & 2) != 0) {
            str2 = photoSaveInfo.createDate;
        }
        String str7 = str2;
        if ((r11 & 4) != 0) {
            str3 = photoSaveInfo.id;
        }
        String str8 = str3;
        if ((r11 & 8) != 0) {
            str4 = photoSaveInfo.mediaType;
        }
        String str9 = str4;
        if ((r11 & 16) != 0) {
            str5 = photoSaveInfo.name;
        }
        String str10 = str5;
        if ((r11 & 32) != 0) {
            str6 = photoSaveInfo.updateDate;
        }
        return photoSaveInfo.copy(str, str7, str8, str9, str10, str6);
    }

    /* renamed from: component1, reason: from getter */
    public final String getContentType() {
        return this.contentType;
    }

    /* renamed from: component2, reason: from getter */
    public final String getCreateDate() {
        return this.createDate;
    }

    /* renamed from: component3, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component4, reason: from getter */
    public final String getMediaType() {
        return this.mediaType;
    }

    /* renamed from: component5, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component6, reason: from getter */
    public final String getUpdateDate() {
        return this.updateDate;
    }

    public final PhotoSaveInfo copy(String contentType, String createDate, String id2, String mediaType, String name, String updateDate) {
        h.f(contentType, "contentType");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(mediaType, "mediaType");
        h.f(name, "name");
        h.f(updateDate, "updateDate");
        return new PhotoSaveInfo(contentType, createDate, id2, mediaType, name, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PhotoSaveInfo)) {
            return false;
        }
        PhotoSaveInfo photoSaveInfo = (PhotoSaveInfo) other;
        return h.a(this.contentType, photoSaveInfo.contentType) && h.a(this.createDate, photoSaveInfo.createDate) && h.a(this.id, photoSaveInfo.id) && h.a(this.mediaType, photoSaveInfo.mediaType) && h.a(this.name, photoSaveInfo.name) && h.a(this.updateDate, photoSaveInfo.updateDate);
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final String getId() {
        return this.id;
    }

    public final String getMediaType() {
        return this.mediaType;
    }

    public final String getName() {
        return this.name;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    public int hashCode() {
        return this.updateDate.hashCode() + a.a(this.name, a.a(this.mediaType, a.a(this.id, a.a(this.createDate, this.contentType.hashCode() * 31, 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PhotoSaveInfo(contentType=");
        sb2.append(this.contentType);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", id=");
        sb2.append(this.id);
        sb2.append(", mediaType=");
        sb2.append(this.mediaType);
        sb2.append(", name=");
        sb2.append(this.name);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
