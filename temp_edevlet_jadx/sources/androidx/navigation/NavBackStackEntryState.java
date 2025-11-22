package androidx.navigation;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.UUID;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class NavBackStackEntryState implements Parcelable {
    public static final Parcelable.Creator<NavBackStackEntryState> CREATOR = new Parcelable.Creator<NavBackStackEntryState>() { // from class: androidx.navigation.NavBackStackEntryState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NavBackStackEntryState createFromParcel(Parcel parcel) {
            return new NavBackStackEntryState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NavBackStackEntryState[] newArray(int r12) {
            return new NavBackStackEntryState[r12];
        }
    };
    private final Bundle mArgs;
    private final int mDestinationId;
    private final Bundle mSavedState;
    private final UUID mUUID;

    public NavBackStackEntryState(Parcel parcel) {
        this.mUUID = UUID.fromString(parcel.readString());
        this.mDestinationId = parcel.readInt();
        this.mArgs = parcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        this.mSavedState = parcel.readBundle(NavBackStackEntryState.class.getClassLoader());
    }

    public NavBackStackEntryState(NavBackStackEntry navBackStackEntry) {
        this.mUUID = navBackStackEntry.mId;
        this.mDestinationId = navBackStackEntry.getDestination().getId();
        this.mArgs = navBackStackEntry.getArguments();
        Bundle bundle = new Bundle();
        this.mSavedState = bundle;
        navBackStackEntry.saveState(bundle);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public Bundle getArgs() {
        return this.mArgs;
    }

    public int getDestinationId() {
        return this.mDestinationId;
    }

    @NonNull
    public Bundle getSavedState() {
        return this.mSavedState;
    }

    @NonNull
    public UUID getUUID() {
        return this.mUUID;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int r22) {
        parcel.writeString(this.mUUID.toString());
        parcel.writeInt(this.mDestinationId);
        parcel.writeBundle(this.mArgs);
        parcel.writeBundle(this.mSavedState);
    }
}
