package tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui;

import b8.f;
import com.airbnb.epoxy.TypedEpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController;", "Lcom/airbnb/epoxy/TypedEpoxyController;", "", "Lzg/a;", "carList", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;", "adapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemUIController$a;)V", "a", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class PreviewImageItemUIController extends TypedEpoxyController<List<? extends zg.a>> {
    private final a adapterCallbacks;

    public interface a {
        void x(byte[] bArr);
    }

    public static final class b extends j implements l<byte[], m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(byte[] bArr) {
            byte[] it = bArr;
            a aVar = PreviewImageItemUIController.this.adapterCallbacks;
            h.e(it, "it");
            aVar.x(it);
            return m.f9594a;
        }
    }

    public PreviewImageItemUIController(a adapterCallbacks) {
        h.f(adapterCallbacks, "adapterCallbacks");
        this.adapterCallbacks = adapterCallbacks;
    }

    @Override // com.airbnb.epoxy.TypedEpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends zg.a> list) {
        buildModels2((List<zg.a>) list);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<zg.a> carList) {
        h.f(carList, "carList");
        int r12 = 0;
        for (Object obj : carList) {
            int r32 = r12 + 1;
            if (r12 < 0) {
                f.k0();
                throw null;
            }
            PreviewImageItemModel_ previewImageItemModel_ = new PreviewImageItemModel_();
            previewImageItemModel_.id(Integer.valueOf(r12));
            previewImageItemModel_.photoItem((zg.a) obj);
            previewImageItemModel_.isDefaultVisible(true);
            previewImageItemModel_.addPhoto((l<? super byte[], m>) new b());
            add(previewImageItemModel_);
            r12 = r32;
        }
    }
}
