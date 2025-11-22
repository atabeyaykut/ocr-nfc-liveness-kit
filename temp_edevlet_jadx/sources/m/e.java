package m;

import android.content.Context;
import android.net.Uri;
import kotlin.jvm.internal.h;
import p.k;

/* loaded from: classes.dex */
public final class e implements d<Integer, Uri> {
    @Override // m.d
    public final Uri a(Integer num, k kVar) {
        int r32 = num.intValue();
        Context context = kVar.f12166a;
        boolean z10 = context.getResources().getResourceEntryName(r32) != null;
        if (!z10) {
            return null;
        }
        Uri uri = Uri.parse("android.resource://" + ((Object) context.getPackageName()) + '/' + r32);
        h.e(uri, "parse(this)");
        return uri;
    }
}
