package d5;

import android.net.Uri;

/* loaded from: classes.dex */
public final class b {
    static {
        new d();
    }

    public static Uri a() {
        String strValueOf = String.valueOf(Uri.encode("com.google.android.gms.clearcut.public"));
        return Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
