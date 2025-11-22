package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import s3.a;
import s3.c;

@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends a implements Closeable {

    @NonNull
    public static final Parcelable.Creator<DataHolder> CREATOR = new p3.a();

    /* renamed from: a, reason: collision with root package name */
    public final int f2993a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f2994b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f2995c;

    /* renamed from: d, reason: collision with root package name */
    public final CursorWindow[] f2996d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2997e;

    @Nullable
    public final Bundle f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f2998g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2999h = false;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f3000j = true;

    static {
        new ArrayList();
        new HashMap();
    }

    public DataHolder(int r22, String[] strArr, CursorWindow[] cursorWindowArr, int r52, @Nullable Bundle bundle) {
        this.f2993a = r22;
        this.f2994b = strArr;
        this.f2996d = cursorWindowArr;
        this.f2997e = r52;
        this.f = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.f2999h) {
                this.f2999h = true;
                int r02 = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.f2996d;
                    if (r02 >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[r02].close();
                    r02++;
                }
            }
        }
    }

    public final void finalize() throws Throwable {
        boolean z10;
        try {
            if (this.f3000j && this.f2996d.length > 0) {
                synchronized (this) {
                    z10 = this.f2999h;
                }
                if (!z10) {
                    close();
                    Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: " + toString() + ")");
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r6) {
        int r02 = c.r(parcel, 20293);
        c.o(parcel, 1, this.f2994b);
        c.p(parcel, 2, this.f2996d, r6);
        c.j(parcel, 3, this.f2997e);
        c.b(parcel, 4, this.f);
        c.j(parcel, 1000, this.f2993a);
        c.s(parcel, r02);
        if ((r6 & 1) != 0) {
            close();
        }
    }
}
