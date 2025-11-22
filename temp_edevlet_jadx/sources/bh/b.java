package bh;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InitializeResponseModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.QuestionSetModel;

/* loaded from: classes3.dex */
public final class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<QuestionSetModel>> f1306a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<InitializeResponseModel>> f1307b;

    /* renamed from: c, reason: collision with root package name */
    public final QuestionSetModel f1308c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1309d;

    /* renamed from: e, reason: collision with root package name */
    public final InitializeResponseModel f1310e;

    public b() {
        this(null, null, null, false, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(r0.b<? extends Result<QuestionSetModel>> conditionListState, r0.b<? extends Result<InitializeResponseModel>> initializeState, QuestionSetModel conditionList, boolean z10, InitializeResponseModel initializeData) {
        kotlin.jvm.internal.h.f(conditionListState, "conditionListState");
        kotlin.jvm.internal.h.f(initializeState, "initializeState");
        kotlin.jvm.internal.h.f(conditionList, "conditionList");
        kotlin.jvm.internal.h.f(initializeData, "initializeData");
        this.f1306a = conditionListState;
        this.f1307b = initializeState;
        this.f1308c = conditionList;
        this.f1309d = z10;
        this.f1310e = initializeData;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ b(r0.b bVar, r0.b bVar2, QuestionSetModel questionSetModel, boolean z10, InitializeResponseModel initializeResponseModel, int r17, kotlin.jvm.internal.d dVar) {
        int r02 = r17 & 1;
        r0.b bVar3 = d1.f13733b;
        this(r02 != 0 ? bVar3 : bVar, (r17 & 2) == 0 ? bVar2 : bVar3, (r17 & 4) != 0 ? new QuestionSetModel(null, 0, 0, false, 15, null) : questionSetModel, (r17 & 8) != 0 ? false : z10, (r17 & 16) != 0 ? new InitializeResponseModel(null, 0, 0, false, 15, null) : initializeResponseModel);
    }

    public static b copy$default(b bVar, r0.b conditionListState, r0.b bVar2, QuestionSetModel questionSetModel, boolean z10, InitializeResponseModel initializeResponseModel, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            conditionListState = bVar.f1306a;
        }
        if ((r92 & 2) != 0) {
            bVar2 = bVar.f1307b;
        }
        r0.b initializeState = bVar2;
        if ((r92 & 4) != 0) {
            questionSetModel = bVar.f1308c;
        }
        QuestionSetModel conditionList = questionSetModel;
        if ((r92 & 8) != 0) {
            z10 = bVar.f1309d;
        }
        boolean z11 = z10;
        if ((r92 & 16) != 0) {
            initializeResponseModel = bVar.f1310e;
        }
        InitializeResponseModel initializeData = initializeResponseModel;
        bVar.getClass();
        kotlin.jvm.internal.h.f(conditionListState, "conditionListState");
        kotlin.jvm.internal.h.f(initializeState, "initializeState");
        kotlin.jvm.internal.h.f(conditionList, "conditionList");
        kotlin.jvm.internal.h.f(initializeData, "initializeData");
        return new b(conditionListState, initializeState, conditionList, z11, initializeData);
    }

    public final r0.b<Result<QuestionSetModel>> component1() {
        return this.f1306a;
    }

    public final r0.b<Result<InitializeResponseModel>> component2() {
        return this.f1307b;
    }

    public final QuestionSetModel component3() {
        return this.f1308c;
    }

    public final boolean component4() {
        return this.f1309d;
    }

    public final InitializeResponseModel component5() {
        return this.f1310e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return kotlin.jvm.internal.h.a(this.f1306a, bVar.f1306a) && kotlin.jvm.internal.h.a(this.f1307b, bVar.f1307b) && kotlin.jvm.internal.h.a(this.f1308c, bVar.f1308c) && this.f1309d == bVar.f1309d && kotlin.jvm.internal.h.a(this.f1310e, bVar.f1310e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r12 = (this.f1308c.hashCode() + androidx.browser.browseractions.b.d(this.f1307b, this.f1306a.hashCode() * 31, 31)) * 31;
        boolean z10 = this.f1309d;
        int r02 = z10;
        if (z10 != 0) {
            r02 = 1;
        }
        return this.f1310e.hashCode() + ((r12 + r02) * 31);
    }

    public final String toString() {
        return "MobileAccidentConditionState(conditionListState=" + this.f1306a + ", initializeState=" + this.f1307b + ", conditionList=" + this.f1308c + ", isConditionCall=" + this.f1309d + ", initializeData=" + this.f1310e + ')';
    }
}
