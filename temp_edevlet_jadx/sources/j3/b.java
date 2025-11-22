package j3;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f7981c = new ReentrantLock();

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public static b f7982d;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f7983a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f7984b;

    public b(Context context) {
        this.f7984b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @NonNull
    public static b a(@NonNull Context context) {
        r3.r.i(context);
        ReentrantLock reentrantLock = f7981c;
        reentrantLock.lock();
        try {
            if (f7982d == null) {
                f7982d = new b(context.getApplicationContext());
            }
            return f7982d;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static final String g(String str, String str2) {
        return androidx.camera.core.impl.utils.f.g(str, ":", str2);
    }

    @Nullable
    public final GoogleSignInAccount b() {
        String strE;
        String strE2 = e("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(strE2) && (strE = e(g("googleSignInAccount", strE2))) != null) {
            try {
                return GoogleSignInAccount.Z(strE);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    @Nullable
    public final GoogleSignInOptions c() {
        String strE;
        String strE2 = e("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strE2) || (strE = e(g("googleSignInOptions", strE2))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.E(strE);
        } catch (JSONException unused) {
            return null;
        }
    }

    public final void d(@NonNull GoogleSignInAccount googleSignInAccount, @NonNull GoogleSignInOptions googleSignInOptions) throws JSONException {
        r3.r.i(googleSignInOptions);
        String str = googleSignInAccount.f2940j;
        f("defaultGoogleSignInAccount", str);
        String strG = g("googleSignInAccount", str);
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = googleSignInAccount.f2934b;
            if (str2 != null) {
                jSONObject.put("id", str2);
            }
            String str3 = googleSignInAccount.f2935c;
            if (str3 != null) {
                jSONObject.put("tokenId", str3);
            }
            String str4 = googleSignInAccount.f2936d;
            if (str4 != null) {
                jSONObject.put(NotificationCompat.CATEGORY_EMAIL, str4);
            }
            String str5 = googleSignInAccount.f2937e;
            if (str5 != null) {
                jSONObject.put("displayName", str5);
            }
            String str6 = googleSignInAccount.f2942l;
            if (str6 != null) {
                jSONObject.put("givenName", str6);
            }
            String str7 = googleSignInAccount.f2943m;
            if (str7 != null) {
                jSONObject.put("familyName", str7);
            }
            Uri uri = googleSignInAccount.f;
            if (uri != null) {
                jSONObject.put("photoUrl", uri.toString());
            }
            String str8 = googleSignInAccount.f2938g;
            if (str8 != null) {
                jSONObject.put("serverAuthCode", str8);
            }
            jSONObject.put("expirationTime", googleSignInAccount.f2939h);
            jSONObject.put("obfuscatedIdentifier", str);
            JSONArray jSONArray = new JSONArray();
            List list = googleSignInAccount.f2941k;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() { // from class: i3.b
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).f2973b.compareTo(((Scope) obj2).f2973b);
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.f2973b);
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            f(strG, jSONObject.toString());
            String strG2 = g("googleSignInOptions", str);
            String str9 = googleSignInOptions.f2956h;
            String str10 = googleSignInOptions.f2955g;
            ArrayList arrayList = googleSignInOptions.f2951b;
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray2 = new JSONArray();
                Collections.sort(arrayList, GoogleSignInOptions.f2949r);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(((Scope) it.next()).f2973b);
                }
                jSONObject2.put("scopes", jSONArray2);
                Account account = googleSignInOptions.f2952c;
                if (account != null) {
                    jSONObject2.put("accountName", account.name);
                }
                jSONObject2.put("idTokenRequested", googleSignInOptions.f2953d);
                jSONObject2.put("forceCodeForRefreshToken", googleSignInOptions.f);
                jSONObject2.put("serverAuthRequested", googleSignInOptions.f2954e);
                if (!TextUtils.isEmpty(str10)) {
                    jSONObject2.put("serverClientId", str10);
                }
                if (!TextUtils.isEmpty(str9)) {
                    jSONObject2.put("hostedDomain", str9);
                }
                f(strG2, jSONObject2.toString());
            } catch (JSONException e10) {
                throw new RuntimeException(e10);
            }
        } catch (JSONException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Nullable
    public final String e(@NonNull String str) {
        ReentrantLock reentrantLock = this.f7983a;
        reentrantLock.lock();
        try {
            return this.f7984b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void f(@NonNull String str, @NonNull String str2) {
        ReentrantLock reentrantLock = this.f7983a;
        reentrantLock.lock();
        try {
            this.f7984b.edit().putString(str, str2).apply();
        } finally {
            reentrantLock.unlock();
        }
    }
}
