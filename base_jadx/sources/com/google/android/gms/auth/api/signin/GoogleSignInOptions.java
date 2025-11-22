package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import i3.d;
import i3.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import n3.a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s3.a;
import s3.c;

/* loaded from: classes.dex */
public class GoogleSignInOptions extends a implements a.c, ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public static final GoogleSignInOptions f2945m;

    /* renamed from: n, reason: collision with root package name */
    @NonNull
    public static final Scope f2946n;

    /* renamed from: p, reason: collision with root package name */
    @NonNull
    public static final Scope f2947p;

    /* renamed from: q, reason: collision with root package name */
    @NonNull
    public static final Scope f2948q;

    /* renamed from: r, reason: collision with root package name */
    public static final d f2949r;

    /* renamed from: a, reason: collision with root package name */
    public final int f2950a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2951b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final Account f2952c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2953d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2954e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f2955g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f2956h;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f2957j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final String f2958k;

    /* renamed from: l, reason: collision with root package name */
    public final Map f2959l;

    static {
        Scope scope = new Scope(1, "profile");
        new Scope(1, NotificationCompat.CATEGORY_EMAIL);
        Scope scope2 = new Scope(1, "openid");
        f2946n = scope2;
        Scope scope3 = new Scope(1, "https://www.googleapis.com/auth/games_lite");
        f2947p = scope3;
        f2948q = new Scope(1, "https://www.googleapis.com/auth/games");
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        hashSet.add(scope2);
        hashSet.add(scope);
        if (hashSet.contains(f2948q)) {
            Scope scope4 = f2947p;
            if (hashSet.contains(scope4)) {
                hashSet.remove(scope4);
            }
        }
        f2945m = new GoogleSignInOptions(3, new ArrayList(hashSet), null, false, false, false, null, null, map, null);
        HashSet hashSet2 = new HashSet();
        HashMap map2 = new HashMap();
        hashSet2.add(scope3);
        hashSet2.addAll(Arrays.asList(new Scope[0]));
        if (hashSet2.contains(f2948q)) {
            Scope scope5 = f2947p;
            if (hashSet2.contains(scope5)) {
                hashSet2.remove(scope5);
            }
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet2), null, false, false, false, null, null, map2, null);
        CREATOR = new e();
        f2949r = new d();
    }

    public GoogleSignInOptions(int r12, ArrayList arrayList, @Nullable Account account, boolean z10, boolean z11, boolean z12, @Nullable String str, @Nullable String str2, Map map, @Nullable String str3) {
        this.f2950a = r12;
        this.f2951b = arrayList;
        this.f2952c = account;
        this.f2953d = z10;
        this.f2954e = z11;
        this.f = z12;
        this.f2955g = str;
        this.f2956h = str2;
        this.f2957j = new ArrayList(map.values());
        this.f2959l = map;
        this.f2958k = str3;
    }

    @Nullable
    public static GoogleSignInOptions E(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int r52 = 0; r52 < length; r52++) {
            hashSet.add(new Scope(1, jSONArray.getString(r52)));
        }
        String strOptString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), null);
    }

    public static HashMap Z(@Nullable ArrayList arrayList) {
        HashMap map = new HashMap();
        if (arrayList == null) {
            return map;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            j3.a aVar = (j3.a) it.next();
            map.put(Integer.valueOf(aVar.f7979b), aVar);
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0079 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(@androidx.annotation.Nullable java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.String r0 = r6.f2955g
            java.util.ArrayList r1 = r6.f2951b
            r2 = 0
            if (r7 != 0) goto L8
            return r2
        L8:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r7 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r7     // Catch: java.lang.ClassCastException -> L7b
            java.util.ArrayList r3 = r6.f2957j     // Catch: java.lang.ClassCastException -> L7b
            int r3 = r3.size()     // Catch: java.lang.ClassCastException -> L7b
            if (r3 > 0) goto L7b
            java.util.ArrayList r3 = r7.f2957j     // Catch: java.lang.ClassCastException -> L7b
            java.util.ArrayList r4 = r7.f2951b
            int r3 = r3.size()     // Catch: java.lang.ClassCastException -> L7b
            if (r3 <= 0) goto L1d
            goto L7b
        L1d:
            int r3 = r1.size()     // Catch: java.lang.ClassCastException -> L7b
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.ClassCastException -> L7b
            r5.<init>(r4)     // Catch: java.lang.ClassCastException -> L7b
            int r5 = r5.size()     // Catch: java.lang.ClassCastException -> L7b
            if (r3 != r5) goto L7b
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.ClassCastException -> L7b
            r3.<init>(r4)     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r1.containsAll(r3)     // Catch: java.lang.ClassCastException -> L7b
            if (r1 != 0) goto L38
            goto L7b
        L38:
            android.accounts.Account r1 = r6.f2952c     // Catch: java.lang.ClassCastException -> L7b
            android.accounts.Account r3 = r7.f2952c
            if (r1 != 0) goto L41
            if (r3 != 0) goto L7b
            goto L47
        L41:
            boolean r1 = r1.equals(r3)     // Catch: java.lang.ClassCastException -> L7b
            if (r1 == 0) goto L7b
        L47:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.ClassCastException -> L7b
            java.lang.String r3 = r7.f2955g
            if (r1 == 0) goto L56
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.ClassCastException -> L7b
            if (r0 == 0) goto L7b
            goto L5d
        L56:
            boolean r0 = r0.equals(r3)     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != 0) goto L5d
            goto L7b
        L5d:
            boolean r0 = r6.f     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r7.f     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != r1) goto L7b
            boolean r0 = r6.f2953d     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r7.f2953d     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != r1) goto L7b
            boolean r0 = r6.f2954e     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r7.f2954e     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != r1) goto L7b
            java.lang.String r0 = r6.f2958k     // Catch: java.lang.ClassCastException -> L7b
            java.lang.String r7 = r7.f2958k     // Catch: java.lang.ClassCastException -> L7b
            boolean r7 = android.text.TextUtils.equals(r0, r7)     // Catch: java.lang.ClassCastException -> L7b
            if (r7 == 0) goto L7b
            r7 = 1
            return r7
        L7b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f2951b;
        int size = arrayList2.size();
        for (int r42 = 0; r42 < size; r42++) {
            arrayList.add(((Scope) arrayList2.get(r42)).f2973b);
        }
        Collections.sort(arrayList);
        int r02 = (arrayList.hashCode() + (1 * 31)) * 31;
        Account account = this.f2952c;
        int r03 = (r02 + (account == null ? 0 : account.hashCode())) * 31;
        String str = this.f2955g;
        int r04 = (((((((r03 + (str == null ? 0 : str.hashCode())) * 31) + (this.f ? 1 : 0)) * 31) + (this.f2953d ? 1 : 0)) * 31) + (this.f2954e ? 1 : 0)) * 31;
        String str2 = this.f2958k;
        return r04 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.j(parcel, 1, this.f2950a);
        c.q(parcel, 2, new ArrayList(this.f2951b));
        c.m(parcel, 3, this.f2952c, r52);
        c.a(parcel, 4, this.f2953d);
        c.a(parcel, 5, this.f2954e);
        c.a(parcel, 6, this.f);
        c.n(parcel, 7, this.f2955g);
        c.n(parcel, 8, this.f2956h);
        c.q(parcel, 9, this.f2957j);
        c.n(parcel, 10, this.f2958k);
        c.s(parcel, r02);
    }
}
