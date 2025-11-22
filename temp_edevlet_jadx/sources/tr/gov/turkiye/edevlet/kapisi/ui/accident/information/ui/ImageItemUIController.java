package tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui;

import b8.f;
import com.airbnb.epoxy.Typed2EpoxyController;
import hh.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\rB\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\"\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController;", "Lcom/airbnb/epoxy/Typed2EpoxyController;", "", "Lhh/i;", "carList", "selectedCar", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;", "adapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;)V", "a", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ImageItemUIController extends Typed2EpoxyController<List<? extends i>, i> {
    private final a adapterCallbacks;

    public interface a {
        void f();

        void m(i iVar);
    }

    public static final class b extends j implements l<i, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(i iVar) {
            i it = iVar;
            a aVar = ImageItemUIController.this.adapterCallbacks;
            h.e(it, "it");
            aVar.m(it);
            return m.f9594a;
        }
    }

    public static final class c extends j implements x9.a<m> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final m invoke() {
            ImageItemUIController.this.adapterCallbacks.f();
            return m.f9594a;
        }
    }

    public ImageItemUIController(a adapterCallbacks) {
        h.f(adapterCallbacks, "adapterCallbacks");
        this.adapterCallbacks = adapterCallbacks;
    }

    @Override // com.airbnb.epoxy.Typed2EpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends i> list, i iVar) {
        buildModels2((List<i>) list, iVar);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<i> list, i iVar) {
        if (list != null) {
            int r02 = 0;
            for (Object obj : list) {
                int r22 = r02 + 1;
                if (r02 < 0) {
                    f.k0();
                    throw null;
                }
                ImageItemModel_ imageItemModel_ = new ImageItemModel_();
                imageItemModel_.mo413id(Integer.valueOf(r02));
                imageItemModel_.photoItem((i) obj);
                imageItemModel_.isDefaultVisible(true);
                imageItemModel_.deletePhoto((l<? super i, m>) new b());
                imageItemModel_.addPhoto((x9.a<m>) new c());
                add(imageItemModel_);
                r02 = r22;
            }
        }
    }
}
