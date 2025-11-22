package p4;

import androidx.annotation.Nullable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class da {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public static ca f12312a;

    public static int a(@NullableDecl Object obj) {
        return (int) (Integer.rotateLeft((int) ((obj == null ? 0 : obj.hashCode()) * (-862048943)), 15) * 461845907);
    }

    public static synchronized v9 b(n9 n9Var) {
        if (f12312a == null) {
            f12312a = new ca();
        }
        return f12312a.b(n9Var);
    }

    public static synchronized v9 c(String str) {
        m9 m9Var;
        m9Var = new m9();
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        m9Var.f12508a = str;
        m9Var.f12509b = Boolean.TRUE;
        m9Var.f12510c = 1;
        return b(m9Var.e());
    }
}
