package tr.gov.turkiye.edevlet.kapisi.data.extension;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionListItem;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionListModel;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0003¨\u0006\u0004"}, d2 = {"completeRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionDetailModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InstitutionListExtensionKt {
    public static final ServiceResult<InstitutionDetailModel> completeRequest(InstitutionDetailModel institutionDetailModel) {
        h.f(institutionDetailModel, "<this>");
        return institutionDetailModel.getLogin() == 0 ? new LoginFail(new LoginException()) : institutionDetailModel.isSuccess() ? institutionDetailModel.getInstitutionDetailData().getResultCode() == 0 ? new SuccessResult(institutionDetailModel) : (institutionDetailModel.getInstitutionDetailData().getResultCode() == 1 || institutionDetailModel.getInstitutionDetailData().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : institutionDetailModel.getInstitutionDetailData().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException()) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<InstitutionListModel> completeRequest(InstitutionListModel institutionListModel) {
        h.f(institutionListModel, "<this>");
        if (institutionListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!institutionListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        boolean z10 = true;
        if (institutionListModel.getInstitutionListData().getResultCode() != 0) {
            return (institutionListModel.getInstitutionListData().getResultCode() == 1 || institutionListModel.getInstitutionListData().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : institutionListModel.getInstitutionListData().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException());
        }
        List<InstitutionListItem> institutionList = institutionListModel.getInstitutionListData().getInstitutionList();
        if (institutionList != null && !institutionList.isEmpty()) {
            z10 = false;
        }
        return z10 ? new EmptyResult(new EmptyListException()) : new SuccessResult(institutionListModel);
    }
}
