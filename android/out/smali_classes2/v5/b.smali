.class public final Lv5/b;
.super Ln5/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f<",
        "Lu5/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/f$b;

    new-instance v1, Lv5/b$a;

    invoke-direct {v1}, Lv5/b$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lu5/o;

    invoke-direct {p0, v1, v0}, Ln5/f;-><init>(Ljava/lang/Class;[Ln5/f$b;)V

    return-void
.end method

.method public static g(Lu5/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lu5/q;->y()I

    move-result v0

    invoke-static {v0}, Lw5/a0;->a(I)V

    invoke-virtual {p0}, Lu5/q;->z()Lu5/a0;

    move-result-object v0

    sget-object v1, Lu5/a0;->b:Lu5/a0;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lu5/q;->w()I

    move-result v0

    invoke-virtual {p0}, Lu5/q;->y()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, 0x2

    if-lt v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext_segment_size must be at least (derived_key_size + NONCE_PREFIX_IN_BYTES + TAG_SIZE_IN_BYTES + 2)"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown HKDF hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey"

    return-object v0
.end method

.method public final c()Ln5/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln5/f$a<",
            "Lu5/p;",
            "Lu5/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv5/b$b;

    invoke-direct {v0, p0}, Lv5/b$b;-><init>(Lv5/b;)V

    return-object v0
.end method

.method public final d()Lu5/e0$b;
    .locals 1

    sget-object v0, Lu5/e0$b;->c:Lu5/e0$b;

    return-object v0
.end method

.method public final e(Lcom/google/crypto/tink/shaded/protobuf/i;)Lcom/google/crypto/tink/shaded/protobuf/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lu5/o;->A(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/o;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/o;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/o;->y()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lw5/a0;->c(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/o;->x()Lu5/q;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lv5/b;->g(Lu5/q;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
