package tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import e8.b;
import e8.d;
import e8.j;
import java.util.List;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class b extends h8.a<C0271b> {

    /* renamed from: e, reason: collision with root package name */
    public String f16399e;
    public Integer f;

    public static final class a extends i8.a<b> {
        @Override // i8.a, i8.c
        public final View a(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder instanceof C0271b) {
                return viewHolder.itemView;
            }
            return null;
        }

        @Override // i8.a
        public final void c(View v10, int r22, e8.b bVar, j jVar) {
            h.f(v10, "v");
            d dVar = (d) bVar.f.get(j8.d.class);
            h.c(dVar);
            j8.d dVar2 = (j8.d) dVar;
            j jVarC = dVar2.f.c(r22);
            if (jVarC == null || !jVarC.a()) {
                j8.d.l(dVar2, r22);
                return;
            }
            j jVarC2 = dVar2.f.c(r22);
            if (jVarC2 != null) {
                dVar2.j(jVarC2, r22, null);
            }
        }
    }

    /* renamed from: tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b$b, reason: collision with other inner class name */
    public static final class C0271b extends b.c<b> {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f16400a;

        /* renamed from: b, reason: collision with root package name */
        public final ImageView f16401b;

        public C0271b(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.txt_cityName);
            h.e(viewFindViewById, "view.findViewById(R.id.txt_cityName)");
            this.f16400a = (TextView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.img_check);
            h.e(viewFindViewById2, "view.findViewById(R.id.img_check)");
            this.f16401b = (ImageView) viewFindViewById2;
        }

        @Override // e8.b.c
        public final void a(j jVar, List payloads) {
            b bVar = (b) jVar;
            h.f(payloads, "payloads");
            this.f16400a.setText(bVar.f16399e);
            this.f16401b.setVisibility(bVar.f7024c ? 0 : 8);
        }

        @Override // e8.b.c
        public final void b(j jVar) {
            this.f16400a.setText((CharSequence) null);
        }
    }

    @Override // e8.j
    public final void getType() {
    }

    @Override // h8.a
    public final int m() {
        return R.layout.item_my_city_list;
    }

    @Override // h8.a
    public final RecyclerView.ViewHolder n(View view) {
        return new C0271b(view);
    }
}
