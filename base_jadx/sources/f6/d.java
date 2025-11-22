package f6;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class d implements b, g6.b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public g6.a f5536a;

    @NonNull
    public static String c(@NonNull Bundle bundle, @NonNull String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // g6.b
    public final void a(@Nullable g6.a aVar) {
        this.f5536a = aVar;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Registered Firebase Analytics event receiver for breadcrumbs", null);
        }
    }

    @Override // f6.b
    public final void b(@NonNull Bundle bundle, @NonNull String str) {
        g6.a aVar = this.f5536a;
        if (aVar != null) {
            try {
                aVar.a("$A$:" + c(bundle, str));
            } catch (JSONException unused) {
                Log.w("FirebaseCrashlytics", "Unable to serialize Firebase Analytics event to breadcrumb.", null);
            }
        }
    }
}
