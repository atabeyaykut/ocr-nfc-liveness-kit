package ud;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class k extends RuntimeException {
    public k(c0<?> c0Var) {
        Objects.requireNonNull(c0Var, "response == null");
        StringBuilder sb2 = new StringBuilder("HTTP ");
        rc.b0 b0Var = c0Var.f17992a;
        sb2.append(b0Var.f14389e);
        sb2.append(" ");
        sb2.append(b0Var.f14388d);
        super(sb2.toString());
        rc.b0 b0Var2 = c0Var.f17992a;
        int r02 = b0Var2.f14389e;
        String str = b0Var2.f14388d;
    }
}
