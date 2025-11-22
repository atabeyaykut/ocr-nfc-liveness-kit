package androidx.work.impl.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class Preference {

    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "key")
    public String mKey;

    @Nullable
    @ColumnInfo(name = "long_value")
    public Long mValue;

    public Preference(@NonNull String str, long j10) {
        this.mKey = str;
        this.mValue = Long.valueOf(j10);
    }

    public Preference(@NonNull String str, boolean z10) {
        this(str, z10 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        if (!this.mKey.equals(preference.mKey)) {
            return false;
        }
        Long l5 = this.mValue;
        Long l10 = preference.mValue;
        return l5 != null ? l5.equals(l10) : l10 == null;
    }

    public int hashCode() {
        int r02 = this.mKey.hashCode() * 31;
        Long l5 = this.mValue;
        return r02 + (l5 != null ? l5.hashCode() : 0);
    }
}
