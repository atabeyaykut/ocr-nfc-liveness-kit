package androidx.media;

import android.os.Bundle;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class MediaBrowserCompatUtils {
    private MediaBrowserCompatUtils() {
    }

    public static boolean areSameOptions(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        return bundle == null ? bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1 : bundle2 == null ? bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1 : bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
    }

    public static boolean hasDuplicatedItems(Bundle bundle, Bundle bundle2) {
        int r6;
        int r22;
        int r02;
        int r23 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE", -1);
        int r03 = bundle2 == null ? -1 : bundle2.getInt("android.media.browse.extra.PAGE", -1);
        int r62 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        int r72 = bundle2 == null ? -1 : bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        int r32 = Integer.MAX_VALUE;
        if (r23 == -1 || r62 == -1) {
            r6 = Integer.MAX_VALUE;
            r22 = 0;
        } else {
            r22 = r23 * r62;
            r6 = (r62 + r22) - 1;
        }
        if (r03 == -1 || r72 == -1) {
            r02 = 0;
        } else {
            r02 = r03 * r72;
            r32 = (r72 + r02) - 1;
        }
        return r6 >= r02 && r32 >= r22;
    }
}
