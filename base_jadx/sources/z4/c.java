package z4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends s3.a {

    @NonNull
    public static final Parcelable.Creator<c> CREATOR = new i();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public LatLng f19815a;

    /* renamed from: b, reason: collision with root package name */
    public double f19816b;

    /* renamed from: c, reason: collision with root package name */
    public final float f19817c;

    /* renamed from: d, reason: collision with root package name */
    public int f19818d;

    /* renamed from: e, reason: collision with root package name */
    public final int f19819e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f19820g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f19821h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final List f19822j;

    public c() {
        this.f19815a = null;
        this.f19816b = 0.0d;
        this.f19817c = 10.0f;
        this.f19818d = ViewCompat.MEASURED_STATE_MASK;
        this.f19819e = 0;
        this.f = 0.0f;
        this.f19820g = true;
        this.f19821h = false;
        this.f19822j = null;
    }

    public c(LatLng latLng, double d10, float f, int r52, int r6, float f10, boolean z10, boolean z11, @Nullable ArrayList arrayList) {
        this.f19815a = latLng;
        this.f19816b = d10;
        this.f19817c = f;
        this.f19818d = r52;
        this.f19819e = r6;
        this.f = f10;
        this.f19820g = z10;
        this.f19821h = z11;
        this.f19822j = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 2, this.f19815a, r52);
        s3.c.f(parcel, 3, this.f19816b);
        s3.c.g(parcel, 4, this.f19817c);
        s3.c.j(parcel, 5, this.f19818d);
        s3.c.j(parcel, 6, this.f19819e);
        s3.c.g(parcel, 7, this.f);
        s3.c.a(parcel, 8, this.f19820g);
        s3.c.a(parcel, 9, this.f19821h);
        s3.c.q(parcel, 10, this.f19822j);
        s3.c.s(parcel, r02);
    }
}
