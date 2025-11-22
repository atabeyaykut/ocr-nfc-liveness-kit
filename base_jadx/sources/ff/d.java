package ff;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
import kotlin.jvm.internal.h;
import mc.j;

/* loaded from: classes3.dex */
public final class d {
    public static Context a(Context context) {
        Locale locale;
        String str;
        c cVar;
        Configuration configuration;
        Configuration configuration2 = context.getResources().getConfiguration();
        h.e(configuration2, "baseContext.resources.configuration");
        int r12 = Build.VERSION.SDK_INT;
        if (r12 >= 26) {
            locale = configuration2.getLocales().get(0);
            str = "{\n            configurat….locales.get(0)\n        }";
        } else {
            locale = configuration2.locale;
            str = "{\n            configuration.locale\n        }";
        }
        h.e(locale, str);
        a aVar = a.f5619a;
        Locale localeA = a.a(context);
        aVar.getClass();
        Locale localeC = a.c(context, localeA);
        if (j.x(locale.toString(), localeC.toString())) {
            return context;
        }
        if (r12 >= 26) {
            cVar = new c(context);
            configuration = cVar.getResources().getConfiguration();
            configuration.setLocale(localeC);
            LocaleList localeList = new LocaleList(localeC);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
        } else {
            cVar = new c(context);
            configuration = cVar.getResources().getConfiguration();
            configuration.setLocale(localeC);
        }
        Context contextCreateConfigurationContext = cVar.createConfigurationContext(configuration);
        h.e(contextCreateConfigurationContext, "{\n                    va…config)\n                }");
        return contextCreateConfigurationContext;
    }
}
