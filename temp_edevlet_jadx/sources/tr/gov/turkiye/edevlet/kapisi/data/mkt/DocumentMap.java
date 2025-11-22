package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DocumentMap;", "", "document", "", NotificationCompat.CATEGORY_STATUS, "", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "getDocument", "()Ljava/lang/String;", "getStatus", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DocumentMap;", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class DocumentMap {

    @k(name = "document")
    private final String document;

    @k(name = NotificationCompat.CATEGORY_STATUS)
    private final Boolean status;

    public DocumentMap(String str, Boolean bool) {
        this.document = str;
        this.status = bool;
    }

    public static /* synthetic */ DocumentMap copy$default(DocumentMap documentMap, String str, Boolean bool, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = documentMap.document;
        }
        if ((r32 & 2) != 0) {
            bool = documentMap.status;
        }
        return documentMap.copy(str, bool);
    }

    /* renamed from: component1, reason: from getter */
    public final String getDocument() {
        return this.document;
    }

    /* renamed from: component2, reason: from getter */
    public final Boolean getStatus() {
        return this.status;
    }

    public final DocumentMap copy(String document, Boolean status) {
        return new DocumentMap(document, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DocumentMap)) {
            return false;
        }
        DocumentMap documentMap = (DocumentMap) other;
        return h.a(this.document, documentMap.document) && h.a(this.status, documentMap.status);
    }

    public final String getDocument() {
        return this.document;
    }

    public final Boolean getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.document;
        int r02 = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.status;
        return r02 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "DocumentMap(document=" + this.document + ", status=" + this.status + ')';
    }
}
