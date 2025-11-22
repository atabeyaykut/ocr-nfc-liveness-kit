package t1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.StyleRes;
import androidx.room.RoomDatabase;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends c6.a implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f15499a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15500b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15501c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15502d;

    /* renamed from: e, reason: collision with root package name */
    public final int f15503e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f15504g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f15505h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f15506j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f15507k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f15508l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f15509m;

    /* renamed from: n, reason: collision with root package name */
    public final List<d2.b> f15510n;

    /* renamed from: p, reason: collision with root package name */
    public final List<? extends File> f15511p;

    /* renamed from: q, reason: collision with root package name */
    public final v f15512q;

    /* renamed from: r, reason: collision with root package name */
    public final int f15513r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f15514s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f15515t;

    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            kotlin.jvm.internal.h.f(parcel, "parcel");
            int r32 = androidx.camera.core.impl.utils.f.l(parcel.readString());
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            int r72 = parcel.readInt();
            int r82 = parcel.readInt();
            int r92 = parcel.readInt();
            boolean z10 = parcel.readInt() != 0;
            boolean z11 = parcel.readInt() != 0;
            boolean z12 = parcel.readInt() != 0;
            boolean z13 = parcel.readInt() != 0;
            boolean z14 = parcel.readInt() != 0;
            int r15 = parcel.readInt();
            boolean z15 = z14;
            ArrayList arrayList = new ArrayList(r15);
            for (int r22 = 0; r22 != r15; r22++) {
                arrayList.add(d2.b.CREATOR.createFromParcel(parcel));
            }
            int r23 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(r23);
            int r10 = 0;
            while (r10 != r23) {
                arrayList2.add(parcel.readSerializable());
                r10++;
                r23 = r23;
            }
            return new d(r32, string, string2, string3, r72, r82, r92, z10, z11, z12, z13, z15, arrayList, arrayList2, v.CREATOR.createFromParcel(parcel), androidx.browser.browseractions.b.p(parcel.readString()), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int r12) {
            return new d[r12];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public d() {
        m9.v vVar = m9.v.f10173a;
        this(2, null, null, null, -1, RoomDatabase.MAX_BIND_PARAMETER_CNT, 0, false, false, false, false, true, vVar, vVar, v.f15553c, 1, true, false);
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZZLjava/util/List<Ld2/b;>;Ljava/util/List<+Ljava/io/File;>;Lt1/v;Ljava/lang/Object;ZZ)V */
    public d(int r82, String str, String str2, String str3, int r12, int r13, @StyleRes int r14, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, List selectedImages, List excludedImages, v savePath, int r23, boolean z15, boolean z16) {
        androidx.camera.core.impl.utils.f.j(r82, "mode");
        kotlin.jvm.internal.h.f(selectedImages, "selectedImages");
        kotlin.jvm.internal.h.f(excludedImages, "excludedImages");
        kotlin.jvm.internal.h.f(savePath, "savePath");
        androidx.camera.core.impl.utils.f.j(r23, "returnMode");
        this.f15499a = r82;
        this.f15500b = str;
        this.f15501c = str2;
        this.f15502d = str3;
        this.f15503e = r12;
        this.f = r13;
        this.f15504g = r14;
        this.f15505h = z10;
        this.f15506j = z11;
        this.f15507k = z12;
        this.f15508l = z13;
        this.f15509m = z14;
        this.f15510n = selectedImages;
        this.f15511p = excludedImages;
        this.f15512q = savePath;
        this.f15513r = r23;
        this.f15514s = z15;
        this.f15515t = z16;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // c6.a
    public final int m() {
        return this.f15513r;
    }

    @Override // c6.a
    public final v n() {
        return this.f15512q;
    }

    @Override // c6.a
    public final boolean p() {
        return this.f15514s;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel out, int r42) {
        kotlin.jvm.internal.h.f(out, "out");
        out.writeString(androidx.camera.core.impl.utils.f.k(this.f15499a));
        out.writeString(this.f15500b);
        out.writeString(this.f15501c);
        out.writeString(this.f15502d);
        out.writeInt(this.f15503e);
        out.writeInt(this.f);
        out.writeInt(this.f15504g);
        out.writeInt(this.f15505h ? 1 : 0);
        out.writeInt(this.f15506j ? 1 : 0);
        out.writeInt(this.f15507k ? 1 : 0);
        out.writeInt(this.f15508l ? 1 : 0);
        out.writeInt(this.f15509m ? 1 : 0);
        List<d2.b> list = this.f15510n;
        out.writeInt(list.size());
        Iterator<d2.b> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(out, r42);
        }
        List<? extends File> list2 = this.f15511p;
        out.writeInt(list2.size());
        Iterator<? extends File> it2 = list2.iterator();
        while (it2.hasNext()) {
            out.writeSerializable(it2.next());
        }
        this.f15512q.writeToParcel(out, r42);
        out.writeString(androidx.browser.browseractions.b.m(this.f15513r));
        out.writeInt(this.f15514s ? 1 : 0);
        out.writeInt(this.f15515t ? 1 : 0);
    }
}
