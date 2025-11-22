package tr.gov.turkiye.edevlet.kapisi.data.extension;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldListModel;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyModel;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ClarificationControlData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DashPointSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DashPointSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DifferentVehicleSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DifferentVehicleSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadCompletedReportModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DownloadMediaModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverLicenceModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DrivingLicenceData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InitializeModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InitializeResponseModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PhotoSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PhotoSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.QuestionSetData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.QuestionSetModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ResultMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRDraftData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRDraftModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleListData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleSaveData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.CardVerificationData;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.CardVerificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.SMSVerificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.SmsCodeServiceResultData;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceResult;
import tr.gov.turkiye.edevlet.kapisi.data.otp.ServerTimeModel;
import tr.gov.turkiye.edevlet.kapisi.data.otp.TokenUpdateModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.UserProfileResult;
import tr.gov.turkiye.edevlet.kapisi.data.service.AboutPageItemModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.AboutPageModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.FavoriteServiceListModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.FavoriteServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceList;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModel;

@Metadata(d1 = {"\u0000Â\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0004\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0006\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0001*\u00020\u0007\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\b0\u0001*\u00020\b\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\t0\u0001*\u00020\t\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\n\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0001*\u00020\u000b\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\f0\u0001*\u00020\f\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\r0\u0001*\u00020\r\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u000e\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0001*\u00020\u000f\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00100\u0001*\u00020\u0010\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00110\u0001*\u00020\u0011\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00120\u0001*\u00020\u0012\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00130\u0001*\u00020\u0013\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00140\u0001*\u00020\u0014\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00150\u0001*\u00020\u0015\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00160\u0001*\u00020\u0016\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00170\u0001*\u00020\u0017\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00180\u0001*\u00020\u0018\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00190\u0001*\u00020\u0019\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0001*\u00020\u001a\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0001*\u00020\u001b\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0001*\u00020\u001c\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0001*\u00020\u001d\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0001*\u00020\u001e\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020\u001f\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020 0\u0001*\u00020 \u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020!0\u0001*\u00020!\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\"0\u0001*\u00020\"\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020#0\u0001*\u00020#\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020$0\u0001*\u00020$\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020%0\u0001*\u00020%\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020&0\u0001*\u00020&\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020'0\u0001*\u00020'\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020(0\u0001*\u00020(\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020)0\u0001*\u00020)\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020*0\u0001*\u00020*\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020+0\u0001*\u00020+\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020,0\u0001*\u00020,\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020-0\u0001*\u00020-\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020.0\u0001*\u00020.\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020/0\u0001*\u00020/\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002000\u0001*\u000200\u001a\u0010\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0004\u001a\u0010\u00101\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0006\u001a\u0010\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070\u0001*\u00020\u0007¨\u00063"}, d2 = {"completeApproveRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceResult;", "Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;", "completeFavOperationRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;", "completeRequest", "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckClarificationModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportListModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationGuestRequestModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DashPointSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DescriptionSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DifferentVehicleSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadCompletedReportModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DownloadMediaModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverLicenceModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DriverSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/GenerateQRModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportListModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeResponseModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MergeDetailModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionSetModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRDraftModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/TwoFactorModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleListModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/otp/TokenUpdateModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;", "completeRequestOnLogin", "completeVerification", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ServiceListExtensionKt {
    public static final ServiceResult<ServerTimeModel> completeApproveRequest(ServerTimeModel serverTimeModel) {
        h.f(serverTimeModel, "<this>");
        return h.a(serverTimeModel.getResultCode(), "SUCCESS") ? new SuccessResult(serverTimeModel) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<ServiceListModel> completeFavOperationRequest(ServiceListModel serviceListModel) {
        h.f(serviceListModel, "<this>");
        return serviceListModel.getLogin() == 0 ? new LoginFail(new LoginException()) : serviceListModel.isSuccess() ? serviceListModel.getServiceList().getResultCode() == 0 ? new SuccessResult(serviceListModel) : (serviceListModel.getServiceList().getResultCode() == 1 || serviceListModel.getServiceList().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : serviceListModel.getServiceList().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException()) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<BarcodeVerifyFieldListModel> completeRequest(BarcodeVerifyFieldListModel barcodeVerifyFieldListModel) {
        h.f(barcodeVerifyFieldListModel, "<this>");
        if (barcodeVerifyFieldListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (barcodeVerifyFieldListModel.isSuccess() && barcodeVerifyFieldListModel.getBarcodeVerifyFieldData() != null && (!barcodeVerifyFieldListModel.getBarcodeVerifyFieldData().getFields().isEmpty())) {
            return new SuccessResult(barcodeVerifyFieldListModel);
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<BarcodeVerifyModel> completeRequest(BarcodeVerifyModel barcodeVerifyModel) {
        h.f(barcodeVerifyModel, "<this>");
        if (barcodeVerifyModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (barcodeVerifyModel.isSuccess() && barcodeVerifyModel.getBarcodeData() != null) {
            String documentContent = barcodeVerifyModel.getBarcodeData().getDocumentContent();
            return !(documentContent == null || documentContent.length() == 0) ? new SuccessResult(barcodeVerifyModel) : new ServerError(new ServiceErrorException());
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<InfoMessageModel> completeRequest(InfoMessageModel infoMessageModel) {
        h.f(infoMessageModel, "<this>");
        if (infoMessageModel.isSuccess() && infoMessageModel.getInfoMessageData() != null) {
            return infoMessageModel.getInfoMessageData().isEmpty() ^ true ? new SuccessResult(infoMessageModel) : new EmptyResult(new EmptyListException());
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<AgreementModel> completeRequest(AgreementModel agreementModel) {
        ServiceResult<AgreementModel> queueResult;
        h.f(agreementModel, "<this>");
        if (agreementModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!agreementModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        AgreementData agreementData = agreementModel.getAgreementData();
        Integer numValueOf = agreementData != null ? Integer.valueOf(agreementData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(agreementModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = agreementModel.getAgreementData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = agreementModel.getAgreementData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(agreementModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<CheckClarificationModel> completeRequest(CheckClarificationModel checkClarificationModel) {
        ServiceResult<CheckClarificationModel> queueResult;
        h.f(checkClarificationModel, "<this>");
        if (checkClarificationModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!checkClarificationModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ClarificationControlData clarificationControl = checkClarificationModel.getClarificationControl();
        Integer numValueOf = clarificationControl != null ? Integer.valueOf(clarificationControl.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(checkClarificationModel);
        } else {
            boolean z10 = false;
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                return new ServerError(new ServiceErrorException());
            }
            if (numValueOf != null && numValueOf.intValue() == 3) {
                return new EmptyResult(new EmptyListException());
            }
            if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                z10 = true;
            }
            if (!z10) {
                return new ServerError(new ServiceErrorException());
            }
            queueResult = new QueueResult<>(checkClarificationModel);
        }
        return queueResult;
    }

    public static final ServiceResult<CompletedReportListModel> completeRequest(CompletedReportListModel completedReportListModel) {
        ServiceResult<CompletedReportListModel> queueResult;
        h.f(completedReportListModel, "<this>");
        if (completedReportListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!completedReportListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        CompletedReportListData completedReportListData = completedReportListModel.getCompletedReportListData();
        Integer numValueOf = completedReportListData != null ? Integer.valueOf(completedReportListData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(completedReportListModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = completedReportListModel.getCompletedReportListData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = completedReportListModel.getCompletedReportListData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(completedReportListModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<ConfirmationGuestRequestModel> completeRequest(ConfirmationGuestRequestModel confirmationGuestRequestModel) {
        ServiceResult<ConfirmationGuestRequestModel> queueResult;
        h.f(confirmationGuestRequestModel, "<this>");
        if (confirmationGuestRequestModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!confirmationGuestRequestModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ConfirmationGuestRequestData confirmationGuestRequestData = confirmationGuestRequestModel.getConfirmationGuestRequestData();
        Integer numValueOf = confirmationGuestRequestData != null ? Integer.valueOf(confirmationGuestRequestData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(confirmationGuestRequestModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = confirmationGuestRequestModel.getConfirmationGuestRequestData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = confirmationGuestRequestModel.getConfirmationGuestRequestData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(confirmationGuestRequestModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<ConfirmationHostRequestModel> completeRequest(ConfirmationHostRequestModel confirmationHostRequestModel) {
        ServiceResult<ConfirmationHostRequestModel> queueResult;
        h.f(confirmationHostRequestModel, "<this>");
        if (confirmationHostRequestModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!confirmationHostRequestModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ConfirmationHostRequestData confirmationHostRequestData = confirmationHostRequestModel.getConfirmationHostRequestData();
        Integer numValueOf = confirmationHostRequestData != null ? Integer.valueOf(confirmationHostRequestData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(confirmationHostRequestModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = confirmationHostRequestModel.getConfirmationHostRequestData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = confirmationHostRequestModel.getConfirmationHostRequestData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(confirmationHostRequestModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<ControlConfirmationRequestModel> completeRequest(ControlConfirmationRequestModel controlConfirmationRequestModel) {
        ServiceResult<ControlConfirmationRequestModel> queueResult;
        h.f(controlConfirmationRequestModel, "<this>");
        if (controlConfirmationRequestModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!controlConfirmationRequestModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ControlConfirmationRequestData controlConfirmationRequestData = controlConfirmationRequestModel.getControlConfirmationRequestData();
        Integer numValueOf = controlConfirmationRequestData != null ? Integer.valueOf(controlConfirmationRequestData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(controlConfirmationRequestModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = controlConfirmationRequestModel.getControlConfirmationRequestData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = controlConfirmationRequestModel.getControlConfirmationRequestData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(controlConfirmationRequestModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<ControlQRScanModel> completeRequest(ControlQRScanModel controlQRScanModel) {
        ServiceResult<ControlQRScanModel> queueResult;
        h.f(controlQRScanModel, "<this>");
        if (controlQRScanModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!controlQRScanModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ControlQRScanData controlQRScanData = controlQRScanModel.getControlQRScanData();
        Integer numValueOf = controlQRScanData != null ? Integer.valueOf(controlQRScanData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(controlQRScanModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = controlQRScanModel.getControlQRScanData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = controlQRScanModel.getControlQRScanData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(controlQRScanModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DashPointSaveModel> completeRequest(DashPointSaveModel dashPointSaveModel) {
        ServiceResult<DashPointSaveModel> queueResult;
        h.f(dashPointSaveModel, "<this>");
        if (dashPointSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!dashPointSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DashPointSaveData dashPointSaveData = dashPointSaveModel.getDashPointSaveData();
        Integer numValueOf = dashPointSaveData != null ? Integer.valueOf(dashPointSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(dashPointSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = dashPointSaveModel.getDashPointSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = dashPointSaveModel.getDashPointSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(dashPointSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DescriptionSaveModel> completeRequest(DescriptionSaveModel descriptionSaveModel) {
        ServiceResult<DescriptionSaveModel> queueResult;
        h.f(descriptionSaveModel, "<this>");
        if (descriptionSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!descriptionSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DescriptionSaveData descriptionSaveData = descriptionSaveModel.getDescriptionSaveData();
        Integer numValueOf = descriptionSaveData != null ? Integer.valueOf(descriptionSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(descriptionSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = descriptionSaveModel.getDescriptionSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = descriptionSaveModel.getDescriptionSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(descriptionSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DifferentVehicleSaveModel> completeRequest(DifferentVehicleSaveModel differentVehicleSaveModel) {
        ServiceResult<DifferentVehicleSaveModel> queueResult;
        h.f(differentVehicleSaveModel, "<this>");
        if (differentVehicleSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!differentVehicleSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DifferentVehicleSaveData vehicleSaveData = differentVehicleSaveModel.getVehicleSaveData();
        Integer numValueOf = vehicleSaveData != null ? Integer.valueOf(vehicleSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(differentVehicleSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = differentVehicleSaveModel.getVehicleSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = differentVehicleSaveModel.getVehicleSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(differentVehicleSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DownloadCompletedReportModel> completeRequest(DownloadCompletedReportModel downloadCompletedReportModel) {
        ServiceResult<DownloadCompletedReportModel> queueResult;
        h.f(downloadCompletedReportModel, "<this>");
        if (downloadCompletedReportModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!downloadCompletedReportModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DownloadCompletedReportData downloadCompletedReportData = downloadCompletedReportModel.getDownloadCompletedReportData();
        Integer numValueOf = downloadCompletedReportData != null ? Integer.valueOf(downloadCompletedReportData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(downloadCompletedReportModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = downloadCompletedReportModel.getDownloadCompletedReportData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = downloadCompletedReportModel.getDownloadCompletedReportData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(downloadCompletedReportModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DownloadMediaModel> completeRequest(DownloadMediaModel downloadMediaModel) {
        ServiceResult<DownloadMediaModel> queueResult;
        h.f(downloadMediaModel, "<this>");
        if (downloadMediaModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!downloadMediaModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DownloadMediaData downloadMediaData = downloadMediaModel.getDownloadMediaData();
        Integer numValueOf = downloadMediaData != null ? Integer.valueOf(downloadMediaData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(downloadMediaModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = downloadMediaModel.getDownloadMediaData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = downloadMediaModel.getDownloadMediaData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(downloadMediaModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DriverLicenceModel> completeRequest(DriverLicenceModel driverLicenceModel) {
        ServiceResult<DriverLicenceModel> queueResult;
        h.f(driverLicenceModel, "<this>");
        if (driverLicenceModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!driverLicenceModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DrivingLicenceData drivingLicenceData = driverLicenceModel.getDrivingLicenceData();
        Integer numValueOf = drivingLicenceData != null ? Integer.valueOf(drivingLicenceData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(driverLicenceModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = driverLicenceModel.getDrivingLicenceData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = driverLicenceModel.getDrivingLicenceData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(driverLicenceModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<DriverSaveModel> completeRequest(DriverSaveModel driverSaveModel) {
        ServiceResult<DriverSaveModel> queueResult;
        h.f(driverSaveModel, "<this>");
        if (driverSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!driverSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        DriverSaveData driverSaveData = driverSaveModel.getDriverSaveData();
        Integer numValueOf = driverSaveData != null ? Integer.valueOf(driverSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(driverSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = driverSaveModel.getDriverSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = driverSaveModel.getDriverSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(driverSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<GenerateQRModel> completeRequest(GenerateQRModel generateQRModel) {
        ServiceResult<GenerateQRModel> queueResult;
        h.f(generateQRModel, "<this>");
        if (generateQRModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!generateQRModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        GenerateQRData generateQRData = generateQRModel.getGenerateQRData();
        Integer numValueOf = generateQRData != null ? Integer.valueOf(generateQRData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(generateQRModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = generateQRModel.getGenerateQRData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = generateQRModel.getGenerateQRData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(generateQRModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<HostReportLocationModel> completeRequest(HostReportLocationModel hostReportLocationModel) {
        ServiceResult<HostReportLocationModel> queueResult;
        h.f(hostReportLocationModel, "<this>");
        if (hostReportLocationModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!hostReportLocationModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        HostReportLocationData hostReportLocationData = hostReportLocationModel.getHostReportLocationData();
        Integer numValueOf = hostReportLocationData != null ? Integer.valueOf(hostReportLocationData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(hostReportLocationModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = hostReportLocationModel.getHostReportLocationData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = hostReportLocationModel.getHostReportLocationData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(hostReportLocationModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<InProgressReportListModel> completeRequest(InProgressReportListModel inProgressReportListModel) {
        ServiceResult<InProgressReportListModel> queueResult;
        h.f(inProgressReportListModel, "<this>");
        if (inProgressReportListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!inProgressReportListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        InProgressReportListData inProgressReportListData = inProgressReportListModel.getInProgressReportListData();
        Integer numValueOf = inProgressReportListData != null ? Integer.valueOf(inProgressReportListData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(inProgressReportListModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = inProgressReportListModel.getInProgressReportListData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = inProgressReportListModel.getInProgressReportListData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(inProgressReportListModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<InitializeResponseModel> completeRequest(InitializeResponseModel initializeResponseModel) {
        ServiceResult<InitializeResponseModel> queueResult;
        h.f(initializeResponseModel, "<this>");
        if (initializeResponseModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!initializeResponseModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        InitializeModel initializeData = initializeResponseModel.getInitializeData();
        Integer numValueOf = initializeData != null ? Integer.valueOf(initializeData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(initializeResponseModel);
        } else {
            boolean z10 = false;
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                return new ServerError(new ServiceErrorException());
            }
            if (numValueOf != null && numValueOf.intValue() == 3) {
                return new EmptyResult(new EmptyListException());
            }
            if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                z10 = true;
            }
            if (!z10) {
                return new ServerError(new ServiceErrorException());
            }
            queueResult = new QueueResult<>(initializeResponseModel);
        }
        return queueResult;
    }

    public static final ServiceResult<LocationSaveModel> completeRequest(LocationSaveModel locationSaveModel) {
        ServiceResult<LocationSaveModel> queueResult;
        h.f(locationSaveModel, "<this>");
        if (locationSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!locationSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        LocationSaveData locationSaveData = locationSaveModel.getLocationSaveData();
        Integer numValueOf = locationSaveData != null ? Integer.valueOf(locationSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(locationSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = locationSaveModel.getLocationSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = locationSaveModel.getLocationSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(locationSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<MediaListModel> completeRequest(MediaListModel mediaListModel) {
        ServiceResult<MediaListModel> queueResult;
        h.f(mediaListModel, "<this>");
        if (mediaListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!mediaListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        MediaListData mediaListData = mediaListModel.getMediaListData();
        Integer numValueOf = mediaListData != null ? Integer.valueOf(mediaListData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(mediaListModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = mediaListModel.getMediaListData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = mediaListModel.getMediaListData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(mediaListModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<MergeDetailModel> completeRequest(MergeDetailModel mergeDetailModel) {
        ServiceResult<MergeDetailModel> queueResult;
        h.f(mergeDetailModel, "<this>");
        if (mergeDetailModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!mergeDetailModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        MergeDetailData mergeDetailData = mergeDetailModel.getMergeDetailData();
        Integer numValueOf = mergeDetailData != null ? Integer.valueOf(mergeDetailData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(mergeDetailModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = mergeDetailModel.getMergeDetailData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = mergeDetailModel.getMergeDetailData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(mergeDetailModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<PhotoSaveModel> completeRequest(PhotoSaveModel photoSaveModel) {
        ServiceResult<PhotoSaveModel> queueResult;
        h.f(photoSaveModel, "<this>");
        if (photoSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!photoSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        PhotoSaveData photoSaveData = photoSaveModel.getPhotoSaveData();
        Integer numValueOf = photoSaveData != null ? Integer.valueOf(photoSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(photoSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = photoSaveModel.getPhotoSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = photoSaveModel.getPhotoSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(photoSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<QuestionSetModel> completeRequest(QuestionSetModel questionSetModel) {
        ServiceResult<QuestionSetModel> queueResult;
        h.f(questionSetModel, "<this>");
        if (questionSetModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!questionSetModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        QuestionSetData questionSetData = questionSetModel.getQuestionSetData();
        Integer numValueOf = questionSetData != null ? Integer.valueOf(questionSetData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(questionSetModel);
        } else {
            boolean z10 = false;
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                return new ServerError(new ServiceErrorException());
            }
            if (numValueOf != null && numValueOf.intValue() == 3) {
                return new EmptyResult(new EmptyListException());
            }
            if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                z10 = true;
            }
            if (!z10) {
                return new ServerError(new ServiceErrorException());
            }
            queueResult = new QueueResult<>(questionSetModel);
        }
        return queueResult;
    }

    public static final ServiceResult<ReportDetailModel> completeRequest(ReportDetailModel reportDetailModel) {
        ServiceResult<ReportDetailModel> queueResult;
        h.f(reportDetailModel, "<this>");
        if (reportDetailModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!reportDetailModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ReportDetailData reportDetailData = reportDetailModel.getReportDetailData();
        Integer numValueOf = reportDetailData != null ? Integer.valueOf(reportDetailData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(reportDetailModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = reportDetailModel.getReportDetailData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = reportDetailModel.getReportDetailData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(reportDetailModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<SaveReportModel> completeRequest(SaveReportModel saveReportModel) {
        ServiceResult<SaveReportModel> queueResult;
        h.f(saveReportModel, "<this>");
        if (saveReportModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!saveReportModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        SaveReportData saveReportData = saveReportModel.getSaveReportData();
        Integer numValueOf = saveReportData != null ? Integer.valueOf(saveReportData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(saveReportModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = saveReportModel.getSaveReportData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = saveReportModel.getSaveReportData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(saveReportModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<ScanQRDraftModel> completeRequest(ScanQRDraftModel scanQRDraftModel) {
        ServiceResult<ScanQRDraftModel> queueResult;
        h.f(scanQRDraftModel, "<this>");
        if (scanQRDraftModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!scanQRDraftModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ScanQRDraftData scanQRDraftData = scanQRDraftModel.getScanQRDraftData();
        Integer numValueOf = scanQRDraftData != null ? Integer.valueOf(scanQRDraftData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(scanQRDraftModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = scanQRDraftModel.getScanQRDraftData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = scanQRDraftModel.getScanQRDraftData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(scanQRDraftModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<ScanQRModel> completeRequest(ScanQRModel scanQRModel) {
        ServiceResult<ScanQRModel> queueResult;
        h.f(scanQRModel, "<this>");
        if (scanQRModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!scanQRModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        ScanQRData scanQRData = scanQRModel.getScanQRData();
        Integer numValueOf = scanQRData != null ? Integer.valueOf(scanQRData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(scanQRModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = scanQRModel.getScanQRData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = scanQRModel.getScanQRData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(scanQRModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<TwoFactorModel> completeRequest(TwoFactorModel twoFactorModel) {
        ServiceResult<TwoFactorModel> queueResult;
        h.f(twoFactorModel, "<this>");
        if (twoFactorModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!twoFactorModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        TwoFactorData twoFactorData = twoFactorModel.getTwoFactorData();
        Integer numValueOf = twoFactorData != null ? Integer.valueOf(twoFactorData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(twoFactorModel);
        } else {
            boolean z10 = false;
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                return new ServerError(new ServiceErrorException());
            }
            if (numValueOf != null && numValueOf.intValue() == 3) {
                return new EmptyResult(new EmptyListException());
            }
            if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                z10 = true;
            }
            if (!z10) {
                return new ServerError(new ServiceErrorException());
            }
            queueResult = new QueueResult<>(twoFactorModel);
        }
        return queueResult;
    }

    public static final ServiceResult<VehicleListModel> completeRequest(VehicleListModel vehicleListModel) {
        ServiceResult<VehicleListModel> queueResult;
        h.f(vehicleListModel, "<this>");
        if (vehicleListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!vehicleListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        VehicleListData vehicleListData = vehicleListModel.getVehicleListData();
        Integer numValueOf = vehicleListData != null ? Integer.valueOf(vehicleListData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(vehicleListModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = vehicleListModel.getVehicleListData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = vehicleListModel.getVehicleListData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(vehicleListModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<VehicleSaveModel> completeRequest(VehicleSaveModel vehicleSaveModel) {
        ServiceResult<VehicleSaveModel> queueResult;
        h.f(vehicleSaveModel, "<this>");
        if (vehicleSaveModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!vehicleSaveModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        VehicleSaveData vehicleSaveData = vehicleSaveModel.getVehicleSaveData();
        Integer numValueOf = vehicleSaveData != null ? Integer.valueOf(vehicleSaveData.getResultCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            queueResult = new SuccessResult<>(vehicleSaveModel);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 2)) {
                ResultMessage resultMessage = vehicleSaveModel.getVehicleSaveData().getResultMessage();
                String messageText = resultMessage != null ? resultMessage.getMessageText() : null;
                if (messageText == null || messageText.length() == 0) {
                    return new ServerError(new ServiceErrorException());
                }
                ResultMessage resultMessage2 = vehicleSaveModel.getVehicleSaveData().getResultMessage();
                String messageText2 = resultMessage2 != null ? resultMessage2.getMessageText() : null;
                h.c(messageText2);
                queueResult = new ServerError<>(new ServiceErrorExceptionWithMessage(messageText2));
            } else {
                if (numValueOf != null && numValueOf.intValue() == 3) {
                    return new EmptyResult(new EmptyListException());
                }
                if ((numValueOf != null && numValueOf.intValue() == 4) || (numValueOf != null && numValueOf.intValue() == 5)) {
                    z = true;
                }
                if (!z) {
                    return new ServerError(new ServiceErrorException());
                }
                queueResult = new QueueResult<>(vehicleSaveModel);
            }
        }
        return queueResult;
    }

    public static final ServiceResult<CardVerificationModel> completeRequest(CardVerificationModel cardVerificationModel) {
        h.f(cardVerificationModel, "<this>");
        if (cardVerificationModel.isSuccess() && cardVerificationModel.getVerificationData() != null) {
            CardVerificationData verificationData = cardVerificationModel.getVerificationData();
            if (h.a(verificationData != null ? verificationData.getResultCode() : null, "0")) {
                return new SuccessResult(cardVerificationModel);
            }
            CardVerificationData verificationData2 = cardVerificationModel.getVerificationData();
            String resultMessage = verificationData2 != null ? verificationData2.getResultMessage() : null;
            if (resultMessage == null || resultMessage.length() == 0) {
                return new ServerError(new ServiceErrorException());
            }
            CardVerificationData verificationData3 = cardVerificationModel.getVerificationData();
            String resultMessage2 = verificationData3 != null ? verificationData3.getResultMessage() : null;
            h.c(resultMessage2);
            return new ServerError(new ServiceErrorExceptionWithMessage(resultMessage2));
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<SMSVerificationModel> completeRequest(SMSVerificationModel sMSVerificationModel) {
        h.f(sMSVerificationModel, "<this>");
        if (sMSVerificationModel.isSuccess() && sMSVerificationModel.getSmsCodeVerifyData() != null) {
            SmsCodeServiceResultData smsCodeVerifyData = sMSVerificationModel.getSmsCodeVerifyData();
            if (h.a(smsCodeVerifyData != null ? smsCodeVerifyData.getResultCode() : null, "0")) {
                return new SuccessResult(sMSVerificationModel);
            }
            SmsCodeServiceResultData smsCodeVerifyData2 = sMSVerificationModel.getSmsCodeVerifyData();
            String resultMessage = smsCodeVerifyData2 != null ? smsCodeVerifyData2.getResultMessage() : null;
            if (resultMessage == null || resultMessage.length() == 0) {
                return new ServerError(new ServiceErrorException());
            }
            SmsCodeServiceResultData smsCodeVerifyData3 = sMSVerificationModel.getSmsCodeVerifyData();
            String resultMessage2 = smsCodeVerifyData3 != null ? smsCodeVerifyData3.getResultMessage() : null;
            h.c(resultMessage2);
            return new ServerError(new ServiceErrorExceptionWithMessage(resultMessage2));
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<TokenServiceModel> completeRequest(TokenServiceModel tokenServiceModel) {
        h.f(tokenServiceModel, "<this>");
        if (tokenServiceModel.isSuccess() && tokenServiceModel.getTokenResult() != null) {
            TokenServiceResult tokenResult = tokenServiceModel.getTokenResult();
            if (!h.a(tokenResult != null ? tokenResult.getResultCode() : null, "0")) {
                return new ServerError(new ServiceErrorException());
            }
            TokenServiceResult tokenResult2 = tokenServiceModel.getTokenResult();
            String token = tokenResult2 != null ? tokenResult2.getToken() : null;
            return !(token == null || token.length() == 0) ? new SuccessResult(tokenServiceModel) : new ServerError(new ServiceErrorException());
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<ServerTimeModel> completeRequest(ServerTimeModel serverTimeModel) {
        h.f(serverTimeModel, "<this>");
        if (!h.a(serverTimeModel.getResultCode(), "SUCCESS")) {
            return new ServerError(new ServiceErrorException());
        }
        String time = serverTimeModel.getTime();
        return !(time == null || time.length() == 0) ? new SuccessResult(serverTimeModel) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<TokenUpdateModel> completeRequest(TokenUpdateModel tokenUpdateModel) {
        h.f(tokenUpdateModel, "<this>");
        return h.a(tokenUpdateModel.getResultCode(), "SUCCESS") ? new SuccessResult(tokenUpdateModel) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<ProfileContactModel> completeRequest(ProfileContactModel profileContactModel) {
        h.f(profileContactModel, "<this>");
        if (profileContactModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (profileContactModel.isSuccess() && profileContactModel.getContactData() != null && profileContactModel.getContactData().getUserProfileInfo() != null) {
            return new SuccessResult(profileContactModel);
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<ProfileServiceModel> completeRequest(ProfileServiceModel profileServiceModel) {
        h.f(profileServiceModel, "<this>");
        if (profileServiceModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (profileServiceModel.isSuccess() && profileServiceModel.getUserProfileResult() != null) {
            UserProfileResult userProfileResult = profileServiceModel.getUserProfileResult();
            return (userProfileResult != null ? userProfileResult.getUserProfileInfo() : null) != null ? new SuccessResult(profileServiceModel) : new ServerError(new ServiceErrorException());
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<AboutPageModel> completeRequest(AboutPageModel aboutPageModel) {
        h.f(aboutPageModel, "<this>");
        if (aboutPageModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!aboutPageModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        boolean z10 = true;
        if (aboutPageModel.getAboutPageData().getResultCode() != 0) {
            return (aboutPageModel.getAboutPageData().getResultCode() == 1 || aboutPageModel.getAboutPageData().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : aboutPageModel.getAboutPageData().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException());
        }
        List<AboutPageItemModel> staticPages = aboutPageModel.getAboutPageData().getStaticPages();
        if (staticPages != null && !staticPages.isEmpty()) {
            z10 = false;
        }
        return z10 ? new EmptyResult(new EmptyListException()) : new SuccessResult(aboutPageModel);
    }

    public static final ServiceResult<FavoriteServiceListModel> completeRequest(FavoriteServiceListModel favoriteServiceListModel) {
        Integer resultCode;
        h.f(favoriteServiceListModel, "<this>");
        if (favoriteServiceListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!favoriteServiceListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        Integer resultCode2 = favoriteServiceListModel.getFavoriteServiceList().getResultCode();
        boolean z10 = true;
        if (resultCode2 != null && resultCode2.intValue() == 0) {
            List<FavoriteServiceModel> content = favoriteServiceListModel.getFavoriteServiceList().getContent();
            if (content != null && !content.isEmpty()) {
                z10 = false;
            }
            return z10 ? new EmptyResult(new EmptyListException()) : new SuccessResult(favoriteServiceListModel);
        }
        Integer resultCode3 = favoriteServiceListModel.getFavoriteServiceList().getResultCode();
        if ((resultCode3 != null && resultCode3.intValue() == 1) || ((resultCode = favoriteServiceListModel.getFavoriteServiceList().getResultCode()) != null && resultCode.intValue() == 2)) {
            return new ServerError(new ServiceErrorException());
        }
        Integer resultCode4 = favoriteServiceListModel.getFavoriteServiceList().getResultCode();
        return (resultCode4 != null && resultCode4.intValue() == 3) ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<SearchServiceList> completeRequest(SearchServiceList searchServiceList) {
        h.f(searchServiceList, "<this>");
        if (searchServiceList.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!searchServiceList.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        List<SearchServiceContent> content = searchServiceList.getSearchServiceData().getContent();
        return content == null || content.isEmpty() ? new EmptyResult(new EmptyListException()) : new SuccessResult(searchServiceList);
    }

    public static final ServiceResult<ServiceDetailModel> completeRequest(ServiceDetailModel serviceDetailModel) {
        h.f(serviceDetailModel, "<this>");
        return serviceDetailModel.getLogin() == 0 ? new LoginFail(new LoginException()) : serviceDetailModel.isSuccess() ? serviceDetailModel.getServiceList().getResultCode() == 0 ? new SuccessResult(serviceDetailModel) : (serviceDetailModel.getServiceList().getResultCode() == 1 || serviceDetailModel.getServiceList().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : serviceDetailModel.getServiceList().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException()) : new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<ServiceListModel> completeRequest(ServiceListModel serviceListModel) {
        h.f(serviceListModel, "<this>");
        if (serviceListModel.getLogin() == 0) {
            return new LoginFail(new LoginException());
        }
        if (!serviceListModel.isSuccess()) {
            return new ServerError(new ServiceErrorException());
        }
        boolean z10 = true;
        if (serviceListModel.getServiceList().getResultCode() != 0) {
            return (serviceListModel.getServiceList().getResultCode() == 1 || serviceListModel.getServiceList().getResultCode() == 2) ? new ServerError(new ServiceErrorException()) : serviceListModel.getServiceList().getResultCode() == 3 ? new EmptyResult(new EmptyListException()) : new ServerError(new ServiceErrorException());
        }
        List<ServiceModel> content = serviceListModel.getServiceList().getContent();
        if (content != null && !content.isEmpty()) {
            z10 = false;
        }
        return z10 ? new EmptyResult(new EmptyListException()) : new SuccessResult(serviceListModel);
    }

    public static final ServiceResult<BarcodeVerifyFieldListModel> completeRequestOnLogin(BarcodeVerifyFieldListModel barcodeVerifyFieldListModel) {
        h.f(barcodeVerifyFieldListModel, "<this>");
        if (barcodeVerifyFieldListModel.isSuccess() && barcodeVerifyFieldListModel.getBarcodeVerifyFieldData() != null && (!barcodeVerifyFieldListModel.getBarcodeVerifyFieldData().getFields().isEmpty())) {
            return new SuccessResult(barcodeVerifyFieldListModel);
        }
        return new ServerError(new ServiceErrorException());
    }

    public static final ServiceResult<BarcodeVerifyModel> completeVerification(BarcodeVerifyModel barcodeVerifyModel) {
        h.f(barcodeVerifyModel, "<this>");
        if (barcodeVerifyModel.isSuccess() && barcodeVerifyModel.getBarcodeData() != null) {
            String documentContent = barcodeVerifyModel.getBarcodeData().getDocumentContent();
            return !(documentContent == null || documentContent.length() == 0) ? new SuccessResult(barcodeVerifyModel) : new ServerError(new ServiceErrorException());
        }
        return new ServerError(new ServiceErrorException());
    }
}
