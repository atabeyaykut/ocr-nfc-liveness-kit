package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;

@RequiresApi(24)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class GnssStatusWrapper extends GnssStatusCompat {
    private final GnssStatus mWrapped;

    @RequiresApi(26)
    public static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        public static float getCarrierFrequencyHz(GnssStatus gnssStatus, int r12) {
            return gnssStatus.getCarrierFrequencyHz(r12);
        }

        @DoNotInline
        public static boolean hasCarrierFrequencyHz(GnssStatus gnssStatus, int r12) {
            return gnssStatus.hasCarrierFrequencyHz(r12);
        }
    }

    @RequiresApi(30)
    public static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        public static float getBasebandCn0DbHz(GnssStatus gnssStatus, int r12) {
            return gnssStatus.getBasebandCn0DbHz(r12);
        }

        @DoNotInline
        public static boolean hasBasebandCn0DbHz(GnssStatus gnssStatus, int r12) {
            return gnssStatus.hasBasebandCn0DbHz(r12);
        }
    }

    public GnssStatusWrapper(Object obj) {
        this.mWrapped = (GnssStatus) Preconditions.checkNotNull((GnssStatus) obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GnssStatusWrapper) {
            return this.mWrapped.equals(((GnssStatusWrapper) obj).mWrapped);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int r22) {
        return this.mWrapped.getAzimuthDegrees(r22);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int r32) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getBasebandCn0DbHz(this.mWrapped, r32);
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int r32) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.getCarrierFrequencyHz(this.mWrapped, r32);
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int r22) {
        return this.mWrapped.getCn0DbHz(r22);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int r22) {
        return this.mWrapped.getConstellationType(r22);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int r22) {
        return this.mWrapped.getElevationDegrees(r22);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        return this.mWrapped.getSatelliteCount();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int r22) {
        return this.mWrapped.getSvid(r22);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int r22) {
        return this.mWrapped.hasAlmanacData(r22);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int r32) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.hasBasebandCn0DbHz(this.mWrapped, r32);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int r32) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.hasCarrierFrequencyHz(this.mWrapped, r32);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int r22) {
        return this.mWrapped.hasEphemerisData(r22);
    }

    public int hashCode() {
        return this.mWrapped.hashCode();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int r22) {
        return this.mWrapped.usedInFix(r22);
    }
}
