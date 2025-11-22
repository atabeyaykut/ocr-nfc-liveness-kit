package r3;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.ConfigurationCompat;
import java.util.Locale;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleArrayMap f13907a = new SimpleArrayMap();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public static Locale f13908b;

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            Context context2 = y3.c.a(context).f19314a;
            return context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    @NonNull
    public static String b(int r12, Context context) {
        return context.getResources().getString(r12 != 1 ? r12 != 2 ? r12 != 3 ? R.string.ok : tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_enable_button : tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_update_button : tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_install_button);
    }

    @NonNull
    public static String c(int r52, Context context) {
        Resources resources = context.getResources();
        String strA = a(context);
        if (r52 == 1) {
            return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_install_text, strA);
        }
        if (r52 == 2) {
            return w3.b.a(context) ? resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_wear_update_text) : resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_update_text, strA);
        }
        if (r52 == 3) {
            return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_enable_text, strA);
        }
        if (r52 == 5) {
            return e(context, "common_google_play_services_invalid_account_text", strA);
        }
        if (r52 == 7) {
            return e(context, "common_google_play_services_network_error_text", strA);
        }
        if (r52 == 9) {
            return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_unsupported_text, strA);
        }
        if (r52 == 20) {
            return e(context, "common_google_play_services_restricted_profile_text", strA);
        }
        switch (r52) {
            case 16:
                return e(context, "common_google_play_services_api_unavailable_text", strA);
            case 17:
                return e(context, "common_google_play_services_sign_in_failed_text", strA);
            case 18:
                return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_updating_text, strA);
            default:
                return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_unknown_issue, strA);
        }
    }

    @Nullable
    public static String d(int r32, Context context) {
        String str;
        Resources resources = context.getResources();
        switch (r32) {
            case 1:
                return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return f(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return f(context, "common_google_play_services_network_error_title");
            case 8:
                str = "Internal error occurred. Please see logs for detailed information";
                break;
            case 9:
                str = "Google Play services is invalid. Cannot recover.";
                break;
            case 10:
                str = "Developer error occurred. Please see logs for detailed information";
                break;
            case 11:
                str = "The application is not licensed to the user.";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                str = "Unexpected error code " + r32;
                break;
            case 16:
                str = "One of the API components you attempted to connect to is not available.";
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return f(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return f(context, "common_google_play_services_restricted_profile_title");
        }
        Log.e("GoogleApiAvailability", str);
        return null;
    }

    public static String e(Context context, String str, String str2) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        String strF = f(context, str);
        if (strF == null) {
            strF = resources.getString(tr.gov.turkiye.edevlet.kapisi.R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, strF, str2);
    }

    @Nullable
    public static String f(Context context, String str) {
        Resources resourcesForApplication;
        SimpleArrayMap simpleArrayMap = f13907a;
        synchronized (simpleArrayMap) {
            Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
            if (!locale.equals(f13908b)) {
                simpleArrayMap.clear();
                f13908b = locale;
            }
            String str2 = (String) simpleArrayMap.get(str);
            if (str2 != null) {
                return str2;
            }
            int r32 = m3.i.f9953e;
            try {
                resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
            } catch (PackageManager.NameNotFoundException unused) {
                resourcesForApplication = null;
            }
            if (resourcesForApplication == null) {
                return null;
            }
            int identifier = resourcesForApplication.getIdentifier(str, TypedValues.Custom.S_STRING, "com.google.android.gms");
            if (identifier == 0) {
                Log.w("GoogleApiAvailability", "Missing resource: ".concat(str));
                return null;
            }
            String string = resourcesForApplication.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                Log.w("GoogleApiAvailability", "Got empty resource: ".concat(str));
                return null;
            }
            f13907a.put(str, string);
            return string;
        }
    }
}
