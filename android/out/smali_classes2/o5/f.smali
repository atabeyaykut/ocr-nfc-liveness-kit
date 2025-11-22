.class public final Lo5/f;
.super Ln5/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f<",
        "Lu5/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/f$b;

    new-instance v1, Lo5/f$a;

    invoke-direct {v1}, Lo5/f$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lu5/r;

    invoke-direct {p0, v1, v0}, Ln5/f;-><init>(Ljava/lang/Class;[Ln5/f$b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method

.method public final c()Ln5/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln5/f$a<",
            "Lu5/s;",
            "Lu5/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo5/f$b;

    invoke-direct {v0, p0}, Lo5/f$b;-><init>(Lo5/f;)V

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

    invoke-static {p1, v0}, Lu5/r;->y(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/r;

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
    check-cast p1, Lu5/r;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/r;->w()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lw5/a0;->c(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/r;->v()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Lw5/a0;->a(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
