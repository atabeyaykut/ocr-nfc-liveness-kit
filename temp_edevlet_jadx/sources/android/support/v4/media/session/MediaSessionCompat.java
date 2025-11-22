package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public final class MediaSessionCompat {

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public final MediaDescriptionCompat f398a;

        /* renamed from: b, reason: collision with root package name */
        public final long f399b;

        /* renamed from: c, reason: collision with root package name */
        public final Object f400c;

        public static class a implements Parcelable.Creator<QueueItem> {
            @Override // android.os.Parcelable.Creator
            public final QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final QueueItem[] newArray(int r12) {
                return new QueueItem[r12];
            }
        }

        public QueueItem(Parcel parcel) {
            this.f398a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f399b = parcel.readLong();
        }

        public QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j10) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j10 == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.f398a = mediaDescriptionCompat;
            this.f399b = j10;
            this.f400c = obj;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaSession.QueueItem {Description=" + this.f398a + ", Id=" + this.f399b + " }";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r42) {
            this.f398a.writeToParcel(parcel, r42);
            parcel.writeLong(this.f399b);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public final ResultReceiver f401a;

        public static class a implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper[] newArray(int r12) {
                return new ResultReceiverWrapper[r12];
            }
        }

        public ResultReceiverWrapper(Parcel parcel) {
            this.f401a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r32) {
            this.f401a.writeToParcel(parcel, r32);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public final Object f402a;

        /* renamed from: b, reason: collision with root package name */
        public b f403b;

        public static class a implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            public final Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null), null);
            }

            @Override // android.os.Parcelable.Creator
            public final Token[] newArray(int r12) {
                return new Token[r12];
            }
        }

        public Token(Parcelable parcelable, b bVar) {
            this.f402a = parcelable;
            this.f403b = bVar;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Token a(Parcelable parcelable, b bVar) {
            if (parcelable == null) {
                return null;
            }
            if (parcelable instanceof MediaSession.Token) {
                return new Token(parcelable, bVar);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Object obj2 = this.f402a;
            Object obj3 = ((Token) obj).f402a;
            if (obj2 == null) {
                return obj3 == null;
            }
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public final int hashCode() {
            Object obj = this.f402a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r32) {
            parcel.writeParcelable((Parcelable) this.f402a, r32);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }
}
