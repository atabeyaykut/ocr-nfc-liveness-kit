package t1;

import android.widget.Toast;
import java.util.List;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class j extends kotlin.jvm.internal.j implements x9.l<Boolean, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z1.b f15536a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(z1.b bVar) {
        super(1);
        this.f15536a = bVar;
    }

    @Override // x9.l
    public final Boolean invoke(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        z1.b bVar = this.f15536a;
        d dVar = bVar.f19763b;
        int r22 = dVar.f15499a;
        boolean z10 = true;
        z10 = true;
        z10 = true;
        z10 = true;
        z10 = true;
        z10 = true;
        if (r22 == 2) {
            s1.g gVar = bVar.f19766e;
            if (gVar == null) {
                kotlin.jvm.internal.h.n("imageAdapter");
                throw null;
            }
            if (gVar.f14846e.size() >= dVar.f && !zBooleanValue) {
                z10 = false;
                Toast.makeText(bVar.b(), R.string.ef_msg_limit_images, 0).show();
            }
        } else if (r22 == 1) {
            s1.g gVar2 = bVar.f19766e;
            if (gVar2 == null) {
                kotlin.jvm.internal.h.n("imageAdapter");
                throw null;
            }
            if (gVar2.f14846e.size() > 0) {
                s1.g gVar3 = bVar.f19766e;
                if (gVar3 == null) {
                    kotlin.jvm.internal.h.n("imageAdapter");
                    throw null;
                }
                new androidx.core.widget.a(z10 ? 1 : 0, gVar3).run();
                x9.l<? super List<d2.b>, l9.m> lVar = gVar3.f;
                if (lVar != null) {
                    lVar.invoke(gVar3.f14846e);
                }
            }
        }
        return Boolean.valueOf(z10);
    }
}
