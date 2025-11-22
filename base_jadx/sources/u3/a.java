package u3;

import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Locale;
import r3.j;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f17871a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17872b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17873c;

    public a(@NonNull String str, @NonNull String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            for (String str2 : strArr) {
                if (sb2.length() > 1) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
            sb2.append("] ");
            string = sb2.toString();
        }
        this.f17872b = string;
        this.f17871a = str;
        new j(str, null);
        int r72 = 2;
        while (r72 <= 7 && !Log.isLoggable(this.f17871a, r72)) {
            r72++;
        }
        this.f17873c = r72;
    }

    public final void a(@NonNull String str, @NonNull Object... objArr) {
        if (this.f17873c <= 3) {
            if (objArr.length > 0) {
                str = String.format(Locale.US, str, objArr);
            }
            Log.d(this.f17871a, this.f17872b.concat(str));
        }
    }
}
