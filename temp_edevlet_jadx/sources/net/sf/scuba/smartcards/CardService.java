package net.sf.scuba.smartcards;

import androidx.browser.browseractions.a;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class CardService {
    private static final Logger LOGGER = Logger.getLogger("net.sf.scuba");
    protected static final int SESSION_STARTED_STATE = 1;
    protected static final int SESSION_STOPPED_STATE = 0;
    private static final Map<String, String> objectToServiceMap;
    private Collection<APDUListener> apduListeners = new HashSet();
    protected int state = 0;

    static {
        HashMap map = new HashMap();
        objectToServiceMap = map;
        map.put("javax.smartcardio.CardTerminal", "net.sf.scuba.smartcards.TerminalCardService");
        map.put("sun.security.smartcardio.TerminalImpl", "net.sf.scuba.smartcards.TerminalCardService");
        map.put("android.nfc.tech.IsoDep", "net.sf.scuba.smartcards.IsoDepCardService");
    }

    public static CardService getInstance(Object obj) throws ClassNotFoundException {
        Class<?> cls;
        String value;
        if (obj == null) {
            throw new IllegalArgumentException();
        }
        String canonicalName = obj.getClass().getCanonicalName();
        for (Map.Entry<String, String> entry : objectToServiceMap.entrySet()) {
            try {
                cls = Class.forName(entry.getKey());
                value = entry.getValue();
            } catch (ClassNotFoundException e10) {
                LOGGER.log(Level.FINEST, "Could not find class, trying next one", (Throwable) e10);
            }
            if (cls.isInstance(obj)) {
                try {
                    return (CardService) Class.forName(value).getConstructor(cls).newInstance(obj);
                } catch (Exception e11) {
                    throw new IllegalArgumentException(e11);
                }
            }
            continue;
        }
        throw new IllegalArgumentException(a.a("Could not find a CardService for object of class \"", canonicalName, "\""));
    }

    public void addAPDUListener(APDUListener aPDUListener) {
        Collection<APDUListener> collection = this.apduListeners;
        if (collection == null || aPDUListener == null) {
            return;
        }
        collection.add(aPDUListener);
    }

    public abstract void close();

    public Collection<APDUListener> getAPDUListeners() {
        return Collections.unmodifiableCollection(this.apduListeners);
    }

    public abstract byte[] getATR() throws CardServiceException;

    public abstract boolean isConnectionLost(Exception exc);

    public boolean isExtendedAPDULengthSupported() {
        return false;
    }

    public abstract boolean isOpen();

    public void notifyExchangedAPDU(APDUEvent aPDUEvent) {
        Collection<APDUListener> collection = this.apduListeners;
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Iterator<APDUListener> it = this.apduListeners.iterator();
        while (it.hasNext()) {
            it.next().exchangedAPDU(aPDUEvent);
        }
    }

    public abstract void open() throws CardServiceException;

    public void removeAPDUListener(APDUListener aPDUListener) {
        Collection<APDUListener> collection = this.apduListeners;
        if (collection != null) {
            collection.remove(aPDUListener);
        }
    }

    public abstract ResponseAPDU transmit(CommandAPDU commandAPDU) throws CardServiceException;
}
