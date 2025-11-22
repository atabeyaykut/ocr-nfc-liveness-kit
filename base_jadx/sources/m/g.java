package m;

import android.net.Uri;
import kotlin.jvm.internal.h;
import p.k;

/* loaded from: classes.dex */
public final class g implements d<String, Uri> {
    @Override // m.d
    public final Uri a(String str, k kVar) {
        Uri uri = Uri.parse(str);
        h.e(uri, "parse(this)");
        return uri;
    }
}
