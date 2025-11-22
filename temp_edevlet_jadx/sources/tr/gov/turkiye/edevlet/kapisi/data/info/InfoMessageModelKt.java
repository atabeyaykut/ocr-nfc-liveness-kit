package tr.gov.turkiye.edevlet.kapisi.data.info;

import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"checkMessageType", "", "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InfoMessageModelKt {
    public static final boolean checkMessageType(InfoMessageData infoMessageData) {
        h.f(infoMessageData, "<this>");
        switch (infoMessageData.getPopupType()) {
            case 1:
                String message = infoMessageData.getMessage();
                if (!(message == null || message.length() == 0)) {
                    String title = infoMessageData.getTitle();
                    if (!(title == null || title.length() == 0)) {
                        return true;
                    }
                }
                return false;
            case 2:
                String message2 = infoMessageData.getMessage();
                if (!(message2 == null || message2.length() == 0)) {
                    String title2 = infoMessageData.getTitle();
                    if (!(title2 == null || title2.length() == 0)) {
                        return true;
                    }
                }
                return false;
            case 3:
                String message3 = infoMessageData.getMessage();
                if (!(message3 == null || message3.length() == 0)) {
                    String title3 = infoMessageData.getTitle();
                    if (!(title3 == null || title3.length() == 0)) {
                        return true;
                    }
                }
                return false;
            case 4:
                String message4 = infoMessageData.getMessage();
                if (!(message4 == null || message4.length() == 0)) {
                    String title4 = infoMessageData.getTitle();
                    if (!(title4 == null || title4.length() == 0)) {
                        String folder = infoMessageData.getFolder();
                        if (!(folder == null || folder.length() == 0)) {
                            String folderTitle = infoMessageData.getFolderTitle();
                            if (!(folderTitle == null || folderTitle.length() == 0)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            case 5:
                String message5 = infoMessageData.getMessage();
                if (!(message5 == null || message5.length() == 0)) {
                    String title5 = infoMessageData.getTitle();
                    if (!(title5 == null || title5.length() == 0)) {
                        return true;
                    }
                }
                return false;
            case 6:
                String message6 = infoMessageData.getMessage();
                if (!(message6 == null || message6.length() == 0)) {
                    String title6 = infoMessageData.getTitle();
                    if (!(title6 == null || title6.length() == 0) && infoMessageData.getServiceCode() != null) {
                        return true;
                    }
                }
                return false;
            case 7:
                String message7 = infoMessageData.getMessage();
                if (!(message7 == null || message7.length() == 0)) {
                    String title7 = infoMessageData.getTitle();
                    if (!(title7 == null || title7.length() == 0)) {
                        String url = infoMessageData.getUrl();
                        if (!(url == null || url.length() == 0)) {
                            return true;
                        }
                    }
                }
                return false;
            default:
                return false;
        }
    }
}
