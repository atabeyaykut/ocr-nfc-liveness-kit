package hh;

import android.net.Uri;

/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final String f7187a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f7188b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7189c;

    /* renamed from: d, reason: collision with root package name */
    public final String f7190d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7191e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final String f7192g;

    public i(String photoName, Uri uri, String photoExtension, boolean z10, String content) {
        kotlin.jvm.internal.h.f(photoName, "photoName");
        kotlin.jvm.internal.h.f(photoExtension, "photoExtension");
        kotlin.jvm.internal.h.f(content, "content");
        this.f7187a = photoName;
        this.f7188b = uri;
        this.f7189c = photoExtension;
        this.f7190d = "ACCIDENT_PHOTO";
        this.f7191e = z10;
        this.f = false;
        this.f7192g = content;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return kotlin.jvm.internal.h.a(this.f7187a, iVar.f7187a) && kotlin.jvm.internal.h.a(this.f7188b, iVar.f7188b) && kotlin.jvm.internal.h.a(this.f7189c, iVar.f7189c) && kotlin.jvm.internal.h.a(this.f7190d, iVar.f7190d) && this.f7191e == iVar.f7191e && this.f == iVar.f && kotlin.jvm.internal.h.a(this.f7192g, iVar.f7192g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.room.util.a.a(this.f7190d, androidx.room.util.a.a(this.f7189c, (this.f7188b.hashCode() + (this.f7187a.hashCode() * 31)) * 31, 31), 31);
        boolean z10 = this.f7191e;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r03 = (r02 + r22) * 31;
        boolean z11 = this.f;
        return this.f7192g.hashCode() + ((r03 + (z11 ? 1 : z11 ? 1 : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("PhotoItemModel(photoName=");
        sb2.append(this.f7187a);
        sb2.append(", photoPath=");
        sb2.append(this.f7188b);
        sb2.append(", photoExtension=");
        sb2.append(this.f7189c);
        sb2.append(", contentType=");
        sb2.append(this.f7190d);
        sb2.append(", isDefaultPhoto=");
        sb2.append(this.f7191e);
        sb2.append(", isUploaded=");
        sb2.append(this.f);
        sb2.append(", content=");
        return android.support.v4.media.a.h(sb2, this.f7192g, ')');
    }
}
