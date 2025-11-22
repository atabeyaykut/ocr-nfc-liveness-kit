package g7;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Bundle f5852a;

    public e0(@NonNull Bundle bundle) {
        this.f5852a = new Bundle(bundle);
    }

    public static boolean f(@NonNull Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString("gcm.n.e".replace("gcm.n.", "gcm.notification.")));
    }

    public static String h(String str) {
        return str.startsWith("gcm.n.") ? str.substring(6) : str;
    }

    public final boolean a(@NonNull String str) {
        String strE = e(str);
        return "1".equals(strE) || Boolean.parseBoolean(strE);
    }

    @NonNull
    public final Integer b(@NonNull String str) {
        String strE = e(str);
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(strE));
        } catch (NumberFormatException unused) {
            String strH = h(str);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strH).length() + 38 + String.valueOf(strE).length());
            sb2.append("Couldn't parse value of ");
            sb2.append(strH);
            sb2.append("(");
            sb2.append(strE);
            sb2.append(") into an int");
            Log.w("NotificationParams", sb2.toString());
            return null;
        }
    }

    @Nullable
    public final JSONArray c(@NonNull String str) {
        String strE = e(str);
        if (TextUtils.isEmpty(strE)) {
            return null;
        }
        try {
            return new JSONArray(strE);
        } catch (JSONException unused) {
            String strH = h(str);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strH).length() + 50 + String.valueOf(strE).length());
            sb2.append("Malformed JSON for key ");
            sb2.append(strH);
            sb2.append(": ");
            sb2.append(strE);
            sb2.append(", falling back to default");
            Log.w("NotificationParams", sb2.toString());
            return null;
        }
    }

    @NonNull
    public final String d(@NonNull Resources resources, @NonNull String str, @NonNull String str2) {
        String[] strArr;
        String strE = e(str2);
        if (!TextUtils.isEmpty(strE)) {
            return strE;
        }
        String strE2 = e(str2.concat("_loc_key"));
        if (TextUtils.isEmpty(strE2)) {
            return null;
        }
        int identifier = resources.getIdentifier(strE2, TypedValues.Custom.S_STRING, str);
        if (identifier == 0) {
            String strH = h(str2.concat("_loc_key"));
            StringBuilder sb2 = new StringBuilder(String.valueOf(strH).length() + 49 + str2.length());
            sb2.append(strH);
            sb2.append(" resource not found: ");
            sb2.append(str2);
            sb2.append(" Default value will be used.");
            Log.w("NotificationParams", sb2.toString());
            return null;
        }
        JSONArray jSONArrayC = c(str2.concat("_loc_args"));
        if (jSONArrayC == null) {
            strArr = null;
        } else {
            int length = jSONArrayC.length();
            strArr = new String[length];
            for (int r6 = 0; r6 < length; r6++) {
                strArr[r6] = jSONArrayC.optString(r6);
            }
        }
        if (strArr == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, strArr);
        } catch (MissingFormatArgumentException e10) {
            String strH2 = h(str2);
            String string = Arrays.toString(strArr);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strH2).length() + 58 + String.valueOf(string).length());
            sb3.append("Missing format argument for ");
            sb3.append(strH2);
            sb3.append(": ");
            sb3.append(string);
            sb3.append(" Default value will be used.");
            Log.w("NotificationParams", sb3.toString(), e10);
            return null;
        }
    }

    @NonNull
    public final String e(@NonNull String str) {
        Bundle bundle = this.f5852a;
        if (!bundle.containsKey(str) && str.startsWith("gcm.n.")) {
            String strReplace = !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
            if (bundle.containsKey(strReplace)) {
                str = strReplace;
            }
        }
        return bundle.getString(str);
    }

    @NonNull
    public final Bundle g() {
        Bundle bundle = this.f5852a;
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle.keySet()) {
            if (!(str.startsWith("google.c.a.") || str.equals(TypedValues.TransitionType.S_FROM))) {
                bundle2.remove(str);
            }
        }
        return bundle2;
    }
}
