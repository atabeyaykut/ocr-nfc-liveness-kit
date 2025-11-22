package o6;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.clearcut.z;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a implements f {
    @Override // o6.f
    public final p6.e a(z zVar, JSONObject jSONObject) throws JSONException {
        long jCurrentTimeMillis;
        jSONObject.optInt("settings_version", 0);
        int r02 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("app");
        jSONObject2.getString(NotificationCompat.CATEGORY_STATUS);
        jSONObject2.getString("url");
        jSONObject2.getString("reports_url");
        jSONObject2.getString("ndk_reports_url");
        jSONObject2.optBoolean("update_required", false);
        p6.a aVar = new p6.a(0);
        p6.c cVar = new p6.c(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8));
        JSONObject jSONObject3 = jSONObject.getJSONObject("features");
        p6.b bVar = new p6.b(jSONObject3.optBoolean("collect_reports", true), jSONObject3.optBoolean("collect_anrs", false));
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
