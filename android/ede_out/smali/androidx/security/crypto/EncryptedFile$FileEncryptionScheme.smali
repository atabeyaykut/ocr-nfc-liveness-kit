.class public final enum Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileEncryptionScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

.field public static final enum AES256_GCM_HKDF_4KB:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;


# instance fields
.field private final mStreamingAeadKeyTemplate:Ln5/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 2
    .line 3
    invoke-static {}, Lu5/q;->A()Lu5/q$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 11
    .line 12
    check-cast v2, Lu5/q;

    .line 13
    .line 14
    invoke-static {v2}, Lu5/q;->t(Lu5/q;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 21
    .line 22
    check-cast v2, Lu5/q;

    .line 23
    .line 24
    invoke-static {v2}, Lu5/q;->u(Lu5/q;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 31
    .line 32
    check-cast v2, Lu5/q;

    .line 33
    .line 34
    invoke-static {v2}, Lu5/q;->v(Lu5/q;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lu5/q;

    .line 42
    .line 43
    invoke-static {}, Lu5/p;->x()Lu5/p$a;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 48
    .line 49
    .line 50
    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 51
    .line 52
    check-cast v3, Lu5/p;

    .line 53
    .line 54
    invoke-static {v3}, Lu5/p;->u(Lu5/p;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 61
    .line 62
    check-cast v3, Lu5/p;

    .line 63
    .line 64
    invoke-static {v3, v1}, Lu5/p;->t(Lu5/p;Lu5/q;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lu5/p;

    .line 72
    .line 73
    new-instance v2, Lv5/b;

    .line 74
    .line 75
    invoke-direct {v2}, Lv5/b;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->toByteArray()[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x3

    .line 83
    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey"

    .line 84
    .line 85
    invoke-static {v3, v1, v2}, Ln5/e;->a(Ljava/lang/String;[BI)Ln5/e;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "AES256_GCM_HKDF_4KB"

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-direct {v0, v2, v3, v1}, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;-><init>(Ljava/lang/String;ILn5/e;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->AES256_GCM_HKDF_4KB:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    new-array v1, v1, [Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 99
    .line 100
    aput-object v0, v1, v3

    .line 101
    .line 102
    sput-object v1, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 103
    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILn5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->mStreamingAeadKeyTemplate:Ln5/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
    .locals 1

    const-class v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    return-object p0
.end method

.method public static values()[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;
    .locals 1

    sget-object v0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->$VALUES:[Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    invoke-virtual {v0}, [Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    return-object v0
.end method


# virtual methods
.method public getKeyTemplate()Ln5/e;
    .locals 1

    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->mStreamingAeadKeyTemplate:Ln5/e;

    return-object v0
.end method
