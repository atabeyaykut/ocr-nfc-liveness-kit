package w3;

import androidx.annotation.Nullable;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes.dex */
public final class f {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    public static boolean a(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}
