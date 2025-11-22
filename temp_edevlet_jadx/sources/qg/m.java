package qg;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import e8.b;
import java.util.List;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class m extends h8.a<a> {

    /* renamed from: e, reason: collision with root package name */
    public String f13688e;
    public Integer f;

    public static final class a extends b.c<m> {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f13689a;

        public a(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.txt_cityName);
            kotlin.jvm.internal.h.e(viewFindViewById, "view.findViewById(R.id.txt_cityName)");
            this.f13689a = (TextView) viewFindViewById;
        }

        @Override // e8.b.c
        public final void a(e8.j jVar, List payloads) {
            kotlin.jvm.internal.h.f(payloads, "payloads");
            this.f13689a.setText(((m) jVar).f13688e);
        }

        @Override // e8.b.c
        public final void b(e8.j jVar) {
            this.f13689a.setText((CharSequence) null);
        }
    }

    @Override // e8.j
    public final void getType() {
    }

    @Override // h8.a
    public final int m() {
        return R.layout.item_city_list;
    }

    @Override // h8.a
    public final RecyclerView.ViewHolder n(View view) {
        return new a(view);
    }
}
