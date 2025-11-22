package r4;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class j6 implements l6 {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    public final ArrayList f14182a;

    public j6(Context context, i6 i6Var) {
        ArrayList arrayList = new ArrayList();
        this.f14182a = arrayList;
        if (i6Var.c()) {
            arrayList.add(new p6(context, i6Var));
        }
    }

    @Override // r4.l6
    public final void a(p4.c7 c7Var) {
        Iterator it = this.f14182a.iterator();
        while (it.hasNext()) {
            ((l6) it.next()).a(c7Var);
        }
    }
}
