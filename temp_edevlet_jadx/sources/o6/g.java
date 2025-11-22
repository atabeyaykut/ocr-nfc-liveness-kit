package o6;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.clearcut.z;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g implements f {
    @Override // o6.f
    public final p6.e a(z zVar, JSONObject jSONObject) throws JSONException {
        long jCurrentTimeMillis;
        jSONObject.optInt("settings_version", 0);
        int r02 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("fabric");
        JSONObject jSONObject3 = jSONObject.getJSONObject("app");
        boolean zEquals = "new".equals(jSONObject3.getString(NotificationCompat.CATEGORY_STATUS));
        String string = jSONObject2.getString("bundle_id");
        jSONObject2.getString("org_id");
        if (!zEquals) {
            String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string);
        }
        Locale locale = Locale.US;
        String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string);
        String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string);
        jSONObject3.optBoolean("update_required", false);
        jSONObject3.optInt("report_upload_variant", 0);
        jSONObject3.optInt("native_report_upload_variant", 0);
        p6.a aVar = new p6.a();
        p6.c cVar = new p6.c(8);
        JSONObject jSONObject4 = jSONObject.getJSONObject("features");
        p6.b bVar = new p6.b(jSONObject4.optBoolean("collect_reports", true), jSONObject4.optBoolean("collect_anrs", false));
        long j10 = r02;
        if (jSONObject.has("expires_at")) {
            jCurrentTimeMillis = jSONObject.optLong("expires_at");
        } else {
            zVar.getClass();
            jCurrentTimeMillis = (j10 * 1000) + System.currentTimeMillis();
        }
        return new p6.e(jCurrentTimeMillis, aVar, cVar, bVar);
    }
}
