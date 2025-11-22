package hh;

import r0.d1;
import r0.p;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PhotoSaveModel;

/* loaded from: classes3.dex */
public final class f implements p {

    /* renamed from: a, reason: collision with root package name */
    public final r0.b<Result<PhotoSaveModel>> f7141a;

    /* renamed from: b, reason: collision with root package name */
    public final r0.b<Result<DescriptionSaveModel>> f7142b;

    /* renamed from: c, reason: collision with root package name */
    public final r0.b<Result<LocationSaveModel>> f7143c;

    /* renamed from: d, reason: collision with root package name */
    public final PhotoSaveModel f7144d;

    /* renamed from: e, reason: collision with root package name */
    public final LocationSaveModel f7145e;
    public final DescriptionSaveModel f;

    /* renamed from: g, reason: collision with root package name */
    public final Integer f7146g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7147h;

    public f() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(r0.b<? extends Result<PhotoSaveModel>> photoSaveState, r0.b<? extends Result<DescriptionSaveModel>> descriptionSaveState, r0.b<? extends Result<LocationSaveModel>> locationSaveState, PhotoSaveModel photoSaveData, LocationSaveModel locationSaveData, DescriptionSaveModel descriptionSaveData, Integer num, String operationType) {
        kotlin.jvm.internal.h.f(photoSaveState, "photoSaveState");
        kotlin.jvm.internal.h.f(descriptionSaveState, "descriptionSaveState");
        kotlin.jvm.internal.h.f(locationSaveState, "locationSaveState");
        kotlin.jvm.internal.h.f(photoSaveData, "photoSaveData");
        kotlin.jvm.internal.h.f(locationSaveData, "locationSaveData");
        kotlin.jvm.internal.h.f(descriptionSaveData, "descriptionSaveData");
        kotlin.jvm.internal.h.f(operationType, "operationType");
        this.f7141a = photoSaveState;
        this.f7142b = descriptionSaveState;
        this.f7143c = locationSaveState;
        this.f7144d = photoSaveData;
        this.f7145e = locationSaveData;
        this.f = descriptionSaveData;
        this.f7146g = num;
        this.f7147h = operationType;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ f(r0.b bVar, r0.b bVar2, r0.b bVar3, PhotoSaveModel photoSaveModel, LocationSaveModel locationSaveModel, DescriptionSaveModel descriptionSaveModel, Integer num, String str, int r23, kotlin.jvm.internal.d dVar) {
        int r12 = r23 & 1;
        r0.b bVar4 = d1.f13733b;
        this(r12 != 0 ? bVar4 : bVar, (r23 & 2) != 0 ? bVar4 : bVar2, (r23 & 4) == 0 ? bVar3 : bVar4, (r23 & 8) != 0 ? new PhotoSaveModel(null, 0, 0, false, 15, null) : photoSaveModel, (r23 & 16) != 0 ? new LocationSaveModel(null, 0, 0, false, 15, null) : locationSaveModel, (r23 & 32) != 0 ? new DescriptionSaveModel(null, 0, 0, false, 15, null) : descriptionSaveModel, (r23 & 64) != 0 ? null : num, (r23 & 128) != 0 ? "saveMedia" : str);
    }

    public static f copy$default(f fVar, r0.b bVar, r0.b bVar2, r0.b bVar3, PhotoSaveModel photoSaveModel, LocationSaveModel locationSaveModel, DescriptionSaveModel descriptionSaveModel, Integer num, String str, int r18, Object obj) {
        r0.b photoSaveState = (r18 & 1) != 0 ? fVar.f7141a : bVar;
        r0.b descriptionSaveState = (r18 & 2) != 0 ? fVar.f7142b : bVar2;
        r0.b locationSaveState = (r18 & 4) != 0 ? fVar.f7143c : bVar3;
        PhotoSaveModel photoSaveData = (r18 & 8) != 0 ? fVar.f7144d : photoSaveModel;
        LocationSaveModel locationSaveData = (r18 & 16) != 0 ? fVar.f7145e : locationSaveModel;
        DescriptionSaveModel descriptionSaveData = (r18 & 32) != 0 ? fVar.f : descriptionSaveModel;
        Integer num2 = (r18 & 64) != 0 ? fVar.f7146g : num;
        String operationType = (r18 & 128) != 0 ? fVar.f7147h : str;
        fVar.getClass();
        kotlin.jvm.internal.h.f(photoSaveState, "photoSaveState");
        kotlin.jvm.internal.h.f(descriptionSaveState, "descriptionSaveState");
        kotlin.jvm.internal.h.f(locationSaveState, "locationSaveState");
        kotlin.jvm.internal.h.f(photoSaveData, "photoSaveData");
        kotlin.jvm.internal.h.f(locationSaveData, "locationSaveData");
        kotlin.jvm.internal.h.f(descriptionSaveData, "descriptionSaveData");
        kotlin.jvm.internal.h.f(operationType, "operationType");
        return new f(photoSaveState, descriptionSaveState, locationSaveState, photoSaveData, locationSaveData, descriptionSaveData, num2, operationType);
    }

    public final r0.b<Result<PhotoSaveModel>> component1() {
        return this.f7141a;
    }

    public final r0.b<Result<DescriptionSaveModel>> component2() {
        return this.f7142b;
    }

    public final r0.b<Result<LocationSaveModel>> component3() {
        return this.f7143c;
    }

    public final PhotoSaveModel component4() {
        return this.f7144d;
    }

    public final LocationSaveModel component5() {
        return this.f7145e;
    }

    public final DescriptionSaveModel component6() {
        return this.f;
    }

    public final Integer component7() {
        return this.f7146g;
    }

    public final String component8() {
        return this.f7147h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.h.a(this.f7141a, fVar.f7141a) && kotlin.jvm.internal.h.a(this.f7142b, fVar.f7142b) && kotlin.jvm.internal.h.a(this.f7143c, fVar.f7143c) && kotlin.jvm.internal.h.a(this.f7144d, fVar.f7144d) && kotlin.jvm.internal.h.a(this.f7145e, fVar.f7145e) && kotlin.jvm.internal.h.a(this.f, fVar.f) && kotlin.jvm.internal.h.a(this.f7146g, fVar.f7146g) && kotlin.jvm.internal.h.a(this.f7147h, fVar.f7147h);
    }

    public final int hashCode() {
        int r12 = (this.f.hashCode() + ((this.f7145e.hashCode() + ((this.f7144d.hashCode() + androidx.browser.browseractions.b.d(this.f7143c, androidx.browser.browseractions.b.d(this.f7142b, this.f7141a.hashCode() * 31, 31), 31)) * 31)) * 31)) * 31;
        Integer num = this.f7146g;
        return this.f7147h.hashCode() + ((r12 + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MobileAccidentInformationState(photoSaveState=");
        sb2.append(this.f7141a);
        sb2.append(", descriptionSaveState=");
        sb2.append(this.f7142b);
        sb2.append(", locationSaveState=");
        sb2.append(this.f7143c);
        sb2.append(", photoSaveData=");
        sb2.append(this.f7144d);
        sb2.append(", locationSaveData=");
        sb2.append(this.f7145e);
        sb2.append(", descriptionSaveData=");
        sb2.append(this.f);
        sb2.append(", uploadedMediaIndex=");
        sb2.append(this.f7146g);
        sb2.append(", operationType=");
        return android.support.v4.media.a.h(sb2, this.f7147h, ')');
    }
}
