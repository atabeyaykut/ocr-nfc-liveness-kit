.class public final Lo5/c;
.super Ln5/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f<",
        "Lu5/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/f$b;

    new-instance v1, Lo5/c$a;

    invoke-direct {v1}, Lo5/c$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lu5/d;

    invoke-direct {p0, v1, v0}, Ln5/f;-><init>(Ljava/lang/Class;[Ln5/f$b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method

.method public final c()Ln5/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln5/f$a<",
            "Lu5/e;",
            "Lu5/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo5/c$b;

    invoke-direct {v0, p0}, Lo5/c$b;-><init>(Lo5/c;)V

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

    invoke-static {p1, v0}, Lu5/d;->A(Lcom/google/crypto/tink/shaded/protobuf/i;Lcom/google/crypto/tink/shaded/protobuf/p;)Lu5/d;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/crypto/tink/shaded/protobuf/q0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/d;->y()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lw5/a0;->c(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lo5/d;

    .line 11
    .line 12
    invoke-direct {v0}, Lo5/d;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lu5/d;->w()Lu5/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lu5/i;->z()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Lw5/a0;->c(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lu5/i;->x()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Lw5/a0;->a(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lu5/i;->y()Lu5/k;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lu5/k;->u()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v2, 0xc

    .line 46
    .line 47
    if-lt v1, v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lu5/k;->u()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x10

    .line 54
    .line 55
    if-gt v0, v1, :cond_0

    .line 56
    .line 57
    new-instance v0, Ls5/b;

    .line 58
    .line 59
    invoke-direct {v0}, Ls5/b;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lu5/d;->x()Lu5/b0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Ls5/b;->g(Lu5/b0;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 71
    .line 72
    const-string v0, "invalid IV size"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
