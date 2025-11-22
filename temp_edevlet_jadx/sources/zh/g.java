package zh;

import c8.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.j;
import l9.m;
import mc.n;
import org.jmrtd.lds.icao.MRZInfo;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GraphicOverlay;
import x9.l;
import yd.a;

/* loaded from: classes3.dex */
public final class g extends j implements l<c8.a, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ tr.gov.turkiye.edevlet.kapisi.verification.ocr.a f20487a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GraphicOverlay f20488b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(tr.gov.turkiye.edevlet.kapisi.verification.ocr.a aVar, d dVar, GraphicOverlay graphicOverlay) {
        super(1);
        this.f20487a = aVar;
        this.f20488b = graphicOverlay;
    }

    @Override // x9.l
    public final m invoke(c8.a aVar) {
        c8.a results = aVar;
        tr.gov.turkiye.edevlet.kapisi.verification.ocr.a aVar2 = this.f20487a;
        aVar2.f17700c.set(false);
        kotlin.jvm.internal.h.e(results, "results");
        this.f20488b.a();
        ArrayList arrayList = results.f2239a;
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        kotlin.jvm.internal.h.e(listUnmodifiableList, "results.textBlocks");
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listUnmodifiableList) {
            a.d dVar = (a.d) obj;
            if (dVar.a().length() == 44 && n.G(dVar.a(), "<", false)) {
                arrayList2.add(obj);
            }
        }
        List listUnmodifiableList2 = Collections.unmodifiableList(arrayList);
        kotlin.jvm.internal.h.e(listUnmodifiableList2, "results.textBlocks");
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listUnmodifiableList2) {
            a.d dVar2 = (a.d) obj2;
            if (dVar2.a().length() == 30 && n.G(dVar2.a(), "<", false)) {
                arrayList3.add(obj2);
            }
        }
        if (arrayList3.size() == 3) {
            try {
                String strA = ((a.d) arrayList3.get(0)).a();
                String strA2 = ((a.d) arrayList3.get(1)).a();
                String strA3 = ((a.d) arrayList3.get(2)).a();
                String strC = mc.j.C(strA, " ", "");
                String strC2 = mc.j.C(strA2, " ", "");
                String strC3 = mc.j.C(strA3, " ", "");
                List listY = n.Y(strC3, new String[]{"<"});
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : listY) {
                    String str = (String) obj3;
                    yd.a.f19652a.c("filter " + str, new Object[0]);
                    if (str.length() > 1) {
                        arrayList4.add(obj3);
                    }
                }
                List listY2 = n.Y(strC3, new String[]{"<<"});
                String str2 = (String) arrayList4.get(0);
                String str3 = (String) arrayList4.get(1);
                String strC4 = mc.j.C(str2, " ", "");
                String strC5 = mc.j.C(str3, " ", "");
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("line 1 " + strC, new Object[0]);
                c0306a.c("line 2 " + strC2, new Object[0]);
                c0306a.c("line 3 " + strC3, new Object[0]);
                c0306a.c("line 3 " + listY2, new Object[0]);
                c0306a.c("first " + strC5, new Object[0]);
                c0306a.c("last " + strC4, new Object[0]);
                aVar2.a(new MRZInfo(strC + strC2 + strC3));
                mc.j.C(mc.j.C(mc.j.C(strC.subSequence(5, 14).toString(), "o", "0"), "O", "0"), " ", "");
            } catch (Exception unused) {
            }
        }
        return m.f9594a;
    }
}
