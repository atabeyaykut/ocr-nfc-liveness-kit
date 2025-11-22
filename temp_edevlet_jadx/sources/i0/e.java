package i0;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: c, reason: collision with root package name */
    public static final e f7224c = new e("COMPOSITION");

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f7225a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public f f7226b;

    public e(e eVar) {
        this.f7225a = new ArrayList(eVar.f7225a);
        this.f7226b = eVar.f7226b;
    }

    public e(String... strArr) {
        this.f7225a = Arrays.asList(strArr);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final boolean a(int r82, String str) {
        List<String> list = this.f7225a;
        if (r82 >= list.size()) {
            return false;
        }
        boolean z10 = r82 == list.size() - 1;
        String str2 = list.get(r82);
        if (!str2.equals("**")) {
            return (z10 || (r82 == list.size() + (-2) && list.get(list.size() + (-1)).equals("**"))) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z10 && list.get(r82 + 1).equals(str)) {
            return r82 == list.size() + (-2) || (r82 == list.size() + (-3) && list.get(list.size() + (-1)).equals("**"));
        }
        if (z10) {
            return true;
        }
        int r83 = r82 + 1;
        if (r83 < list.size() - 1) {
            return false;
        }
        return list.get(r83).equals(str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final int b(int r52, String str) {
        if ("__container".equals(str)) {
            return 0;
        }
        List<String> list = this.f7225a;
        if (list.get(r52).equals("**")) {
            return (r52 != list.size() - 1 && list.get(r52 + 1).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final boolean c(int r52, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List<String> list = this.f7225a;
        if (r52 >= list.size()) {
            return false;
        }
        return list.get(r52).equals(str) || list.get(r52).equals("**") || list.get(r52).equals("*");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final boolean d(int r32, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List<String> list = this.f7225a;
        return r32 < list.size() - 1 || list.get(r32).equals("**");
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("KeyPath{keys=");
        sb2.append(this.f7225a);
        sb2.append(",resolved=");
        return androidx.browser.browseractions.b.f(sb2, this.f7226b != null, '}');
    }
}
