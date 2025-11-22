package s4;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class t8 implements w8 {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    public final ArrayList f15180a;

    public t8(Context context, s8 s8Var) {
        ArrayList arrayList = new ArrayList();
        this.f15180a = arrayList;
        if (s8Var.c()) {
            arrayList.add(new c9(context, s8Var));
        }
    }

    @Override // s4.w8
    public final void a(a9 a9Var) {
        Iterator it = this.f15180a.iterator();
        while (it.hasNext()) {
            ((w8) it.next()).a(a9Var);
        }
    }
}
