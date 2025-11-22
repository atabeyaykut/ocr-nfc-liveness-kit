.class public final Ls5/b$a;
.super Ln5/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln5/f$b<",
        "Ln5/k;",
        "Lu5/b0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Ln5/k;

    invoke-direct {p0, v0}, Ln5/f$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lu5/b0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu5/b0;->y()Lu5/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lu5/d0;->u()Lu5/a0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lu5/b0;->x()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->A()[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 20
    .line 21
    const-string v3, "HMAC"

    .line 22
    .line 23
    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lu5/b0;->y()Lu5/d0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lu5/d0;->v()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    new-instance v0, Lw5/u;

    .line 48
    .line 49
    new-instance v1, Lw5/t;

    .line 50
    .line 51
    const-string v3, "HMACSHA512"

    .line 52
    .line 53
    invoke-direct {v1, v3, v2}, Lw5/t;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1, p1}, Lw5/u;-><init>(Lt5/a;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 61
    .line 62
    const-string v0, "unknown hash"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    new-instance v0, Lw5/u;

    .line 69
    .line 70
    new-instance v1, Lw5/t;

    .line 71
    .line 72
    const-string v3, "HMACSHA256"

    .line 73
    .line 74
    invoke-direct {v1, v3, v2}, Lw5/t;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1, p1}, Lw5/u;-><init>(Lt5/a;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Lw5/u;

    .line 82
    .line 83
    new-instance v1, Lw5/t;

    .line 84
    .line 85
    const-string v3, "HMACSHA1"

    .line 86
    .line 87
    invoke-direct {v1, v3, v2}, Lw5/t;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1, p1}, Lw5/u;-><init>(Lt5/a;I)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-object v0
.end method
