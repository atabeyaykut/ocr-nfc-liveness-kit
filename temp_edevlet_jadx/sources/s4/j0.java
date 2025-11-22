package s4;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class j0 extends s0 {
    public j0(Iterator it) {
        super(it);
    }

    @Override // s4.s0
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        return ((Map.Entry) obj).getValue();
    }
}
