package zg;

import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListDataItem;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final MediaListDataItem f20292a;

    /* renamed from: b, reason: collision with root package name */
    public final String f20293b;

    public a() {
        this(0);
    }

    public /* synthetic */ a(int r22) {
        this(null, "");
    }

    public a(MediaListDataItem mediaListDataItem, String str) {
        this.f20292a = mediaListDataItem;
        this.f20293b = str;
    }

    public static a a(a aVar, String str) {
        return new a(aVar.f20292a, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return kotlin.jvm.internal.h.a(this.f20292a, aVar.f20292a) && kotlin.jvm.internal.h.a(this.f20293b, aVar.f20293b);
    }

    public final int hashCode() {
        MediaListDataItem mediaListDataItem = this.f20292a;
        int r12 = (mediaListDataItem == null ? 0 : mediaListDataItem.hashCode()) * 31;
        String str = this.f20293b;
        return r12 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MediaItemModel(media=");
        sb2.append(this.f20292a);
        sb2.append(", content=");
        return android.support.v4.media.a.h(sb2, this.f20293b, ')');
    }
}
