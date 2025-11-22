package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveInfo;", "", "comment", "", "createDate", "id", "updateDate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getComment", "()Ljava/lang/String;", "getCreateDate", "getId", "getUpdateDate", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class DescriptionSaveInfo {

    @k(name = "comment")
    private final String comment;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "id")
    private final String id;

    @k(name = "updateDate")
    private final String updateDate;

    public DescriptionSaveInfo(String comment, String createDate, String id2, String updateDate) {
        h.f(comment, "comment");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(updateDate, "updateDate");
        this.comment = comment;
        this.createDate = createDate;
        this.id = id2;
        this.updateDate = updateDate;
    }

    public static /* synthetic */ DescriptionSaveInfo copy$default(DescriptionSaveInfo descriptionSaveInfo, String str, String str2, String str3, String str4, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = descriptionSaveInfo.comment;
        }
        if ((r52 & 2) != 0) {
            str2 = descriptionSaveInfo.createDate;
        }
        if ((r52 & 4) != 0) {
            str3 = descriptionSaveInfo.id;
        }
        if ((r52 & 8) != 0) {
            str4 = descriptionSaveInfo.updateDate;
        }
        return descriptionSaveInfo.copy(str, str2, str3, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getComment() {
        return this.comment;
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
    public final String getUpdateDate() {
        return this.updateDate;
    }

    public final DescriptionSaveInfo copy(String comment, String createDate, String id2, String updateDate) {
        h.f(comment, "comment");
        h.f(createDate, "createDate");
        h.f(id2, "id");
        h.f(updateDate, "updateDate");
        return new DescriptionSaveInfo(comment, createDate, id2, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DescriptionSaveInfo)) {
            return false;
        }
        DescriptionSaveInfo descriptionSaveInfo = (DescriptionSaveInfo) other;
        return h.a(this.comment, descriptionSaveInfo.comment) && h.a(this.createDate, descriptionSaveInfo.createDate) && h.a(this.id, descriptionSaveInfo.id) && h.a(this.updateDate, descriptionSaveInfo.updateDate);
    }

    public final String getComment() {
        return this.comment;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final String getId() {
        return this.id;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    public int hashCode() {
        return this.updateDate.hashCode() + a.a(this.id, a.a(this.createDate, this.comment.hashCode() * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("DescriptionSaveInfo(comment=");
        sb2.append(this.comment);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", id=");
        sb2.append(this.id);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
