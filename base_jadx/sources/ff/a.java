package ff;

import android.content.Context;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.h;
import mc.n;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f5619a = new a();

    public static final Locale a(Context context) {
        Locale locale;
        h.f(context, "context");
        f5619a.getClass();
        String string = context.getSharedPreferences("pref_language", 0).getString("key_default_language", "tr");
        if (string == null) {
            return new Locale("tr");
        }
        List listY = n.Y(string, new String[]{"_"});
        int size = listY.size();
        if (size == 1) {
            locale = new Locale((String) listY.get(0));
        } else if (size == 2) {
            locale = new Locale((String) listY.get(0), (String) listY.get(1));
        } else {
            if (size != 3) {
                return new Locale("tr");
            }
            locale = new Locale((String) listY.get(0), (String) listY.get(1), (String) listY.get(2));
        }
        return locale;
    }

    public static final Locale b(Context context) {
        h.f(context, "context");
        f5619a.getClass();
        String string = context.getSharedPreferences("pref_language", 0).getString("key_language", "tr");
        if (string == null) {
            return null;
        }
        List listY = n.Y(string, new String[]{"_"});
        int size = listY.size();
        Locale locale = size != 1 ? size != 2 ? size != 3 ? null : new Locale((String) listY.get(0), (String) listY.get(1), (String) listY.get(2)) : new Locale((String) listY.get(0), (String) listY.get(1)) : new Locale((String) listY.get(0));
        if (locale == null) {
            return null;
        }
        return locale;
    }

    public static Locale c(Context context, Locale locale) {
        h.f(context, "context");
        Locale localeB = b(context);
        if (localeB != null) {
            return localeB;
        }
        d(context, locale);
        return locale;
    }

    public static final void d(Context context, Locale locale) {
        h.f(context, "context");
        Locale.setDefault(locale);
        String string = locale.toString();
        h.e(string, "locale.toString()");
        f5619a.getClass();
        context.getSharedPreferences("pref_language", 0).edit().putString("key_language", string).apply();
    }
}
