package org.jmrtd.lds;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DLSet;

/* loaded from: classes2.dex */
public class CardAccessFile implements Serializable {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.lds");
    private static final long serialVersionUID = -3536507558193769951L;
    private Set<SecurityInfo> securityInfos;

    public CardAccessFile(InputStream inputStream) throws IOException {
        readContent(inputStream);
    }

    public CardAccessFile(Collection<SecurityInfo> collection) {
        if (collection == null) {
            throw new IllegalArgumentException("Null securityInfos");
        }
        this.securityInfos = new HashSet(collection);
    }

    public boolean equals(Object obj) {
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Set<SecurityInfo> set = this.securityInfos;
        Set<SecurityInfo> set2 = ((CardAccessFile) obj).securityInfos;
        return set == null ? set2 == null : set2 == null ? set == null : set.equals(set2);
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                writeContent(byteArrayOutputStream);
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e10) {
                LOGGER.log(Level.WARNING, "Exception while encoding", (Throwable) e10);
                try {
                    byteArrayOutputStream.close();
                    return null;
                } catch (IOException e11) {
                    LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e11);
                    return null;
                }
            }
        } finally {
            try {
                byteArrayOutputStream.close();
            } catch (IOException e12) {
                LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e12);
            }
        }
    }

    public Collection<SecurityInfo> getSecurityInfos() {
        return Collections.unmodifiableCollection(this.securityInfos);
    }

    public int hashCode() {
        return (this.securityInfos.hashCode() * 7) + 61;
    }

    public void readContent(InputStream inputStream) throws IOException {
        this.securityInfos = new HashSet();
        ASN1Set aSN1Set = (ASN1Set) new ASN1InputStream(inputStream).readObject();
        for (int r02 = 0; r02 < aSN1Set.size(); r02++) {
            try {
                SecurityInfo securityInfo = SecurityInfo.getInstance(aSN1Set.getObjectAt(r02).toASN1Primitive());
                if (securityInfo != null) {
                    this.securityInfos.add(securityInfo);
                }
            } catch (Exception unused) {
            }
        }
    }

    public String toString() {
        return "CardAccessFile [" + this.securityInfos.toString() + "]";
    }

    public void writeContent(OutputStream outputStream) throws IOException {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Iterator<SecurityInfo> it = this.securityInfos.iterator();
        while (it.hasNext()) {
            aSN1EncodableVector.add(it.next().getDERObject());
        }
        outputStream.write(new DLSet(aSN1EncodableVector).getEncoded(ASN1Encoding.DER));
    }
}
