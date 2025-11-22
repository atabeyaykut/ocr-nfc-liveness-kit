package v;

import android.content.Context;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class c extends j implements x9.a<Float> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f18172a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar) {
        super(0);
        this.f18172a = eVar;
    }

    @Override // x9.a
    public final Float invoke() {
        Context context = this.f18172a.getContext();
        h.b(context, "context");
        return Float.valueOf(context.getResources().getDimension(R.dimen.md_dialog_default_corner_radius));
    }
}
