package l;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import kotlin.jvm.internal.h;
import p.k;

/* loaded from: classes.dex */
public final class c implements b<Uri> {
    @Override // l.b
    public final String a(Uri uri, k kVar) {
        Uri uri2 = uri;
        if (!h.a(uri2.getScheme(), "android.resource")) {
            return uri2.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(uri2);
        sb2.append('-');
        Configuration configuration = kVar.f12166a.getResources().getConfiguration();
        Bitmap.Config[] configArr = u.c.f17726a;
        sb2.append(configuration.uiMode & 48);
        return sb2.toString();
    }
}
