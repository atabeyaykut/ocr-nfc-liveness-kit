package n;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public interface b {

    public static final class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0193a();

        /* renamed from: a, reason: collision with root package name */
        public final String f10458a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<String, String> f10459b;

        /* renamed from: n.b$a$a, reason: collision with other inner class name */
        public static final class C0193a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                String string = parcel.readString();
                int r12 = parcel.readInt();
                LinkedHashMap linkedHashMap = new LinkedHashMap(r12);
                for (int r32 = 0; r32 != r12; r32++) {
                    linkedHashMap.put(parcel.readString(), parcel.readString());
                }
                return new a(string, linkedHashMap);
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int r12) {
                return new a[r12];
            }
        }

        public a(String str, Map<String, String> map) {
            this.f10458a = str;
            this.f10459b = map;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (kotlin.jvm.internal.h.a(this.f10458a, aVar.f10458a) && kotlin.jvm.internal.h.a(this.f10459b, aVar.f10459b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f10459b.hashCode() + (this.f10458a.hashCode() * 31);
        }

        public final String toString() {
            return "Key(key=" + this.f10458a + ", extras=" + this.f10459b + ')';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r42) {
            parcel.writeString(this.f10458a);
            Map<String, String> map = this.f10459b;
            parcel.writeInt(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeString(entry.getValue());
            }
        }
    }

    /* renamed from: n.b$b, reason: collision with other inner class name */
    public static final class C0194b {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f10460a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<String, Object> f10461b;

        public C0194b(Bitmap bitmap, Map<String, ? extends Object> map) {
            this.f10460a = bitmap;
            this.f10461b = map;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0194b) {
                C0194b c0194b = (C0194b) obj;
                if (kotlin.jvm.internal.h.a(this.f10460a, c0194b.f10460a) && kotlin.jvm.internal.h.a(this.f10461b, c0194b.f10461b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f10461b.hashCode() + (this.f10460a.hashCode() * 31);
        }

        public final String toString() {
            return "Value(bitmap=" + this.f10460a + ", extras=" + this.f10461b + ')';
        }
    }

    void a(int r12);

    C0194b b(a aVar);

    void c(a aVar, C0194b c0194b);
}
