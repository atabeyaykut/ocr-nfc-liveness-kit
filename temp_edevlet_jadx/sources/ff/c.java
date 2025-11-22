package ff;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import java.util.Locale;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class c extends ContextWrapper {
    public c(Context context) {
        super(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        a aVar = a.f5619a;
        Locale localeA = a.a(this);
        aVar.getClass();
        Locale localeC = a.c(this, localeA);
        Configuration configuration = super.getResources().getConfiguration();
        if (Build.VERSION.SDK_INT >= 26) {
            configuration.setLocales(new LocaleList(localeC));
        } else {
            configuration.setLocale(localeC);
        }
        DisplayMetrics displayMetrics = super.getResources().getDisplayMetrics();
        h.e(displayMetrics, "super.getResources().displayMetrics");
        return new Resources(getAssets(), displayMetrics, configuration);
    }
}
