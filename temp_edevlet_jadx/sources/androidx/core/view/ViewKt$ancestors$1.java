package androidx.core.view;

import android.view.ViewParent;
import kotlin.Metadata;

@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public /* synthetic */ class ViewKt$ancestors$1 extends kotlin.jvm.internal.g implements x9.l<ViewParent, ViewParent> {
    public static final ViewKt$ancestors$1 INSTANCE = new ViewKt$ancestors$1();

    public ViewKt$ancestors$1() {
        super(1, ViewParent.class, "getParent", "getParent()Landroid/view/ViewParent;", 0);
    }

    @Override // x9.l
    public final ViewParent invoke(ViewParent p02) {
        kotlin.jvm.internal.h.f(p02, "p0");
        return p02.getParent();
    }
}
