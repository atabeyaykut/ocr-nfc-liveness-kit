package f5;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class h extends s3.a implements n3.h {
    public static final Parcelable.Creator<h> CREATOR = new i();

    /* renamed from: a, reason: collision with root package name */
    public final List f5525a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f5526b;

    public h(ArrayList arrayList, @Nullable String str) {
        this.f5525a = arrayList;
        this.f5526b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        List<String> list = this.f5525a;
        if (list != null) {
            int r12 = s3.c.r(parcel, 1);
            parcel.writeStringList(list);
            s3.c.s(parcel, r12);
        }
        s3.c.n(parcel, 2, this.f5526b);
        s3.c.s(parcel, r43);
    }

    @Override // n3.h
    public final Status y() {
        return this.f5526b != null ? Status.f : Status.f2977k;
    }
}
