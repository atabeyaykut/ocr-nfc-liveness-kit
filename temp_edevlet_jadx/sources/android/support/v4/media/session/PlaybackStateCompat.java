package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f409a;

    /* renamed from: b, reason: collision with root package name */
    public final long f410b;

    /* renamed from: c, reason: collision with root package name */
    public final long f411c;

    /* renamed from: d, reason: collision with root package name */
    public final float f412d;

    /* renamed from: e, reason: collision with root package name */
    public final long f413e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f414g;

    /* renamed from: h, reason: collision with root package name */
    public final long f415h;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f416j;

    /* renamed from: k, reason: collision with root package name */
    public final long f417k;

    /* renamed from: l, reason: collision with root package name */
    public final Bundle f418l;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public final String f419a;

        /* renamed from: b, reason: collision with root package name */
        public final CharSequence f420b;

        /* renamed from: c, reason: collision with root package name */
        public final int f421c;

        /* renamed from: d, reason: collision with root package name */
        public final Bundle f422d;

        /* renamed from: e, reason: collision with root package name */
        public Object f423e;

        public static class a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public final CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final CustomAction[] newArray(int r12) {
                return new CustomAction[r12];
            }
        }

        public CustomAction(Parcel parcel) {
            this.f419a = parcel.readString();
            this.f420b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f421c = parcel.readInt();
            this.f422d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        public CustomAction(String str, CharSequence charSequence, int r32, Bundle bundle) {
            this.f419a = str;
            this.f420b = charSequence;
            this.f421c = r32;
            this.f422d = bundle;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f420b) + ", mIcon=" + this.f421c + ", mExtras=" + this.f422d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r32) {
            parcel.writeString(this.f419a);
            TextUtils.writeToParcel(this.f420b, parcel, r32);
            parcel.writeInt(this.f421c);
            parcel.writeBundle(this.f422d);
        }
    }

    public static class a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat[] newArray(int r12) {
            return new PlaybackStateCompat[r12];
        }
    }

    public PlaybackStateCompat(int r12, long j10, long j11, float f, long j12, CharSequence charSequence, long j13, ArrayList arrayList, long j14, Bundle bundle) {
        this.f409a = r12;
        this.f410b = j10;
        this.f411c = j11;
        this.f412d = f;
        this.f413e = j12;
        this.f = 0;
        this.f414g = charSequence;
        this.f415h = j13;
        this.f416j = new ArrayList(arrayList);
        this.f417k = j14;
        this.f418l = bundle;
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f409a = parcel.readInt();
        this.f410b = parcel.readLong();
        this.f412d = parcel.readFloat();
        this.f415h = parcel.readLong();
        this.f411c = parcel.readLong();
        this.f413e = parcel.readLong();
        this.f414g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f416j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f417k = parcel.readLong();
        this.f418l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "PlaybackState {state=" + this.f409a + ", position=" + this.f410b + ", buffered position=" + this.f411c + ", speed=" + this.f412d + ", updated=" + this.f415h + ", actions=" + this.f413e + ", error code=" + this.f + ", error message=" + this.f414g + ", custom actions=" + this.f416j + ", active item id=" + this.f417k + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        parcel.writeInt(this.f409a);
        parcel.writeLong(this.f410b);
        parcel.writeFloat(this.f412d);
        parcel.writeLong(this.f415h);
        parcel.writeLong(this.f411c);
        parcel.writeLong(this.f413e);
        TextUtils.writeToParcel(this.f414g, parcel, r42);
        parcel.writeTypedList(this.f416j);
        parcel.writeLong(this.f417k);
        parcel.writeBundle(this.f418l);
        parcel.writeInt(this.f);
    }
}
