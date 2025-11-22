package mb;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import mb.a;
import mb.p;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public abstract class b<MessageType extends p> implements r<MessageType> {
    static {
        int r02 = f.f10273b;
    }

    public static void b(p pVar) throws j {
        c0.a aVar;
        if (pVar == null || pVar.b()) {
            return;
        }
        if (pVar instanceof a) {
            aVar = new c0.a();
        } else {
            aVar = new c0.a();
        }
        j jVar = new j(aVar.getMessage());
        jVar.f10298a = pVar;
        throw jVar;
    }

    public final p c(ByteArrayInputStream byteArrayInputStream, f fVar) throws IOException {
        MessageType messagetype;
        try {
            int r02 = byteArrayInputStream.read();
            if (r02 == -1) {
                messagetype = null;
            } else {
                if ((r02 & 128) != 0) {
                    r02 &= CertificateBody.profileType;
                    int r22 = 7;
                    while (true) {
                        if (r22 >= 32) {
                            while (r22 < 64) {
                                int r32 = byteArrayInputStream.read();
                                if (r32 == -1) {
                                    throw j.b();
                                }
                                if ((r32 & 128) != 0) {
                                    r22 += 7;
                                }
                            }
                            throw new j("CodedInputStream encountered a malformed varint.");
                        }
                        int r33 = byteArrayInputStream.read();
                        if (r33 == -1) {
                            throw j.b();
                        }
                        r02 |= (r33 & CertificateBody.profileType) << r22;
                        if ((r33 & 128) == 0) {
                            break;
                        }
                        r22 += 7;
                    }
                }
                d dVar = new d(new a.AbstractC0188a.C0189a(byteArrayInputStream, r02));
                MessageType messagetypeA = a(dVar, fVar);
                try {
                    dVar.a(0);
                    messagetype = messagetypeA;
                } catch (j e10) {
                    e10.f10298a = messagetypeA;
                    throw e10;
                }
            }
            b(messagetype);
            return messagetype;
        } catch (IOException e11) {
            throw new j(e11.getMessage());
        }
    }
}
