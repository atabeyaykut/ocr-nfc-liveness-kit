package androidx.camera.extensions.internal;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.math.BigInteger;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class Version implements Comparable<Version> {
    public static final Version VERSION_1_0 = create(1, 0, 0, "");
    public static final Version VERSION_1_1 = create(1, 1, 0, "");
    public static final Version VERSION_1_2 = create(1, 2, 0, "");
    private static final Pattern VERSION_STRING_PATTERN = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:\\-(.+))?");

    @NonNull
    public static Version create(int r12, int r22, int r32, @NonNull String str) {
        return new AutoValue_Version(r12, r22, r32, str);
    }

    private static BigInteger createBigInteger(Version version) {
        return BigInteger.valueOf(version.getMajor()).shiftLeft(32).or(BigInteger.valueOf(version.getMinor())).shiftLeft(32).or(BigInteger.valueOf(version.getPatch()));
    }

    @Nullable
    public static Version parse(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Matcher matcher = VERSION_STRING_PATTERN.matcher(str);
        if (matcher.matches()) {
            return create(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)), Integer.parseInt(matcher.group(3)), matcher.group(4) != null ? matcher.group(4) : "");
        }
        return null;
    }

    public int compareTo(int r22) {
        return compareTo(r22, 0);
    }

    public int compareTo(int r22, int r32) {
        return getMajor() == r22 ? Integer.compare(getMinor(), r32) : Integer.compare(getMajor(), r22);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull Version version) {
        return createBigInteger(this).compareTo(createBigInteger(version));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return Objects.equals(Integer.valueOf(getMajor()), Integer.valueOf(version.getMajor())) && Objects.equals(Integer.valueOf(getMinor()), Integer.valueOf(version.getMinor())) && Objects.equals(Integer.valueOf(getPatch()), Integer.valueOf(version.getPatch()));
    }

    public abstract String getDescription();

    public abstract int getMajor();

    public abstract int getMinor();

    public abstract int getPatch();

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(getMajor()), Integer.valueOf(getMinor()), Integer.valueOf(getPatch()));
    }

    @NonNull
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(getMajor() + "." + getMinor() + "." + getPatch());
        if (!TextUtils.isEmpty(getDescription())) {
            sb2.append("-" + getDescription());
        }
        return sb2.toString();
    }
}
