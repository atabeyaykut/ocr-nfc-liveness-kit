package l8;

import java.io.IOException;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class j extends h<Set<Object>, Object> {
    public j(p pVar) {
        super(pVar);
    }

    @Override // l8.h, l8.p
    public final /* bridge */ /* synthetic */ void c(y yVar, Object obj) throws IOException {
        c(yVar, (Set) obj);
    }

    @Override // l8.h
    public final Collection e() {
        return new LinkedHashSet();
    }
}
