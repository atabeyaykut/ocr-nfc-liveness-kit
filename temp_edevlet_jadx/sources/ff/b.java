package ff;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import androidx.browser.trusted.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.h;
import l9.m;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f5620a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5621b;

    /* renamed from: c, reason: collision with root package name */
    public Locale f5622c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList<e> f5623d;

    public b(Activity activity) {
        h.f(activity, "activity");
        this.f5620a = activity;
        this.f5623d = new ArrayList<>();
    }

    public static Configuration f(Context context) {
        h.f(context, "context");
        a aVar = a.f5619a;
        Locale localeA = a.a(context);
        aVar.getClass();
        Locale localeC = a.c(context, localeA);
        Configuration configuration = context.getResources().getConfiguration();
        if (Build.VERSION.SDK_INT >= 26) {
            yd.a.f19652a.c("Language Locale 6: " + localeC.getLanguage(), new Object[0]);
            configuration.setLocale(localeC);
            LocaleList localeList = new LocaleList(localeC);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
        } else {
            configuration.setLocale(localeC);
        }
        h.e(configuration, "config.apply {\n         …tLocale(locale)\n        }");
        return configuration;
    }

    public final void a(Context context) {
        a aVar = a.f5619a;
        Locale localeA = a.a(context);
        aVar.getClass();
        Locale localeC = a.c(context, localeA);
        if (this.f5622c == null) {
            this.f5622c = new Locale("tr");
        }
        Locale locale = this.f5622c;
        if (locale == null) {
            h.n("currentLanguage");
            throw null;
        }
        if (h.a(locale.toString(), localeC.toString())) {
            return;
        }
        this.f5621b = true;
        c();
    }

    public final void b(Resources resources) {
        Locale localeB = a.b(this.f5620a);
        Configuration configuration = resources.getConfiguration();
        if (Build.VERSION.SDK_INT < 26) {
            configuration.locale = localeB;
            configuration.setLayoutDirection(localeB);
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        } else {
            configuration.setLocale(localeB);
            LocaleList localeList = new LocaleList(localeB);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
        }
    }

    public final void c() {
        Iterator<e> it = this.f5623d.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        Activity activity = this.f5620a;
        activity.getIntent().putExtra("activity_locale_changed", true);
        activity.recreate();
    }

    public final void d() {
        m mVar;
        Activity activity = this.f5620a;
        Locale localeB = a.b(activity);
        if (localeB != null) {
            this.f5622c = localeB;
            mVar = m.f9594a;
        } else {
            mVar = null;
        }
        if (mVar == null) {
            a(activity);
        }
        if (activity.getIntent().getBooleanExtra("activity_locale_changed", false)) {
            this.f5621b = true;
            activity.getIntent().removeExtra("activity_locale_changed");
        }
    }

    public final void e(Context context) {
        h.f(context, "context");
        new Handler().post(new j(3, this, context));
    }
}
