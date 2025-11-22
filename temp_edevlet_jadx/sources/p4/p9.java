package p4;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class p9 implements u9 {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    public final ArrayList f12602a;

    public p9(Context context, o9 o9Var) {
        ArrayList arrayList = new ArrayList();
        this.f12602a = arrayList;
        if (o9Var.c()) {
            arrayList.add(new ba(context, o9Var));
        }
    }

    @Override // p4.u9
    public final void a(y9 y9Var) {
        Iterator it = this.f12602a.iterator();
        while (it.hasNext()) {
            ((u9) it.next()).a(y9Var);
        }
    }
}
