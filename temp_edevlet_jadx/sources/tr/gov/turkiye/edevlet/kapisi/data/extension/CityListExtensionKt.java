package tr.gov.turkiye.edevlet.kapisi.data.extension;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.city.InstitutionCityListContent;
import tr.gov.turkiye.edevlet.kapisi.data.city.InstitutionCityListModel;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007¨\u0006\t"}, d2 = {"completeRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;", "prepareResult", "Ltr/gov/turkiye/edevlet/kapisi/data/city/CityModelRealm;", "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListContent;", "id", "", "categoryCode", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CityListExtensionKt {
    public static final ServiceResult<InstitutionCityListModel> completeRequest(InstitutionCityListModel institutionCityListModel) {
        h.f(institutionCityListModel, "<this>");
        if (institutionCityListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!institutionCityListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        boolean z10 = true;
        if (institutionCityListModel.getCityListData().getResultCode() != 0) {
            return (institutionCityListModel.getCityListData().getResultCode() == 1 || institutionCityListModel.getCityListData().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : institutionCityListModel.getCityListData().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException());
        }
        List<InstitutionCityListContent> cityListContent = institutionCityListModel.getCityListData().getCityListContent();
        if (cityListContent != null && !cityListContent.isEmpty()) {
            z10 = false;
        }
        return z10 ? new EmptyResult(new EmptyListException()) : new SuccessResult(institutionCityListModel);
    }

    public static final CityModelRealm prepareResult(InstitutionCityListContent institutionCityListContent, int r22, int r32) {
        h.f(institutionCityListContent, "<this>");
        CityModelRealm cityModelRealm = new CityModelRealm();
        cityModelRealm.setCityId(r22);
        cityModelRealm.setCityCode(institutionCityListContent.getCode());
        cityModelRealm.setCityName(institutionCityListContent.getName());
        cityModelRealm.setCategoryCode(r32);
        return cityModelRealm;
    }
}
