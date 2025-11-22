package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f4426a;

    /* renamed from: com.google.firebase.messaging.a$a, reason: collision with other inner class name */
    public static class C0065a {

        /* renamed from: d, reason: collision with root package name */
        public static final long f4427d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a, reason: collision with root package name */
        public final String f4428a;

        /* renamed from: b, reason: collision with root package name */
        public final String f4429b;

        /* renamed from: c, reason: collision with root package name */
        public final long f4430c;

        public C0065a(String str, String str2, long j10) {
            this.f4428a = str;
            this.f4429b = str2;
            this.f4430c = j10;
        }

        public static String a(long j10, String str, String str2) throws JSONException {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j10);
                return jSONObject.toString();
            } catch (JSONException e10) {
                Log.w("FirebaseMessaging", "Failed to encode token: ".concat(e10.toString()));
                return null;
            }
        }

        public static C0065a b(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new C0065a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C0065a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e10) {
                Log.w("FirebaseMessaging", "Failed to parse token: ".concat(e10.toString()));
                return null;
            }
        }
    }

    public a(Context context) {
        boolean zIsEmpty;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f4426a = sharedPreferences;
        File file = new File(ContextCompat.getNoBackupFilesDir(context), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                synchronized (this) {
                    zIsEmpty = sharedPreferences.getAll().isEmpty();
                }
                if (zIsEmpty) {
                    return;
                }
                Log.i("FirebaseMessaging", "App restored, clearing state");
                b();
            }
        } catch (IOException e10) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf = String.valueOf(e10.getMessage());
                Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    public static String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append("|T|");
        sb2.append(str2);
        sb2.append("|*");
        return sb2.toString();
    }

    public final synchronized void b() {
        this.f4426a.edit().clear().commit();
    }
}
