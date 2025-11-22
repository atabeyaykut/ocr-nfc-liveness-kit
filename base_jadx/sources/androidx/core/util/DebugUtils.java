package androidx.core.util;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class DebugUtils {
    private DebugUtils() {
    }

    public static void buildShortClassTag(Object obj, StringBuilder sb2) {
        String hexString;
        int r12;
        if (obj == null) {
            hexString = "null";
        } else {
            String simpleName = obj.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (r12 = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(r12 + 1);
            }
            sb2.append(simpleName);
            sb2.append('{');
            hexString = Integer.toHexString(System.identityHashCode(obj));
        }
        sb2.append(hexString);
    }
}
