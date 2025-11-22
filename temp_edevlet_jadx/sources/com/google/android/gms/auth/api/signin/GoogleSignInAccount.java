package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import i3.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r3.r;
import s3.a;

/* loaded from: classes.dex */
public class GoogleSignInAccount extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final int f2933a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f2934b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f2935c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f2936d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f2937e;

    @Nullable
    public final Uri f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public String f2938g;

    /* renamed from: h, reason: collision with root package name */
    public final long f2939h;

    /* renamed from: j, reason: collision with root package name */
    public final String f2940j;

    /* renamed from: k, reason: collision with root package name */
    public final List f2941k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final String f2942l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final String f2943m;

    /* renamed from: n, reason: collision with root package name */
    public final HashSet f2944n = new HashSet();

    public GoogleSignInAccount(int r22, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Uri uri, @Nullable String str5, long j10, String str6, ArrayList arrayList, @Nullable String str7, @Nullable String str8) {
        this.f2933a = r22;
        this.f2934b = str;
        this.f2935c = str2;
        this.f2936d = str3;
        this.f2937e = str4;
        this.f = uri;
        this.f2938g = str5;
        this.f2939h = j10;
        this.f2940j = str6;
        this.f2941k = arrayList;
        this.f2942l = str7;
        this.f2943m = str8;
    }

    @Nullable
    public static GoogleSignInAccount Z(@Nullable String str) throws JSONException, NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j10 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int r72 = 0; r72 < length; r72++) {
            hashSet.add(new Scope(1, jSONArray.getString(r72)));
        }
        String strOptString2 = jSONObject.optString("id");
        String strOptString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String strOptString4 = jSONObject.has(NotificationCompat.CATEGORY_EMAIL) ? jSONObject.optString(NotificationCompat.CATEGORY_EMAIL) : null;
        String strOptString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String strOptString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String strOptString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        Long lValueOf = Long.valueOf(j10);
        String string = jSONObject.getString("obfuscatedIdentifier");
        long jLongValue = lValueOf.longValue();
        r.f(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, jLongValue, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.f2938g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    @NonNull
    public final HashSet E() {
        HashSet hashSet = new HashSet(this.f2941k);
        hashSet.addAll(this.f2944n);
        return hashSet;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f2940j.equals(this.f2940j) && googleSignInAccount.E().equals(E());
    }

    public final int hashCode() {
        return E().hashCode() + androidx.room.util.a.a(this.f2940j, 527, 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f2933a);
        s3.c.n(parcel, 2, this.f2934b);
        s3.c.n(parcel, 3, this.f2935c);
        s3.c.n(parcel, 4, this.f2936d);
        s3.c.n(parcel, 5, this.f2937e);
        s3.c.m(parcel, 6, this.f, r52);
        s3.c.n(parcel, 7, this.f2938g);
        s3.c.l(parcel, 8, this.f2939h);
        s3.c.n(parcel, 9, this.f2940j);
        s3.c.q(parcel, 10, this.f2941k);
        s3.c.n(parcel, 11, this.f2942l);
        s3.c.n(parcel, 12, this.f2943m);
        s3.c.s(parcel, r02);
    }
}
