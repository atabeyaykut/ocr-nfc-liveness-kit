package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.camera.camera2.internal.c;

/* loaded from: classes.dex */
public final class UriCompat {
    private UriCompat() {
    }

    @NonNull
    public static String toSafeString(@NonNull Uri uri) {
        String scheme = uri.getScheme();
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (scheme != null) {
            if (scheme.equalsIgnoreCase("tel") || scheme.equalsIgnoreCase("sip") || scheme.equalsIgnoreCase("sms") || scheme.equalsIgnoreCase("smsto") || scheme.equalsIgnoreCase("mailto") || scheme.equalsIgnoreCase("nfc")) {
                StringBuilder sb2 = new StringBuilder(64);
                sb2.append(scheme);
                sb2.append(':');
                if (schemeSpecificPart != null) {
                    for (int r02 = 0; r02 < schemeSpecificPart.length(); r02++) {
                        char cCharAt = schemeSpecificPart.charAt(r02);
                        if (cCharAt != '-' && cCharAt != '@' && cCharAt != '.') {
                            cCharAt = 'x';
                        }
                        sb2.append(cCharAt);
                    }
                }
                return sb2.toString();
            }
            if (scheme.equalsIgnoreCase("http") || scheme.equalsIgnoreCase("https") || scheme.equalsIgnoreCase("ftp") || scheme.equalsIgnoreCase("rtsp")) {
                StringBuilder sb3 = new StringBuilder("//");
                sb3.append(uri.getHost() != null ? uri.getHost() : "");
                schemeSpecificPart = c.h(sb3, uri.getPort() != -1 ? ":" + uri.getPort() : "", "/...");
            }
        }
        StringBuilder sb4 = new StringBuilder(64);
        if (scheme != null) {
            sb4.append(scheme);
            sb4.append(':');
        }
        if (schemeSpecificPart != null) {
            sb4.append(schemeSpecificPart);
        }
        return sb4.toString();
    }
}
