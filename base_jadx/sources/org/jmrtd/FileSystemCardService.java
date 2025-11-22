package org.jmrtd;

import net.sf.scuba.smartcards.CardFileInputStream;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public abstract class FileSystemCardService extends CardService {
    @Deprecated
    public abstract CardFileInputStream getInputStream(short s7) throws CardServiceException;

    public abstract CardFileInputStream getInputStream(short s7, int r22) throws CardServiceException;
}
