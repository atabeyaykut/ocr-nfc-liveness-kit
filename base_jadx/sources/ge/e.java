package ge;

import java.util.Locale;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import x9.l;

/* loaded from: classes3.dex */
public final class e extends j implements l<String, CharSequence> {

    /* renamed from: a, reason: collision with root package name */
    public static final e f6702a = new e();

    public e() {
        super(1);
    }

    @Override // x9.l
    public final CharSequence invoke(String str) {
        String name = str;
        h.f(name, "name");
        String lowerCase = name.toLowerCase(new Locale("tr"));
        h.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        if (!(lowerCase.length() > 0)) {
            return lowerCase;
        }
        StringBuilder sb2 = new StringBuilder();
        char cCharAt = lowerCase.charAt(0);
        sb2.append((Object) (Character.isLowerCase(cCharAt) ? a6.a.D(cCharAt, new Locale("tr")) : String.valueOf(cCharAt)));
        String strSubstring = lowerCase.substring(1);
        h.e(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb2.append(strSubstring);
        return sb2.toString();
    }
}
