package z4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.maps.model.LatLng;
import z3.b;

/* loaded from: classes.dex */
public class e extends s3.a {

    @NonNull
    public static final Parcelable.Creator<e> CREATOR = new l();

    /* renamed from: a, reason: collision with root package name */
    public LatLng f19824a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f19825b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f19826c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public a f19827d;

    /* renamed from: e, reason: collision with root package name */
    public final float f19828e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19829g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f19830h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f19831j;

    /* renamed from: k, reason: collision with root package name */
    public final float f19832k;

    /* renamed from: l, reason: collision with root package name */
    public final float f19833l;

    /* renamed from: m, reason: collision with root package name */
    public final float f19834m;

    /* renamed from: n, reason: collision with root package name */
    public final float f19835n;

    /* renamed from: p, reason: collision with root package name */
    public final float f19836p;

    /* renamed from: q, reason: collision with root package name */
    public final int f19837q;

    /* renamed from: r, reason: collision with root package name */
    @Nullable
    public final View f19838r;

    /* renamed from: s, reason: collision with root package name */
    public int f19839s;

    /* renamed from: t, reason: collision with root package name */
    @Nullable
    public final String f19840t;

    /* renamed from: v, reason: collision with root package name */
    public final float f19841v;

    public e() {
        this.f19828e = 0.5f;
        this.f = 1.0f;
        this.f19830h = true;
        this.f19831j = false;
        this.f19832k = 0.0f;
        this.f19833l = 0.5f;
        this.f19834m = 0.0f;
        this.f19835n = 1.0f;
        this.f19837q = 0;
    }

    public e(LatLng latLng, String str, String str2, @Nullable IBinder iBinder, float f, float f10, boolean z10, boolean z11, boolean z12, float f11, float f12, float f13, float f14, float f15, int r20, IBinder iBinder2, int r22, String str3, float f16) {
        this.f19828e = 0.5f;
        this.f = 1.0f;
        this.f19830h = true;
        this.f19831j = false;
        this.f19832k = 0.0f;
        this.f19833l = 0.5f;
        this.f19834m = 0.0f;
        this.f19835n = 1.0f;
        this.f19837q = 0;
        this.f19824a = latLng;
        this.f19825b = str;
        this.f19826c = str2;
        if (iBinder == null) {
            this.f19827d = null;
        } else {
            this.f19827d = new a(b.a.x0(iBinder));
        }
        this.f19828e = f;
        this.f = f10;
        this.f19829g = z10;
        this.f19830h = z11;
        this.f19831j = z12;
        this.f19832k = f11;
        this.f19833l = f12;
        this.f19834m = f13;
        this.f19835n = f14;
        this.f19836p = f15;
        this.f19839s = r22;
        this.f19837q = r20;
        z3.b bVarX0 = b.a.x0(iBinder2);
        this.f19838r = bVarX0 != null ? (View) z3.d.y0(bVarX0) : null;
        this.f19840t = str3;
        this.f19841v = f16;
    }

    @NonNull
    public final void E(@NonNull LatLng latLng) {
        if (latLng == null) {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
        this.f19824a = latLng;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 2, this.f19824a, r52);
        s3.c.n(parcel, 3, this.f19825b);
        s3.c.n(parcel, 4, this.f19826c);
        a aVar = this.f19827d;
        s3.c.i(parcel, 5, aVar == null ? null : aVar.f19813a.asBinder());
        s3.c.g(parcel, 6, this.f19828e);
        s3.c.g(parcel, 7, this.f);
        s3.c.a(parcel, 8, this.f19829g);
        s3.c.a(parcel, 9, this.f19830h);
        s3.c.a(parcel, 10, this.f19831j);
        s3.c.g(parcel, 11, this.f19832k);
        s3.c.g(parcel, 12, this.f19833l);
        s3.c.g(parcel, 13, this.f19834m);
        s3.c.g(parcel, 14, this.f19835n);
        s3.c.g(parcel, 15, this.f19836p);
        s3.c.j(parcel, 17, this.f19837q);
        s3.c.i(parcel, 18, new z3.d(this.f19838r));
        s3.c.j(parcel, 19, this.f19839s);
        s3.c.n(parcel, 20, this.f19840t);
        s3.c.g(parcel, 21, this.f19841v);
        s3.c.s(parcel, r02);
    }
}
