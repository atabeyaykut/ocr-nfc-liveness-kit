package g7;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class p0 {

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f5898d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a, reason: collision with root package name */
    public final String f5899a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5900b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5901c;

    public p0(String str, String str2) {
        String strSubstring;
        if (str2 == null || !str2.startsWith("/topics/")) {
            strSubstring = str2;
        } else {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str));
            strSubstring = str2.substring(8);
        }
        if (strSubstring == null || !f5898d.matcher(strSubstring).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", strSubstring, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        this.f5899a = strSubstring;
        this.f5900b = str;
        this.f5901c = android.support.v4.media.a.i(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()), str, "!", str2);
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof p0)) {
            return false;
        }
        p0 p0Var = (p0) obj;
        return this.f5899a.equals(p0Var.f5899a) && this.f5900b.equals(p0Var.f5900b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5900b, this.f5899a});
    }
}
