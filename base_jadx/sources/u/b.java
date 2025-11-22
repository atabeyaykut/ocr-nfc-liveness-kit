package u;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.appcompat.content.res.AppCompatResources;
import j7.p;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final p.a f17725a = new p.a(0);

    public static final boolean a(p.g gVar) {
        int r02 = g.d.c(gVar.f12124i);
        if (r02 != 0) {
            if (r02 == 1) {
                return true;
            }
            if (r02 != 2) {
                throw new p();
            }
            q.f fVar = gVar.L.f12099b;
            q.f fVar2 = gVar.B;
            if (fVar == null && (fVar2 instanceof q.b)) {
                return true;
            }
            r.a aVar = gVar.f12119c;
            if ((aVar instanceof r.b) && (fVar2 instanceof q.g)) {
                r.b bVar = (r.b) aVar;
                if ((bVar.getF2468b() instanceof ImageView) && bVar.getF2468b() == ((q.g) fVar2).c()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final Drawable b(p.g gVar, Drawable drawable, @DrawableRes Integer num, Drawable drawable2) {
        if (drawable != null) {
            return drawable;
        }
        if (num == null) {
            return drawable2;
        }
        if (num.intValue() == 0) {
            return null;
        }
        Context context = gVar.f12117a;
        int r12 = num.intValue();
        Drawable drawable3 = AppCompatResources.getDrawable(context, r12);
        if (drawable3 != null) {
            return drawable3;
        }
        throw new IllegalStateException(kotlin.jvm.internal.h.k(Integer.valueOf(r12), "Invalid resource ID: ").toString());
    }
}
