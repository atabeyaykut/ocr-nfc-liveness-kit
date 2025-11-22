.class public final Lu5/z;
.super Lcom/google/crypto/tink/shaded/protobuf/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu5/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/x<",
        "Lu5/z;",
        "Lu5/z$a;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/r0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lu5/z;

.field public static final ENCRYPTED_KEYSET_FIELD_NUMBER:I = 0x2

.field public static final KEYSET_INFO_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/y0<",
            "Lu5/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encryptedKeyset_:Lcom/google/crypto/tink/shaded/protobuf/i;

.field private keysetInfo_:Lu5/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu5/z;

    invoke-direct {v0}, Lu5/z;-><init>()V

    sput-object v0, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    const-class v1, Lu5/z;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->r(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>()V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    iput-object v0, p0, Lu5/z;->encryptedKeyset_:Lcom/google/crypto/tink/shaded/protobuf/i;

    return-void
.end method

.method public static synthetic s()Lu5/z;
    .locals 1

    sget-object v0, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    return-object v0
.end method

.method public static t(Lu5/z;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu5/z;->encryptedKeyset_:Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 5
    .line 6
    return-void
.end method

.method public static u(Lu5/z;Lu5/j0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu5/z;->keysetInfo_:Lu5/j0;

    .line 5
    .line 6
    return-void
.end method

.method public static w()Lu5/z$a;
    .locals 1

    sget-object v0, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->k()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    move-result-object v0

    check-cast v0, Lu5/z$a;

    return-object v0
.end method

.method public static x([BLcom/google/crypto/tink/shaded/protobuf/p;)Lu5/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/a0;
        }
    .end annotation

    sget-object v0, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->p(Lcom/google/crypto/tink/shaded/protobuf/x;[BLcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    move-result-object p0

    check-cast p0, Lu5/z;

    return-object p0
.end method


# virtual methods
.method public final l(Lcom/google/crypto/tink/shaded/protobuf/x$f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lu5/z;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class v0, Lu5/z;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-object p1, Lu5/z;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/x$b;

    .line 27
    .line 28
    sget-object v1, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/x$b;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lu5/z;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/y0;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_2
    return-object p1

    .line 43
    :pswitch_1
    sget-object p1, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lu5/z$a;

    .line 47
    .line 48
    invoke-direct {p1}, Lu5/z$a;-><init>()V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lu5/z;

    .line 53
    .line 54
    invoke-direct {p1}, Lu5/z;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/4 p1, 0x2

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    const-string v2, "encryptedKeyset_"

    .line 63
    .line 64
    aput-object v2, p1, v1

    .line 65
    .line 66
    const-string v1, "keysetInfo_"

    .line 67
    .line 68
    aput-object v1, p1, v0

    .line 69
    .line 70
    const-string v0, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003\t"

    .line 71
    .line 72
    sget-object v1, Lu5/z;->DEFAULT_INSTANCE:Lu5/z;

    .line 73
    .line 74
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/c1;

    .line 75
    .line 76
    invoke-direct {v2, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/c1;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v2

    .line 80
    :pswitch_5
    const/4 p1, 0x0

    .line 81
    return-object p1

    .line 82
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v()Lcom/google/crypto/tink/shaded/protobuf/i;
    .locals 1

    iget-object v0, p0, Lu5/z;->encryptedKeyset_:Lcom/google/crypto/tink/shaded/protobuf/i;

    return-object v0
.end method
