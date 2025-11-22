package c5;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class n3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f1764a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f1765b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f1766c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s3 f1767d;

    public n3(s3 s3Var) {
        this.f1767d = s3Var;
        r3.r.f("default_event_parameters");
        this.f1764a = "default_event_parameters";
        this.f1765b = new Bundle();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009a A[Catch: NumberFormatException | JSONException -> 0x00a2, NumberFormatException | JSONException -> 0x00a2, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x00a2, blocks: (B:10:0x0027, B:32:0x0071, B:32:0x0071, B:33:0x0082, B:33:0x0082, B:34:0x008e, B:34:0x008e, B:35:0x009a, B:35:0x009a), top: B:47:0x0027, outer: #1 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle a() throws org.json.JSONException {
        /*
            r12 = this;
            android.os.Bundle r0 = r12.f1766c
            if (r0 == 0) goto L6
            goto Ld1
        L6:
            c5.s3 r0 = r12.f1767d
            android.content.SharedPreferences r1 = r0.g()
            java.lang.String r2 = r12.f1764a
            r3 = 0
            java.lang.String r1 = r1.getString(r2, r3)
            if (r1 == 0) goto Lc9
            android.os.Bundle r2 = new android.os.Bundle     // Catch: org.json.JSONException -> Lb9
            r2.<init>()     // Catch: org.json.JSONException -> Lb9
            org.json.JSONArray r3 = new org.json.JSONArray     // Catch: org.json.JSONException -> Lb9
            r3.<init>(r1)     // Catch: org.json.JSONException -> Lb9
            r1 = 0
            r4 = 0
        L21:
            int r5 = r3.length()     // Catch: org.json.JSONException -> Lb9
            if (r4 >= r5) goto Lb6
            org.json.JSONObject r5 = r3.getJSONObject(r4)     // Catch: java.lang.Throwable -> La2
            java.lang.String r6 = "n"
            java.lang.String r6 = r5.getString(r6)     // Catch: java.lang.Throwable -> La2
            java.lang.String r7 = "t"
            java.lang.String r7 = r5.getString(r7)     // Catch: java.lang.Throwable -> La2
            int r8 = r7.hashCode()     // Catch: java.lang.Throwable -> La2
            r9 = 100
            r10 = 2
            r11 = 1
            if (r8 == r9) goto L5e
            r9 = 108(0x6c, float:1.51E-43)
            if (r8 == r9) goto L54
            r9 = 115(0x73, float:1.61E-43)
            if (r8 == r9) goto L4a
            goto L68
        L4a:
            java.lang.String r8 = "s"
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L68
            r8 = 0
            goto L69
        L54:
            java.lang.String r8 = "l"
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L68
            r8 = 2
            goto L69
        L5e:
            java.lang.String r8 = "d"
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L68
            r8 = 1
            goto L69
        L68:
            r8 = -1
        L69:
            java.lang.String r9 = "v"
            if (r8 == 0) goto L9a
            if (r8 == r11) goto L8e
            if (r8 == r10) goto L82
            c5.z4 r5 = r0.f2115a     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            c5.i4 r5 = (c5.i4) r5     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            c5.e3 r5 = r5.f1635j     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            c5.i4.e(r5)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            c5.c3 r5 = r5.f     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            java.lang.String r6 = "Unrecognized persisted bundle type. Type"
            r5.b(r7, r6)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            goto Lb2
        L82:
            java.lang.String r5 = r5.getString(r9)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            long r7 = java.lang.Long.parseLong(r5)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            r2.putLong(r6, r7)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            goto Lb2
        L8e:
            java.lang.String r5 = r5.getString(r9)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            double r7 = java.lang.Double.parseDouble(r5)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            r2.putDouble(r6, r7)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            goto Lb2
        L9a:
            java.lang.String r5 = r5.getString(r9)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            r2.putString(r6, r5)     // Catch: java.lang.Throwable -> La2 java.lang.Throwable -> La2
            goto Lb2
        La2:
            c5.z4 r5 = r0.f2115a     // Catch: org.json.JSONException -> Lb9
            c5.i4 r5 = (c5.i4) r5     // Catch: org.json.JSONException -> Lb9
            c5.e3 r5 = r5.f1635j     // Catch: org.json.JSONException -> Lb9
            c5.i4.e(r5)     // Catch: org.json.JSONException -> Lb9
            c5.c3 r5 = r5.f     // Catch: org.json.JSONException -> Lb9
            java.lang.String r6 = "Error reading value from SharedPreferences. Value dropped"
            r5.a(r6)     // Catch: org.json.JSONException -> Lb9
        Lb2:
            int r4 = r4 + 1
            goto L21
        Lb6:
            r12.f1766c = r2     // Catch: org.json.JSONException -> Lb9
            goto Lc9
        Lb9:
            c5.z4 r0 = r0.f2115a
            c5.i4 r0 = (c5.i4) r0
            c5.e3 r0 = r0.f1635j
            c5.i4.e(r0)
            java.lang.String r1 = "Error loading bundle from SharedPreferences. Values will be lost"
            c5.c3 r0 = r0.f
            r0.a(r1)
        Lc9:
            android.os.Bundle r0 = r12.f1766c
            if (r0 != 0) goto Ld1
            android.os.Bundle r0 = r12.f1765b
            r12.f1766c = r0
        Ld1:
            android.os.Bundle r0 = r12.f1766c
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.n3.a():android.os.Bundle");
    }

    @WorkerThread
    public final void b(Bundle bundle) {
        String str;
        if (bundle == null) {
            bundle = new Bundle();
        }
        s3 s3Var = this.f1767d;
        SharedPreferences.Editor editorEdit = s3Var.g().edit();
        int size = bundle.size();
        String str2 = this.f1764a;
        if (size == 0) {
            editorEdit.remove(str2);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str3);
                        jSONObject.put("v", obj.toString());
                        if (obj instanceof String) {
                            str = "s";
                        } else if (obj instanceof Long) {
                            str = "l";
                        } else if (obj instanceof Double) {
                            str = "d";
                        } else {
                            e3 e3Var = ((i4) s3Var.f2115a).f1635j;
                            i4.e(e3Var);
                            e3Var.f.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                        }
                        jSONObject.put("t", str);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e10) {
                        e3 e3Var2 = ((i4) s3Var.f2115a).f1635j;
                        i4.e(e3Var2);
                        e3Var2.f.b(e10, "Cannot serialize bundle value to SharedPreferences");
                    }
                }
            }
            editorEdit.putString(str2, jSONArray.toString());
        }
        editorEdit.apply();
        this.f1766c = bundle;
    }
}
