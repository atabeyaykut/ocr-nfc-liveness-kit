.class public final Lo5/d;
.super Ln5/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f<",
        "Lu5/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/f$b;

    new-instance v1, Lo5/d$a;

    invoke-direct {v1}, Lo5/d$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lu5/i;

    invoke-direct {p0, v1, v0}, Ln5/f;-><init>(Ljava/lang/Class;[Ln5/f$b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public final c()Ln5/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln5/f$a<",
            "Lu5/j;",
            "Lu5/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo5/d$b;

    invoke-direct {v0, p0}, Lo5/d$b;-><init>(Lo5/d;)V

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

    invoke-static {p1, v0}, Lu5/i;->B(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/i;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/i;->z()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lw5/a0;->c(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lu5/i;->x()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Lw5/a0;->a(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lu5/i;->y()Lu5/k;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lu5/k;->u()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xc

    .line 30
    .line 31
    if-lt v0, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lu5/k;->u()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    if-gt p1, v0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 43
    .line 44
    const-string v0, "invalid IV size"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
